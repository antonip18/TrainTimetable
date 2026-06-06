CREATE OR REPLACE VIEW widok_wszystkich_przejazdow AS
SELECT id_trasy, id_pociagu, data_przejazdu
FROM przejazdy
WHERE data_przejazdu BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '1 month'

UNION ALL

SELECT tc.id_trasy, t.id_pociagu, d.data_generowana AS data_przejazdu
FROM trasy_cykliczne tc
JOIN trasy t ON tc.id_trasy = t.id_trasy
JOIN (
    SELECT d.data_generowana, LOWER(TRIM(to_char(d.data_generowana, 'TMDay'))) AS nazwa_dnia
    FROM generate_series(CURRENT_DATE, CURRENT_DATE + INTERVAL '1 month', INTERVAL '1 day') AS d(data_generowana)
) d ON tc.dzien_kursowania::text = d.nazwa_dnia;


CREATE OR REPLACE FUNCTION nadaj_id_trasy()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_trasy IS NULL THEN
        NEW.id_trasy := nextval('seq_trasy');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER nadaj_id_trasy
BEFORE INSERT ON trasy
FOR EACH ROW
EXECUTE PROCEDURE nadaj_id_trasy();


CREATE OR REPLACE FUNCTION nadaj_id_pociagu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_pociagu IS NULL THEN
        NEW.id_pociagu := nextval('seq_pociagi');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER nadaj_id_pociagu
BEFORE INSERT ON pociagi
FOR EACH ROW
EXECUTE PROCEDURE nadaj_id_pociagu();


CREATE OR REPLACE FUNCTION nadaj_id_wagonu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_wagonu IS NULL THEN
        NEW.id_wagonu := nextval('seq_wagony');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER nadaj_id_wagonu
BEFORE INSERT ON wagony
FOR EACH ROW
EXECUTE PROCEDURE nadaj_id_wagonu();


CREATE OR REPLACE FUNCTION nadaj_id_zmiany_skladu()
RETURNS TRIGGER AS $$
BEGIN
    NEW.id_zmiany := nextval('seq_zmiany_skladu');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER nadaj_id_zmiany_skladu
BEFORE INSERT ON zmiany_skladu
FOR EACH ROW
EXECUTE PROCEDURE nadaj_id_zmiany_skladu();


CREATE OR REPLACE FUNCTION check_postoj()
RETURNS TRIGGER AS $$
DECLARE
    poprzedni RECORD;
    czas_poprzedni_odjazd INTEGER;
    
    kategoria VARCHAR(10);
    predkosc NUMERIC;
    prev_lat DOUBLE PRECISION;
    prev_lon DOUBLE PRECISION;
    curr_lat DOUBLE PRECISION;
    curr_lon DOUBLE PRECISION;
    dystans DOUBLE PRECISION;
    czas_teoretyczny DOUBLE PRECISION;
    czas_rzeczywisty INTEGER;
    min_czas DOUBLE PRECISION;
    max_czas DOUBLE PRECISION;

    czas_przyjazdu INTEGER;
    czas_odjazdu INTEGER;
    czas_postoju INTEGER;
