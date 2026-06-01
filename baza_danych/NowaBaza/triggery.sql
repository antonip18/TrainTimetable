-- =============================================================================
-- TRIGGERY BAZY DANYCH – System Rozkładu Jazdy Pociągów (TrainTimetable)
-- =============================================================================
--
-- CO TO JEST TRIGGER?
--   Trigger (wyzwalacz) to procedura w bazie danych, która uruchamia się
--   AUTOMATYCZNIE przed lub po operacji INSERT / UPDATE / DELETE.
--
-- PO CO SĄ TRIGGERY W NASZYM PROjekCIE?
--   1. Automatyczne nadawanie ID nowym trasom, pociągom i wagonom
--      (aplikacja Flask nie musi ręcznie liczyć kolejnych numerów)
--   2. Walidacja postojów – sensowne godziny przyjazdu/odjazdu
--   3. Ochrona harmonogramu – trasa jest ALBO cykliczna ALBO jednorazowa
--   4. Blokada dodawania przejazdów w przeszłości
--
-- JAK URUCHOMIĆ (po create.sql i inserts.sql):
--   psql -U pociag -d kolei_db -f baza_danych/triggery.sql
--
-- =============================================================================


-- =============================================================================
-- CZĘŚĆ 1: SEKWENCJE (generatory kolejnych numerów ID)
-- =============================================================================
-- Sekwencja działa jak licznik: za każdym razem zwraca następny numer.
-- Używamy jej w triggerach, żeby nowe rekordy dostały unikalne ID.

CREATE SEQUENCE IF NOT EXISTS seq_trasy;
CREATE SEQUENCE IF NOT EXISTS seq_pociagi;
CREATE SEQUENCE IF NOT EXISTS seq_wagony;

-- Ustawiamy sekwencje na aktualne maksima w bazie (żeby nie było konfliktu ID).
-- Przykład: jeśli max(id_trasy)=3281, następna trasa dostanie 3282.
--
-- UWAGA: setval(0) powoduje BŁĄD – sekwencja w PostgreSQL startuje od 1.
-- Gdy tabela jest pusta (np. zaraz po create.sql), pomijamy setval;
-- wtedy pierwsze nextval() i tak zwróci 1.
SELECT setval('seq_trasy', (SELECT MAX(id_trasy) FROM trasy))
WHERE EXISTS (SELECT 1 FROM trasy LIMIT 1);

SELECT setval('seq_pociagi', (SELECT MAX(id_pociagu) FROM pociagi))
WHERE EXISTS (SELECT 1 FROM pociagi LIMIT 1);

SELECT setval('seq_wagony', (SELECT MAX(id_wagonu) FROM wagony))
WHERE EXISTS (SELECT 1 FROM wagony LIMIT 1);


-- =============================================================================
-- CZĘŚĆ 2: TRIGGERY AUTO-ID
-- =============================================================================
-- Te funkcje uruchamiają się PRZED INSERT (BEFORE INSERT).
-- Jeśli aplikacja nie poda ID (NULL), trigger wpisze kolejny numer z sekwencji.

-- --- Trasy ---
CREATE OR REPLACE FUNCTION fn_nadaj_id_trasy()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_trasy IS NULL THEN
        NEW.id_trasy := nextval('seq_trasy');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION fn_nadaj_id_trasy() IS
    'Nadaje automatyczne id_trasy z sekwencji seq_trasy, gdy aplikacja nie poda ID.';

CREATE TRIGGER trg_nadaj_id_trasy
    BEFORE INSERT ON trasy
    FOR EACH ROW
    EXECUTE PROCEDURE fn_nadaj_id_trasy();


-- --- Pociągi ---
CREATE OR REPLACE FUNCTION fn_nadaj_id_pociagu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_pociagu IS NULL THEN
        NEW.id_pociagu := nextval('seq_pociagi');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION fn_nadaj_id_pociagu() IS
    'Nadaje automatyczne id_pociagu z sekwencji seq_pociagi.';

CREATE TRIGGER trg_nadaj_id_pociagu
    BEFORE INSERT ON pociagi
    FOR EACH ROW
    EXECUTE PROCEDURE fn_nadaj_id_pociagu();


