CREATE OR REPLACE FUNCTION fn_nadaj_id_trasy()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_trasy IS NULL THEN
        NEW.id_trasy := nextval('seq_trasy');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_nadaj_id_trasy
BEFORE INSERT ON trasy
FOR EACH ROW
EXECUTE PROCEDURE fn_nadaj_id_trasy();

CREATE OR REPLACE FUNCTION fn_nadaj_id_pociagu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_pociagu IS NULL THEN
        NEW.id_pociagu := nextval('seq_pociagi');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_nadaj_id_pociagu
BEFORE INSERT ON pociagi
FOR EACH ROW
EXECUTE PROCEDURE fn_nadaj_id_pociagu();

CREATE OR REPLACE FUNCTION fn_nadaj_id_wagonu()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.id_wagonu IS NULL THEN
        NEW.id_wagonu := nextval('seq_wagony');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_nadaj_id_wagonu
BEFORE INSERT ON wagony
FOR EACH ROW
EXECUTE PROCEDURE fn_nadaj_id_wagonu();


CREATE OR REPLACE FUNCTION fn_nadaj_id_zmiany_skladu()
RETURNS TRIGGER AS $$
BEGIN
    NEW.id_zmiany := nextval('seq_zmiany_skladu');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_nadaj_id_zmiany_skladu
BEFORE INSERT ON zmiany_skladu
FOR EACH ROW
EXECUTE PROCEDURE fn_nadaj_id_zmiany_skladu();









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

            cos_amplitudy := sin(radians(prev_lat)) * sin(radians(curr_lat)) + cos(radians(prev_lat)) * cos(radians(curr_lat)) * cos(radians(curr_lon - prev_lon));
            
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

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER trg_waliduj_postoj
AFTER INSERT OR UPDATE ON postoje
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_waliduj_postoj();


CREATE OR REPLACE FUNCTION fn_waliduj_ostatni_postoj()
RETURNS TRIGGER AS $$
DECLARE
    ostatni RECORD;
    postoj_rec RECORD;
BEGIN
    SELECT * INTO ostatni
    FROM postoje
    WHERE id_trasy = NEW.id_trasy
    ORDER BY numer_postoju DESC
    LIMIT 1;

    IF ostatni.numer_postoju > 1 AND ostatni.godzina_odjazdu IS NOT NULL THEN
        RAISE EXCEPTION
            'Ostatni postój trasy (nr %) nie może mieć godziny odjazdu – to stacja końcowa.',
            ostatni.numer_postoju;
    END IF;

    FOR postoj_rec IN 
        SELECT numer_postoju, godzina_odjazdu 
        FROM postoje 
        WHERE id_trasy = NEW.id_trasy 
          AND numer_postoju > 1 
          AND numer_postoju < ostatni.numer_postoju
    LOOP
        IF postoj_rec.godzina_odjazdu IS NULL THEN
            RAISE EXCEPTION
                'Postój pośredni nr % musi mieć podaną godzinę odjazdu.',
                postoj_rec.numer_postoju;
        END IF;
    END LOOP;

    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER trg_waliduj_ostatni_postoj
AFTER INSERT OR UPDATE ON postoje
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW
EXECUTE PROCEDURE fn_waliduj_ostatni_postoj();

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
CREATE TRIGGER trg_aaa_nadaj_numer_postoju
    BEFORE INSERT ON postoje
    FOR EACH ROW
    EXECUTE PROCEDURE fn_nadaj_numer_postoju();




CREATE OR REPLACE FUNCTION minuty_od_dnia_startu_dla_przyjazdu(
    p_dzien_przyjazdu_offset INTEGER,
    p_godzina_przyjazdu TIME,
    p_dzien_odjazdu_offset INTEGER,
    p_godzina_odjazdu TIME
)
RETURNS INTEGER
AS $$
BEGIN
    RETURN COALESCE(p_dzien_przyjazdu_offset, p_dzien_odjazdu_offset) * 1440
         + EXTRACT(EPOCH FROM COALESCE(p_godzina_przyjazdu, p_godzina_odjazdu))::INTEGER / 60;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION minuty_od_dnia_startu_dla_odjazdu(
    p_dzien_przyjazdu_offset INTEGER,
    p_godzina_przyjazdu TIME,
    p_dzien_odjazdu_offset INTEGER,
    p_godzina_odjazdu TIME
)
RETURNS INTEGER
AS $$
BEGIN
    RETURN COALESCE(p_dzien_odjazdu_offset, p_dzien_przyjazdu_offset) * 1440
         + EXTRACT(EPOCH FROM COALESCE(p_godzina_odjazdu, p_godzina_przyjazdu))::INTEGER / 60;