BEGIN
    IF NEW.numer_postoju = 1 THEN
        IF NEW.godzina_przyjazdu IS NOT NULL THEN
            RAISE EXCEPTION 'Postój nr 1 to stacja początkowa – nie może mieć godziny przyjazdu.';
        END IF;
        IF NEW.godzina_odjazdu IS NULL THEN
            RAISE EXCEPTION 'Postój nr 1 to stacja początkowa – musi mieć podaną godzinę odjazdu.';
        END IF;
    END IF;

    IF NEW.numer_postoju > 1 THEN
        IF NEW.godzina_przyjazdu IS NULL THEN
            RAISE EXCEPTION 'Postój nr % musi mieć podaną godzinę przyjazdu.', NEW.numer_postoju;
        END IF;
    END IF;

    IF NEW.godzina_przyjazdu IS NOT NULL AND NEW.godzina_odjazdu IS NOT NULL THEN
        czas_przyjazdu := NEW.dzien_przyjazdu_offset * 1440 + EXTRACT(HOUR FROM NEW.godzina_przyjazdu)::INTEGER * 60 + EXTRACT(MINUTE FROM NEW.godzina_przyjazdu)::INTEGER;
        czas_odjazdu := NEW.dzien_odjazdu_offset * 1440 + EXTRACT(HOUR FROM NEW.godzina_odjazdu)::INTEGER * 60 + EXTRACT(MINUTE FROM NEW.godzina_odjazdu)::INTEGER;
        czas_postoju := czas_odjazdu - czas_przyjazdu;

        IF czas_postoju < 0 THEN
            RAISE EXCEPTION 'Postój nr % ma godzinę odjazdu wcześniejszą niż godzinę przyjazdu.', NEW.numer_postoju;
        END IF;

        IF czas_postoju > 90 THEN
            RAISE EXCEPTION 'Maksymalny czas postoju na stacji wynosi 90 minut! Na postoju nr % zaplanowano % min.', NEW.numer_postoju, czas_postoju;
        END IF;
    END IF;

    IF NEW.numer_postoju > 1 THEN
        SELECT * INTO poprzedni
        FROM postoje
        WHERE id_trasy = NEW.id_trasy
        AND numer_postoju = NEW.numer_postoju - 1;

        IF NOT FOUND THEN
            RAISE EXCEPTION 'Brakuje postoju nr % na trasie %. Numery muszą iść po kolei.', NEW.numer_postoju - 1, NEW.id_trasy;
        END IF;

        IF poprzedni.godzina_odjazdu IS NOT NULL AND NEW.godzina_przyjazdu IS NOT NULL THEN
            czas_przyjazdu := NEW.dzien_przyjazdu_offset * 1440 + EXTRACT(HOUR FROM NEW.godzina_przyjazdu)::INTEGER * 60 + EXTRACT(MINUTE FROM NEW.godzina_przyjazdu)::INTEGER;
            czas_poprzedni_odjazd := poprzedni.dzien_odjazdu_offset * 1440 + EXTRACT(HOUR FROM poprzedni.godzina_odjazdu)::INTEGER * 60 + EXTRACT(MINUTE FROM poprzedni.godzina_odjazdu)::INTEGER;

            IF czas_przyjazdu < czas_poprzedni_odjazd THEN
                RAISE EXCEPTION 'Postój nr % ma przyjazd wcześniejszy niż odjazd z postoju nr %.', NEW.numer_postoju, NEW.numer_postoju - 1;
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

            dystans := acos(sin(radians(prev_lat)) * sin(radians(curr_lat)) + cos(radians(prev_lat)) * cos(radians(curr_lat)) * cos(radians(curr_lon - prev_lon))) * 6371.0;

            czas_teoretyczny := (dystans / predkosc) * 60.0;
            czas_rzeczywisty := czas_przyjazdu - czas_poprzedni_odjazd;

            min_czas := GREATEST(1.0, 0.4 * czas_teoretyczny);
            max_czas := GREATEST(czas_teoretyczny + 90.0, 8.5 * czas_teoretyczny);

            IF czas_rzeczywisty < min_czas OR czas_rzeczywisty > max_czas THEN
                RAISE EXCEPTION 
                    'Pociąg kategorii % na odcinku między postojem % a % nie powinien jechać % min! Dystans: % km. Dopuszczalny czas przejazdu na tej trasie wynosi od % do % min.',
                    kategoria, NEW.numer_postoju - 1, NEW.numer_postoju, czas_rzeczywisty,
                    ROUND(dystans::numeric, 2), ROUND(min_czas::numeric, 1), 
                    ROUND(max_czas::numeric, 1);
            END IF;
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER check_postoj
AFTER INSERT OR UPDATE ON postoje
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE check_postoj();


CREATE OR REPLACE FUNCTION check_ostatni_postoj()
RETURNS TRIGGER AS $$
DECLARE
    ostatni RECORD;
    rec RECORD;