-- --- Wagony ---
CREATE OR REPLACE FUNCTION fn_nadaj_id_wagonu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_wagonu IS NULL THEN
        NEW.id_wagonu := nextval('seq_wagony');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION fn_nadaj_id_wagonu() IS
    'Nadaje automatyczne id_wagonu z sekwencji seq_wagony.';

CREATE TRIGGER trg_nadaj_id_wagonu
    BEFORE INSERT ON wagony
    FOR EACH ROW
    EXECUTE PROCEDURE fn_nadaj_id_wagonu();


-- =============================================================================
-- CZĘŚĆ 3: WALIDACJA POSTOJÓW (najważniejsza logika biznesowa)
-- =============================================================================
-- Postój = jedna stacja na trasie pociągu z godzinami i peronem.
-- Trigger sprawdza reguły PRZED zapisem do tabeli postoje.

CREATE OR REPLACE FUNCTION fn_waliduj_postoj()
RETURNS TRIGGER AS $$
DECLARE
    poprzedni RECORD;
    czas_poprzedni_odjazd INTEGER;
    czas_przyjazd INTEGER;
    
    kategoria VARCHAR(10);
    predkosc NUMERIC;
    prev_lat DOUBLE PRECISION;
    prev_lon DOUBLE PRECISION;
    curr_lat DOUBLE PRECISION;
    curr_lon DOUBLE PRECISION;
    cos_amplitudy DOUBLE PRECISION;
    dystans DOUBLE PRECISION;
    czas_teoretyczny DOUBLE PRECISION;
    czas_rzeczywisty INTEGER;
    min_czas DOUBLE PRECISION;
    max_czas DOUBLE PRECISION;
BEGIN
    IF NEW.numer_postoju = 1 AND NEW.godzina_przyjazdu IS NOT NULL THEN
        RAISE EXCEPTION
            'Postój nr 1 to stacja początkowa – nie może mieć godziny przyjazdu.';
    END IF;

    IF NEW.numer_postoju > 1 THEN
        SELECT * INTO poprzedni
        FROM postoje
        WHERE id_trasy = NEW.id_trasy
          AND numer_postoju = NEW.numer_postoju - 1;

        IF NOT FOUND THEN
            RAISE EXCEPTION
                'Brakuje postoju nr % na trasie %. Numery muszą iść po kolei.',
                NEW.numer_postoju - 1, NEW.id_trasy;
            END IF;

        IF poprzedni.godzina_odjazdu IS NOT NULL AND NEW.godzina_przyjazdu IS NOT NULL THEN
            czas_poprzedni_odjazd :=
                poprzedni.dzien_odjazdu_offset * 1440
                + EXTRACT(HOUR FROM poprzedni.godzina_odjazdu)::INTEGER * 60
                + EXTRACT(MINUTE FROM poprzedni.godzina_odjazdu)::INTEGER;

            czas_przyjazd :=
                NEW.dzien_przyjazdu_offset * 1440
                + EXTRACT(HOUR FROM NEW.godzina_przyjazdu)::INTEGER * 60
                + EXTRACT(MINUTE FROM NEW.godzina_przyjazdu)::INTEGER;

            IF czas_przyjazd < czas_poprzedni_odjazd THEN
                RAISE EXCEPTION
                    'Postój nr % ma przyjazd wcześniejszy niż odjazd z postoju nr %.',
                    NEW.numer_postoju, NEW.numer_postoju - 1;
            END IF;
            
            SELECT p.kategoria INTO kategoria
            FROM TRASY t
            JOIN POCIAGI p ON t.id_pociagu = p.id_pociagu
            WHERE t.id_trasy = NEW.id_trasy;

            predkosc := CASE kategoria
                WHEN 'EIP'        THEN 140.0
                WHEN 'EIC'        THEN 110.0
                WHEN 'EC'         THEN 110.0
                WHEN 'EC/EIC'     THEN 110.0
                WHEN 'IC'         THEN 95.0
                WHEN 'ICN'        THEN 95.0
                WHEN 'IC/MP'      THEN 95.0
                WHEN 'EC/IC/ICN'  THEN 95.0
                WHEN 'IC+'        THEN 95.0
                WHEN 'EC/IC'      THEN 95.0
                WHEN 'TLK'        THEN 75.0
                WHEN 'EN'         THEN 75.0
                WHEN 'EN/IC'      THEN 75.0
                ELSE 80.0
            END;

            SELECT s.szerokosc_geograficzna, s.dlugosc_geograficzna 
            INTO prev_lat, prev_lon
            FROM INFRASTRUKTURA_STACJI i
            JOIN STACJE s ON i.id_stacji = s.id_stacji
            WHERE i.id = poprzedni.id_peronu_toru;

            SELECT s.szerokosc_geograficzna, s.dlugosc_geograficzna 
            INTO curr_lat, curr_lon
            FROM INFRASTRUKTURA_STACJI i
            JOIN STACJE s ON i.id_stacji = s.id_stacji
            WHERE i.id = NEW.id_peronu_toru;

            cos_amplitudy := sin(radians(prev_lat)) * sin(radians(curr_lat)) + 
                               cos(radians(prev_lat)) * cos(radians(curr_lat)) * cos(radians(curr_lon - prev_lon));
            
            IF cos_amplitudy > 1.0 THEN cos_amplitudy := 1.0; END IF;
            IF cos_amplitudy < -1.0 THEN cos_amplitudy := -1.0; END IF;
            
            dystans := acos(cos_amplitudy) * 6371.0;

            czas_teoretyczny := (dystans / predkosc) * 60.0;
            czas_rzeczywisty := czas_przyjazd - czas_poprzedni_odjazd;

            min_czas := GREATEST(1.0, 0.4 * czas_teoretyczny);
            
            max_czas := GREATEST(czas_teoretyczny + 90.0, 8.5 * czas_teoretyczny);

            IF czas_rzeczywisty < min_czas OR czas_rzeczywisty > max_czas THEN
                RAISE EXCEPTION 
                    'Pociąg kategorii % na odcinku między postojem % a % nie powinien jechać % min! Dystans: % km. Dopuszczalny czas przejazdu na tej trasie wynosi od % do % min (czas optymalny: % min).',
                    kategoria, NEW.numer_postoju - 1, NEW.numer_postoju, czas_rzeczywisty,
                    ROUND(dystans::numeric, 2), ROUND(min_czas::numeric, 1), 
                    ROUND(max_czas::numeric, 1), ROUND(czas_teoretyczny::numeric, 1);
            END IF;

        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION fn_waliduj_postoj() IS
    'Sprawdza poprawność postoju: pierwsza/ostatnia stacja, kolejność numerów i godzin.';