END;
$$
LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION poprawnosc_peronu()
RETURNS TRIGGER AS $$
DECLARE
    przyjazd INTEGER;
    odjazd INTEGER;
    id_trasy_konfliktowej INTEGER;
    max_globalny_offset INTEGER;
BEGIN
    przyjazd := minuty_od_dnia_startu_dla_przyjazdu(
        NEW.dzien_przyjazdu_offset, NEW.godzina_przyjazdu,
        NEW.dzien_odjazdu_offset, NEW.godzina_odjazdu
    );
    odjazd := minuty_od_dnia_startu_dla_odjazdu(
        NEW.dzien_przyjazdu_offset, NEW.godzina_przyjazdu,
        NEW.dzien_odjazdu_offset, NEW.godzina_odjazdu
    );

    SELECT COALESCE(MAX(GREATEST(COALESCE(dzien_przyjazdu_offset, 0), COALESCE(dzien_odjazdu_offset, 0))), 0)
    INTO max_globalny_offset
    FROM postoje;
    max_globalny_offset := GREATEST(max_globalny_offset, COALESCE(NEW.dzien_przyjazdu_offset, 0), COALESCE(NEW.dzien_odjazdu_offset, 0));

    SELECT p.id_trasy INTO id_trasy_konfliktowej
    FROM postoje p
    JOIN przejazdy pr ON p.id_trasy = pr.id_trasy
    JOIN PRZEJAZDY pr_new ON pr_new.id_trasy = NEW.id_trasy
    WHERE p.id_peronu_toru = NEW.id_peronu_toru 
      AND p.id_trasy != NEW.id_trasy
      AND pr.data_przejazdu >= pr_new.data_przejazdu - max_globalny_offset
      AND pr.data_przejazdu <= pr_new.data_przejazdu + max_globalny_offset
      AND (
          (pr.data_przejazdu::timestamp)
          <= 
          (pr_new.data_przejazdu::timestamp + (odjazd - minuty_od_dnia_startu_dla_przyjazdu(p.dzien_przyjazdu_offset, p.godzina_przyjazdu, p.dzien_odjazdu_offset, p.godzina_odjazdu)) * interval '1 minute')
      )
      AND (
          (pr.data_przejazdu::timestamp)
          >= 
          (pr_new.data_przejazdu::timestamp + (przyjazd - minuty_od_dnia_startu_dla_odjazdu(p.dzien_przyjazdu_offset, p.godzina_przyjazdu, p.dzien_odjazdu_offset, p.godzina_odjazdu)) * interval '1 minute')
      )
    LIMIT 1;

    IF id_trasy_konfliktowej IS NOT NULL THEN
        RAISE EXCEPTION 'Konflikt na peronie/torze! Nowy postój pokrywa się czasowo z trasą nr %.', id_trasy_konfliktowej;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER poprawnosc_peronu
BEFORE INSERT OR UPDATE ON postoje
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_peronu();
















CREATE OR REPLACE FUNCTION poprawnosc_wagonu_sklady()
RETURNS TRIGGER AS $$
DECLARE
    v_do_postoju INTEGER;
    v_start_min INTEGER;
    v_end_min INTEGER;
    id_trasy_konfliktowej INTEGER;
    data_konfliktowa DATE;