BEGIN
    SELECT * INTO ostatni FROM postoje WHERE id_trasy = NEW.id_trasy ORDER BY numer_postoju DESC LIMIT 1;

    IF ostatni.numer_postoju > 1 AND ostatni.godzina_odjazdu IS NOT NULL THEN
        RAISE EXCEPTION 'Ostatni postój (nr %) jest stacją końcową - nie może mieć czasu odjazdu.', ostatni.numer_postoju;
    END IF;

    FOR rec IN 
        SELECT numer_postoju, godzina_odjazdu FROM postoje WHERE id_trasy = NEW.id_trasy AND numer_postoju > 1 AND numer_postoju < ostatni.numer_postoju
    LOOP
        IF rec.godzina_odjazdu IS NULL THEN
            RAISE EXCEPTION 'Postój pośredni nr % musi mieć określony czas odjazdu.', rec.numer_postoju;
        END IF;
    END LOOP;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER check_ostatni_postoj
AFTER INSERT OR UPDATE ON postoje
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE check_ostatni_postoj();


CREATE OR REPLACE FUNCTION minuty_od_dnia_startu_dla_przyjazdu(dzien_przyjazdu_offset INTEGER, godzina_przyjazdu TIME, dzien_odjazdu_offset INTEGER, godzina_odjazdu TIME)
RETURNS INTEGER AS $$
BEGIN
    RETURN COALESCE(dzien_przyjazdu_offset, dzien_odjazdu_offset) * 1440 + EXTRACT(EPOCH FROM COALESCE(godzina_przyjazdu, godzina_odjazdu))::INTEGER / 60;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION minuty_od_dnia_startu_dla_odjazdu(dzien_przyjazdu_offset INTEGER, godzina_przyjazdu TIME, dzien_odjazdu_offset INTEGER, godzina_odjazdu TIME)
RETURNS INTEGER AS $$
BEGIN
    RETURN COALESCE(dzien_odjazdu_offset, dzien_przyjazdu_offset) * 1440 + EXTRACT(EPOCH FROM COALESCE(godzina_odjazdu, godzina_przyjazdu))::INTEGER / 60;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION poprawnosc_peronu()
RETURNS TRIGGER AS $$
DECLARE
    przyjazd INTEGER;
    odjazd INTEGER;
    konflikt INTEGER;
    max_offset INTEGER;
BEGIN
    przyjazd := minuty_od_dnia_startu_dla_przyjazdu(NEW.dzien_przyjazdu_offset, NEW.godzina_przyjazdu, NEW.dzien_odjazdu_offset, NEW.godzina_odjazdu);
    odjazd := minuty_od_dnia_startu_dla_odjazdu(NEW.dzien_przyjazdu_offset, NEW.godzina_przyjazdu, NEW.dzien_odjazdu_offset, NEW.godzina_odjazdu);

    SELECT COALESCE(MAX(GREATEST(COALESCE(dzien_przyjazdu_offset, 0), COALESCE(dzien_odjazdu_offset, 0))), 0)
    INTO max_offset FROM postoje;

    max_offset := GREATEST(max_offset, COALESCE(NEW.dzien_przyjazdu_offset, 0), COALESCE(NEW.dzien_odjazdu_offset, 0));

    SELECT p.id_trasy INTO konflikt
    FROM postoje p
    JOIN widok_wszystkich_przejazdow pr ON p.id_trasy = pr.id_trasy
    JOIN widok_wszystkich_przejazdow pr_new ON pr_new.id_trasy = NEW.id_trasy
    WHERE p.id_peronu_toru = NEW.id_peronu_toru 
    AND p.id_trasy != NEW.id_trasy
    AND pr.data_przejazdu >= pr_new.data_przejazdu - max_offset * INTERVAL '1 day'
    AND pr.data_przejazdu <= pr_new.data_przejazdu + max_offset * INTERVAL '1 day'
    AND pr.data_przejazdu + minuty_od_dnia_startu_dla_przyjazdu(p.dzien_przyjazdu_offset, p.godzina_przyjazdu, p.dzien_odjazdu_offset, p.godzina_odjazdu) * INTERVAL '1 minute' < pr_new.data_przejazdu + odjazd * INTERVAL '1 minute'
    AND pr.data_przejazdu + minuty_od_dnia_startu_dla_odjazdu(p.dzien_przyjazdu_offset, p.godzina_przyjazdu, p.dzien_odjazdu_offset, p.godzina_odjazdu) * INTERVAL '1 minute' > pr_new.data_przejazdu + przyjazd * INTERVAL '1 minute'
    LIMIT 1;

    IF konflikt IS NOT NULL THEN
        RAISE EXCEPTION 'Konflikt na peronie/torze! Nowy postój pokrywa się czasowo z trasą nr %.', konflikt;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER poprawnosc_peronu