CREATE TRIGGER trg_waliduj_postoj
    BEFORE INSERT OR UPDATE ON postoje
    FOR EACH ROW
    EXECUTE PROCEDURE fn_waliduj_postoj();


-- --- Walidacja ostatniego postoju (odroczona do momentu COMMIT) ---
-- Dlaczego DEFERRED? Admin dodaje kilka postojów naraz w jednej transakcji.
-- Dopiero po zapisie wszystkich wiemy, który ma najwyższy numer_postoju.

CREATE OR REPLACE FUNCTION fn_waliduj_ostatni_postoj()
RETURNS TRIGGER AS $$
DECLARE
    ostatni RECORD;
BEGIN
    SELECT * INTO ostatni
    FROM postoje
    WHERE id_trasy = NEW.id_trasy
    ORDER BY numer_postoju DESC
    LIMIT 1;

    -- Trasa musi mieć co najmniej 2 stacje; ostatnia (numer > 1) bez odjazdu
    IF ostatni.numer_postoju > 1 AND ostatni.godzina_odjazdu IS NOT NULL THEN
        RAISE EXCEPTION
            'Ostatni postój trasy (nr %) nie może mieć godziny odjazdu – to stacja końcowa.',
            ostatni.numer_postoju;
    END IF;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER trg_waliduj_ostatni_postoj
    AFTER INSERT OR UPDATE ON postoje
    DEFERRABLE INITIALLY DEFERRED
    FOR EACH ROW
    EXECUTE PROCEDURE fn_waliduj_ostatni_postoj();