BEGIN
    IF NEW.do_postoju IS NULL THEN
        SELECT MAX(numer_postoju) INTO v_do_postoju FROM postoje WHERE id_trasy = NEW.id_trasy;
    ELSE
        v_do_postoju := NEW.do_postoju;
    END IF;

    SELECT minuty_od_dnia_startu_dla_odjazdu(dzien_przyjazdu_offset, godzina_przyjazdu, dzien_odjazdu_offset, godzina_odjazdu)
    INTO v_start_min 
    FROM postoje WHERE id_trasy = NEW.id_trasy AND numer_postoju = NEW.od_postoju;

    SELECT minuty_od_dnia_startu_dla_przyjazdu(dzien_przyjazdu_offset, godzina_przyjazdu, dzien_odjazdu_offset, godzina_odjazdu)
    INTO v_end_min 
    FROM postoje WHERE id_trasy = NEW.id_trasy AND numer_postoju = v_do_postoju;

    SELECT s.id_trasy, pr_exist.data_przejazdu INTO id_trasy_konfliktowej, data_konfliktowa
    FROM SKLADY_SEGMENTY s
    JOIN PRZEJAZDY pr_exist ON s.id_trasy = pr_exist.id_trasy
    JOIN POSTOJE p_od ON s.id_trasy = p_od.id_trasy AND p_od.numer_postoju = s.od_postoju
    JOIN POSTOJE p_do ON s.id_trasy = p_do.id_trasy AND p_do.numer_postoju = COALESCE(s.do_postoju, (SELECT MAX(numer_postoju) FROM postoje WHERE id_trasy = s.id_trasy))
    JOIN PRZEJAZDY pr_new ON pr_new.id_trasy = NEW.id_trasy
    WHERE s.id_wagonu = NEW.id_wagonu
      AND NOT (s.id_trasy = NEW.id_trasy AND s.od_postoju = NEW.od_postoju AND pr_exist.data_przejazdu = pr_new.data_przejazdu)
      AND (pr_exist.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_odjazdu(p_od.dzien_przyjazdu_offset, p_od.godzina_przyjazdu, p_od.dzien_odjazdu_offset, p_od.godzina_odjazdu) * interval '1 minute')
          < 
          (pr_new.data_przejazdu::timestamp + v_end_min * interval '1 minute')
      AND (pr_exist.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_przyjazdu(p_do.dzien_przyjazdu_offset, p_do.godzina_przyjazdu, p_do.dzien_odjazdu_offset, p_do.godzina_odjazdu) * interval '1 minute')
          > 
          (pr_new.data_przejazdu::timestamp + v_start_min * interval '1 minute')
    LIMIT 1;

    IF id_trasy_konfliktowej IS NOT NULL THEN
        RAISE EXCEPTION 'Konflikt wagonu! Wagon % jest w użyciu na trasie % w powiązanym czasie (np. przy przejeździe wystartowanym %).', 
            NEW.id_wagonu, id_trasy_konfliktowej, data_konfliktowa;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_poprawnosc_wagonu_sklady
BEFORE INSERT OR UPDATE ON SKLADY_SEGMENTY
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_wagonu_sklady();


CREATE OR REPLACE FUNCTION poprawnosc_wagonu_przejazdy()
RETURNS TRIGGER AS $$
DECLARE
    id_wagonu_konfliktowego INTEGER;
    id_trasy_konfliktowej INTEGER;
BEGIN
    SELECT s_new.id_wagonu, s_exist.id_trasy INTO id_wagonu_konfliktowego, id_trasy_konfliktowej
    FROM SKLADY_SEGMENTY s_new
    JOIN POSTOJE p_new_od ON s_new.id_trasy = p_new_od.id_trasy AND p_new_od.numer_postoju = s_new.od_postoju
    JOIN POSTOJE p_new_do ON s_new.id_trasy = p_new_do.id_trasy AND p_new_do.numer_postoju = COALESCE(s_new.do_postoju, (SELECT MAX(numer_postoju) FROM postoje WHERE id_trasy = s_new.id_trasy))
    JOIN SKLADY_SEGMENTY s_exist ON s_exist.id_wagonu = s_new.id_wagonu 
    JOIN POSTOJE p_ex_od ON s_exist.id_trasy = p_ex_od.id_trasy AND p_ex_od.numer_postoju = s_exist.od_postoju
    JOIN POSTOJE p_ex_do ON s_exist.id_trasy = p_ex_do.id_trasy AND p_ex_do.numer_postoju = COALESCE(s_exist.do_postoju, (SELECT MAX(numer_postoju) FROM postoje WHERE id_trasy = s_exist.id_trasy))
    JOIN PRZEJAZDY pr_exist ON s_exist.id_trasy = pr_exist.id_trasy
    WHERE s_new.id_trasy = NEW.id_trasy
      AND NOT (s_new.id_trasy = s_exist.id_trasy AND s_new.od_postoju = s_exist.od_postoju AND NEW.data_przejazdu = pr_exist.data_przejazdu)
      AND (pr_exist.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_odjazdu(p_ex_od.dzien_przyjazdu_offset, p_ex_od.godzina_przyjazdu, p_ex_od.dzien_odjazdu_offset, p_ex_od.godzina_odjazdu) * interval '1 minute')
          < 
          (NEW.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_przyjazdu(p_new_do.dzien_przyjazdu_offset, p_new_do.godzina_przyjazdu, p_new_do.dzien_odjazdu_offset, p_new_do.godzina_odjazdu) * interval '1 minute')
      AND (pr_exist.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_przyjazdu(p_ex_do.dzien_przyjazdu_offset, p_ex_do.godzina_przyjazdu, p_ex_do.dzien_odjazdu_offset, p_ex_do.godzina_odjazdu) * interval '1 minute')
          > 
          (NEW.data_przejazdu::timestamp + minuty_od_dnia_startu_dla_odjazdu(p_new_od.dzien_przyjazdu_offset, p_new_od.godzina_przyjazdu, p_new_od.dzien_odjazdu_offset, p_new_od.godzina_odjazdu) * interval '1 minute')
    LIMIT 1;

    IF id_wagonu_konfliktowego IS NOT NULL THEN
        RAISE EXCEPTION 'Konflikt wagonu! Dodanie przejazdu w dniu % powoduje, że wagon % byłby w tym samym czasie rozdarty między trasą % a %.', 
            NEW.data_przejazdu, id_wagonu_konfliktowego, NEW.id_trasy, id_trasy_konfliktowej;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_poprawnosc_wagonu_przejazdy