AFTER INSERT OR UPDATE ON postoje
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_peronu();


CREATE OR REPLACE FUNCTION czy_wagon_ma_konflikt(id_wagonu_ INTEGER, id_trasy_ INTEGER, od_postoju_ INTEGER, do_postoju_ INTEGER, data_przejazdu_ DATE) 
RETURNS INTEGER AS $$
DECLARE
    start_t TIMESTAMP;
    koniec_t TIMESTAMP;
    konflikt INTEGER;
    do_postoju INTEGER;
BEGIN
    IF do_postoju_ IS NULL THEN
        SELECT MAX(numer_postoju) INTO do_postoju FROM postoje WHERE id_trasy = id_trasy_;
    ELSE
        do_postoju := do_postoju_;
    END IF;

    SELECT data_przejazdu_ + minuty_od_dnia_startu_dla_odjazdu(dzien_przyjazdu_offset, godzina_przyjazdu, dzien_odjazdu_offset, godzina_odjazdu) * interval '1 minute'
    INTO start_t FROM postoje WHERE id_trasy = id_trasy_ AND numer_postoju = od_postoju_;

    SELECT data_przejazdu_ + minuty_od_dnia_startu_dla_przyjazdu(dzien_przyjazdu_offset, godzina_przyjazdu, dzien_odjazdu_offset, godzina_odjazdu) * interval '1 minute'
    INTO koniec_t FROM postoje WHERE id_trasy = id_trasy_ AND numer_postoju = do_postoju;

    SELECT s.id_trasy INTO konflikt
    FROM sklady_segmenty s
    JOIN widok_wszystkich_przejazdow pr_stare ON s.id_trasy = pr_stare.id_trasy
    JOIN postoje p_od ON s.id_trasy = p_od.id_trasy AND p_od.numer_postoju = s.od_postoju
    JOIN postoje p_do ON s.id_trasy = p_do.id_trasy AND p_do.numer_postoju = COALESCE(s.do_postoju, (SELECT MAX(numer_postoju) FROM postoje WHERE id_trasy = s.id_trasy))
    WHERE s.id_wagonu = id_wagonu_
    AND NOT (s.id_trasy = id_trasy_ AND s.od_postoju = od_postoju_ AND pr_stare.data_przejazdu = data_przejazdu_)
    AND pr_stare.data_przejazdu + minuty_od_dnia_startu_dla_odjazdu(p_od.dzien_przyjazdu_offset, p_od.godzina_przyjazdu, p_od.dzien_odjazdu_offset, p_od.godzina_odjazdu) * interval '1 minute' < koniec_t
    AND pr_stare.data_przejazdu + minuty_od_dnia_startu_dla_przyjazdu(p_do.dzien_przyjazdu_offset, p_do.godzina_przyjazdu, p_do.dzien_odjazdu_offset, p_do.godzina_odjazdu) * interval '1 minute' > start_t
    LIMIT 1;

    RETURN konflikt;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION poprawnosc_wagonu_sklady()
RETURNS TRIGGER AS $$
DECLARE
    rec RECORD;
    konflikt INTEGER;
BEGIN
    FOR rec IN SELECT data_przejazdu FROM widok_wszystkich_przejazdow WHERE id_trasy = NEW.id_trasy LOOP
        konflikt := czy_wagon_ma_konflikt(NEW.id_wagonu, NEW.id_trasy, NEW.od_postoju, NEW.do_postoju, rec.data_przejazdu::DATE);
        
        IF konflikt IS NOT NULL THEN
            RAISE EXCEPTION 'Wagon % jest używany w tym samym czasie na trasie %.', NEW.id_wagonu, konflikt;
        END IF;
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER poprawnosc_wagonu_sklady
AFTER INSERT OR UPDATE ON SKLADY_SEGMENTY
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_wagonu_sklady();


CREATE OR REPLACE FUNCTION poprawnosc_wagonu_przejazdy()
RETURNS TRIGGER AS $$
DECLARE
    rec RECORD;
    konflikt INTEGER;