-- =============================================================================
-- CZĘŚĆ 4: HARMONOGRAM – cykliczny LUB jednorazowy (nie oba naraz)
-- =============================================================================
-- W panelu admina wybieramy albo "dni tygodnia", albo "konkretne daty".
-- Trigger pilnuje, żeby te dwa tryby nie mieszały się w bazie.

-- --- Próba dodania jednorazowego przejazdu do trasy cyklicznej ---
CREATE OR REPLACE FUNCTION fn_blokuj_przejazd_gdy_cykliczna()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM trasy_cykliczne WHERE id_trasy = NEW.id_trasy
    ) THEN
        RAISE EXCEPTION
            'Trasa % ma harmonogram cykliczny – nie można dodać jednorazowego przejazdu.',
            NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_blokuj_przejazd_gdy_cykliczna
    BEFORE INSERT ON przejazdy
    FOR EACH ROW
    EXECUTE PROCEDURE fn_blokuj_przejazd_gdy_cykliczna();


-- --- Próba dodania dnia cyklicznego do trasy z konkretnymi datami ---
CREATE OR REPLACE FUNCTION fn_blokuj_cykliczna_gdy_przejazdy()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM przejazdy WHERE id_trasy = NEW.id_trasy
    ) THEN
        RAISE EXCEPTION
            'Trasa % ma przejazdy jednorazowe – nie można dodać harmonogramu cyklicznego.',
            NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_blokuj_cykliczna_gdy_przejazdy
    BEFORE INSERT ON trasy_cykliczne
    FOR EACH ROW
    EXECUTE PROCEDURE fn_blokuj_cykliczna_gdy_przejazdy();


-- =============================================================================
-- CZĘŚĆ 5: DATA PRZEJAZDU NIE MOŻE BYĆ W PRZESZŁOŚCI
-- =============================================================================
-- Przy dodawaniu nowego kursu jednorazowego data musi być dzisiaj lub później.

--CREATE OR REPLACE FUNCTION fn_waliduj_date_przejazdu()
--RETURNS TRIGGER AS $$
--BEGIN
--    IF NEW.data_przejazdu < CURRENT_DATE THEN
--        RAISE EXCEPTION
--            'Data przejazdu (%) nie może być w przeszłości.', NEW.data_przejazdu;
--    END IF;
--    RETURN NEW;
--END;
--$$ LANGUAGE plpgsql;

--CREATE TRIGGER trg_waliduj_date_przejazdu
--    BEFORE INSERT ON przejazdy
--    FOR EACH ROW
--    EXECUTE PROCEDURE fn_waliduj_date_przejazdu();


-- =============================================================================
-- CZĘŚĆ 6: AUTO-NUMER POSTOJU (opcjonalne ułatwienie)
-- =============================================================================
-- Jeśli ktoś doda postój bez numeru (NULL), trigger wpisze kolejny numer.

CREATE OR REPLACE FUNCTION fn_nadaj_numer_postoju()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.numer_postoju IS NULL THEN
        SELECT COALESCE(MAX(numer_postoju), 0) + 1
        INTO NEW.numer_postoju
        FROM postoje
        WHERE id_trasy = NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Ten trigger musi działać PRZED walidacją postoju (alfabetycznie wcześniejsza nazwa).
CREATE TRIGGER trg_aaa_nadaj_numer_postoju
    BEFORE INSERT ON postoje
    FOR EACH ROW
    EXECUTE PROCEDURE fn_nadaj_numer_postoju();


-- =============================================================================
-- KONIEC – podsumowanie triggerów w bazie
-- =============================================================================
-- trg_nadaj_id_trasy          → auto ID trasy
-- trg_nadaj_id_pociagu        → auto ID pociągu
-- trg_nadaj_id_wagonu         → auto ID wagonu
-- trg_aaa_nadaj_numer_postoju → auto numer postoju (gdy NULL)
-- trg_waliduj_postoj          → reguły postojów (godziny, kolejność)
-- trg_waliduj_ostatni_postoj   → ostatnia stacja bez odjazdu (sprawdzenie przy COMMIT)
-- trg_blokuj_przejazd_gdy_cykliczna → spójność harmonogramu
-- trg_blokuj_cykliczna_gdy_przejazdy → spójność harmonogramu
-- trg_waliduj_date_przejazdu  → brak dat w przeszłości