BEFORE INSERT OR UPDATE ON PRZEJAZDY
FOR EACH ROW
EXECUTE FUNCTION poprawnosc_wagonu_przejazdy();


CREATE OR REPLACE FUNCTION fn_przywroc_wagony_po_zmianie_trasy(p_id_trasy INTEGER)
RETURNS void AS $$
DECLARE
    v_wagon INTEGER;
    v_pociag INTEGER;
    v_kolejnosc INTEGER;
    v_trasa INTEGER;
BEGIN
    FOR v_wagon IN
        SELECT DISTINCT id_wagonu FROM (
            SELECT id_wagonu FROM sklady_segmenty WHERE id_trasy = p_id_trasy
            UNION
            SELECT id_wagonu FROM zmiany_skladu WHERE id_trasy = p_id_trasy
            UNION
            SELECT id_wagonu FROM zmiany_skladu WHERE id_trasy_docelowej = p_id_trasy
        ) AS w
    LOOP
        SELECT s.id_pociagu, s.numer_kolejnosci INTO v_pociag, v_kolejnosc
        FROM sklady s WHERE s.id_wagonu = v_wagon LIMIT 1;

        IF v_pociag IS NULL THEN
            DELETE FROM sklady_segmenty WHERE id_wagonu = v_wagon;
            DELETE FROM zmiany_skladu WHERE id_wagonu = v_wagon;
            CONTINUE;
        END IF;

        DELETE FROM zmiany_skladu WHERE id_wagonu = v_wagon;
        DELETE FROM sklady_segmenty WHERE id_wagonu = v_wagon AND id_trasy != p_id_trasy;

        DELETE FROM sklady_segmenty
        WHERE id_wagonu = v_wagon AND id_trasy = p_id_trasy
          AND (od_postoju > 1 OR do_postoju IS NOT NULL);

        FOR v_trasa IN
            SELECT t.id_trasy FROM trasy t
            WHERE t.id_pociagu = v_pociag AND t.id_trasy != p_id_trasy
        LOOP
            IF NOT EXISTS (
                SELECT 1 FROM sklady_segmenty
                WHERE id_trasy = v_trasa AND id_wagonu = v_wagon
                  AND od_postoju = 1 AND do_postoju IS NULL
            ) THEN
                INSERT INTO sklady_segmenty (id_trasy, id_wagonu, od_postoju, do_postoju, numer_kolejnosci)
                VALUES (v_trasa, v_wagon, 1, NULL, v_kolejnosc);
            END IF;
        END LOOP;
    END LOOP;

    DELETE FROM zmiany_skladu
    WHERE id_trasy = p_id_trasy OR id_trasy_docelowej = p_id_trasy;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_trasy()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM fn_przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_przywroc_wagony_przed_usunieciem_trasy
BEFORE DELETE ON trasy
FOR EACH ROW
EXECUTE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_trasy();


CREATE OR REPLACE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_przejazdu()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM fn_przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_przywroc_wagony_przed_usunieciem_przejazdu
BEFORE DELETE ON przejazdy
FOR EACH ROW
EXECUTE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_przejazdu();


CREATE OR REPLACE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_cyklu()
RETURNS TRIGGER AS $$
BEGIN
    PERFORM fn_przywroc_wagony_po_zmianie_trasy(OLD.id_trasy);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_przywroc_wagony_przed_usunieciem_cyklu
BEFORE DELETE ON trasy_cykliczne
FOR EACH ROW
EXECUTE FUNCTION fn_trg_przywroc_wagony_przed_usunieciem_cyklu();