BEGIN
    FOR rec IN SELECT id_wagonu, od_postoju, do_postoju FROM sklady_segmenty WHERE id_trasy = NEW.id_trasy LOOP        
        konflikt := czy_wagon_ma_konflikt(rec.id_wagonu, NEW.id_trasy, rec.od_postoju, rec.do_postoju, NEW.data_przejazdu);

        IF konflikt IS NOT NULL THEN
            RAISE EXCEPTION 'Konflikt wagonu! Dodanie przejazdu w dniu % powoduje, że wagon % byłby w tym samym czasie używany na trasie %.', NEW.data_przejazdu, rec.id_wagonu, konflikt;
        END IF;
    END LOOP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER poprawnosc_wagonu_przejazdy
AFTER INSERT OR UPDATE ON PRZEJAZDY
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_wagonu_przejazdy();


CREATE OR REPLACE FUNCTION blokuj_przejazd_gdy_cykliczna()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM trasy_cykliczne WHERE id_trasy = NEW.id_trasy) THEN
        RAISE EXCEPTION 'Trasa % ma harmonogram cykliczny – nie można dodać jednorazowego przejazdu.', NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER blokuj_przejazd_gdy_cykliczna
BEFORE INSERT ON przejazdy
FOR EACH ROW
EXECUTE PROCEDURE blokuj_przejazd_gdy_cykliczna();

CREATE OR REPLACE FUNCTION blokuj_cykliczna_gdy_przejazdy()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM przejazdy WHERE id_trasy = NEW.id_trasy) THEN
        RAISE EXCEPTION 'Trasa % ma przejazdy jednorazowe – nie można dodać harmonogramu cyklicznego.', NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER blokuj_cykliczna_gdy_przejazdy
BEFORE INSERT ON trasy_cykliczne
FOR EACH ROW
EXECUTE PROCEDURE blokuj_cykliczna_gdy_przejazdy();


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

CREATE TRIGGER nadaj_numer_postoju
BEFORE INSERT ON postoje
FOR EACH ROW
EXECUTE PROCEDURE fn_nadaj_numer_postoju();


CREATE OR REPLACE FUNCTION przywroc_wagony_po_zmianie_trasy(id_trasy_edytowanej INTEGER)
RETURNS void AS $$
DECLARE
    wagon INTEGER;
    trasa INTEGER;
BEGIN
    FOR wagon IN SELECT id_wagonu FROM sklady_segmenty WHERE id_trasy = id_trasy_edytowanej
    LOOP
        FOR trasa IN SELECT DISTINCT id_trasy FROM zmiany_skladu WHERE id_wagonu = wagon AND typ_operacji = 'PRZYPIĘCIE'
        LOOP
            DELETE FROM sklady_segmenty WHERE id_trasy = trasa AND id_wagonu = wagon;
            DELETE FROM zmiany_skladu WHERE id_wagonu = wagon AND (id_trasy = trasa OR id_trasy_docelowej = trasa);
        END LOOP;

        UPDATE sklady_segmenty s
        SET do_postoju = (
            SELECT MAX(p.numer_postoju) 
            FROM postoje p 
            WHERE p.id_trasy = s.id_trasy
        )
        WHERE s.id_wagonu = wagon;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION przejazdy_czyszczenie()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    IF TG_OP = 'DELETE' THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER przejazdy_zmiana
BEFORE UPDATE OR DELETE ON PRZEJAZDY
FOR EACH ROW
EXECUTE FUNCTION przejazdy_czyszczenie();

CREATE OR REPLACE FUNCTION trasy_cykliczne_czyszczenie()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    IF TG_OP = 'DELETE' THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trasy_cykliczne_zmiana
BEFORE UPDATE OR DELETE ON TRASY_CYKLICZNE
FOR EACH ROW
EXECUTE FUNCTION trasy_cykliczne_czyszczenie();

CREATE OR REPLACE FUNCTION postoje_czyszczenie()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    IF TG_OP = 'DELETE' THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER postoje_zmiana
BEFORE UPDATE OR DELETE ON POSTOJE
FOR EACH ROW
EXECUTE FUNCTION postoje_czyszczenie();