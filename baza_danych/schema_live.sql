--
-- PostgreSQL database dump
--

\restrict QgFxxxPDFaFlg1sKIOu2saaFHqpdm1SMUlMp5q9N4weg3sUtys8szkzNFK99Xsc

-- Dumped from database version 14.22 (Ubuntu 14.22-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


--
-- Name: dni_tygodnia; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.dni_tygodnia AS ENUM (
    'poniedziałek',
    'wtorek',
    'środa',
    'czwartek',
    'piątek',
    'sobota',
    'niedziela'
);


--
-- Name: fn_blokuj_cykliczna_gdy_przejazdy(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_blokuj_cykliczna_gdy_przejazdy() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;


--
-- Name: fn_blokuj_przejazd_gdy_cykliczna(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_blokuj_przejazd_gdy_cykliczna() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;


--
-- Name: fn_nadaj_id_pociagu(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_nadaj_id_pociagu() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.id_pociagu IS NULL THEN
        NEW.id_pociagu := nextval('seq_pociagi');
    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: FUNCTION fn_nadaj_id_pociagu(); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.fn_nadaj_id_pociagu() IS 'Nadaje automatyczne id_pociagu z sekwencji seq_pociagi.';


--
-- Name: fn_nadaj_id_trasy(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_nadaj_id_trasy() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.id_trasy IS NULL THEN
        NEW.id_trasy := nextval('seq_trasy');
    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: FUNCTION fn_nadaj_id_trasy(); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.fn_nadaj_id_trasy() IS 'Nadaje automatyczne id_trasy z sekwencji seq_trasy, gdy aplikacja nie poda ID.';


--
-- Name: fn_nadaj_id_wagonu(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_nadaj_id_wagonu() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.id_wagonu IS NULL THEN
        NEW.id_wagonu := nextval('seq_wagony');
    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: FUNCTION fn_nadaj_id_wagonu(); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.fn_nadaj_id_wagonu() IS 'Nadaje automatyczne id_wagonu z sekwencji seq_wagony.';


--
-- Name: fn_nadaj_numer_postoju(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_nadaj_numer_postoju() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.numer_postoju IS NULL THEN
        SELECT COALESCE(MAX(numer_postoju), 0) + 1
        INTO NEW.numer_postoju
        FROM postoje
        WHERE id_trasy = NEW.id_trasy;
    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: fn_usun_przejazdy_dla_tras_cyklicznych(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_usun_przejazdy_dla_tras_cyklicznych() RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    usuniete_kolizje INTEGER;
    usuniete_przeszle INTEGER;
BEGIN
    DELETE FROM przejazdy p
    WHERE EXISTS (
        SELECT 1
        FROM trasy_cykliczne tc
        WHERE tc.id_trasy = p.id_trasy
    );

    GET DIAGNOSTICS usuniete_kolizje = ROW_COUNT;

    DELETE FROM przejazdy
    WHERE data_przejazdu < CURRENT_DATE;

    GET DIAGNOSTICS usuniete_przeszle = ROW_COUNT;

    RAISE NOTICE 'Usunięto % rekordów z tabeli przejazdy (kolizja z trasami cyklicznymi).', usuniete_kolizje;
    RAISE NOTICE 'Usunięto % rekordów z tabeli przejazdy (data w przeszłości).', usuniete_przeszle;
    RETURN usuniete_kolizje + usuniete_przeszle;
END;
$$;


--
-- Name: FUNCTION fn_usun_przejazdy_dla_tras_cyklicznych(); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.fn_usun_przejazdy_dla_tras_cyklicznych() IS 'Czyści PRZEJAZDY: kolizje z TRASY_CYKLICZNE oraz rekordy z datą w przeszłości.';


--
-- Name: fn_waliduj_date_przejazdu(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_waliduj_date_przejazdu() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.data_przejazdu < CURRENT_DATE THEN
        RAISE EXCEPTION
            'Data przejazdu (%) nie może być w przeszłości.', NEW.data_przejazdu;
    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: fn_waliduj_ostatni_postoj(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_waliduj_ostatni_postoj() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;


--
-- Name: fn_waliduj_postoj(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.fn_waliduj_postoj() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;


--
-- Name: FUNCTION fn_waliduj_postoj(); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.fn_waliduj_postoj() IS 'Sprawdza poprawność postoju: pierwsza/ostatnia stacja, kolejność numerów i godzin.';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: elementy_stale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elementy_stale (
    id_elementu integer NOT NULL,
    id_typu integer,
    nazwa_elementu character varying(50) NOT NULL,
    rzad_od integer NOT NULL,
    rzad_do integer NOT NULL,
    kolumna_od integer NOT NULL,
    kolumna_do integer NOT NULL
);


--
-- Name: gminy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gminy (
    id_gminy integer NOT NULL,
    nazwa_gminy character varying(50) NOT NULL,
    id_powiatu integer NOT NULL
);


--
-- Name: infrastruktura_stacji; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.infrastruktura_stacji (
    id integer NOT NULL,
    id_stacji integer,
    numer_peronu integer NOT NULL,
    numer_toru integer NOT NULL
);


--
-- Name: miejsca; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.miejsca (
    id_miejsca integer NOT NULL,
    id_typu integer,
    numer_miejsca character varying(5) NOT NULL,
    rzad integer NOT NULL,
    kolumna integer NOT NULL,
    numer_przedzialu integer,
    lokalizacja character varying(20),
    czy_przy_stoliku boolean DEFAULT false,
    czy_dla_niepelnosprawnych boolean DEFAULT false,
    czy_dla_rowerzystow boolean DEFAULT false,
    czy_przodem boolean
);


--
-- Name: pociagi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pociagi (
    id_pociagu integer NOT NULL,
    nazwa character varying(30) NOT NULL,
    kategoria character varying(10) NOT NULL,
    CONSTRAINT pociagi_kategoria_check CHECK (((kategoria)::text = ANY ((ARRAY['TLK'::character varying, 'IC'::character varying, 'EIC'::character varying, 'EIP'::character varying, 'EC'::character varying, 'EN'::character varying, 'ICN'::character varying, 'IC/MP'::character varying, 'EN/IC'::character varying, 'EC/IC/ICN'::character varying, 'IC+'::character varying, 'EC/EIC'::character varying, 'EC/IC'::character varying])::text[])))
);


--
-- Name: postoje; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.postoje (
    id_trasy integer NOT NULL,
    numer_postoju integer NOT NULL,
    id_peronu_toru integer NOT NULL,
    dzien_przyjazdu_offset integer DEFAULT 0,
    dzien_odjazdu_offset integer DEFAULT 0,
    godzina_przyjazdu time without time zone,
    godzina_odjazdu time without time zone,
    CONSTRAINT postoje_check CHECK (((godzina_przyjazdu IS NULL) OR (godzina_odjazdu IS NULL) OR ((godzina_odjazdu >= godzina_przyjazdu) AND (dzien_przyjazdu_offset = dzien_odjazdu_offset)) OR (dzien_odjazdu_offset = (dzien_przyjazdu_offset + 1))))
);


--
-- Name: powiaty; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.powiaty (
    id_powiatu integer NOT NULL,
    nazwa_powiatu character varying(50) NOT NULL,
    id_wojewodztwa integer NOT NULL
);


--
-- Name: przejazdy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.przejazdy (
    id_trasy integer NOT NULL,
    id_pociagu integer NOT NULL,
    data_przejazdu date NOT NULL
);


--
-- Name: seq_pociagi; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_pociagi
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_trasy; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_trasy
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: seq_wagony; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.seq_wagony
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sklady; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sklady (
    id_pociagu integer NOT NULL,
    id_wagonu integer NOT NULL,
    numer_kolejnosci integer NOT NULL,
    CONSTRAINT sklady_numer_kolejnosci_check CHECK ((numer_kolejnosci > 0))
);


--
-- Name: sklady_segmenty; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sklady_segmenty (
    id_trasy integer NOT NULL,
    id_wagonu integer NOT NULL,
    od_postoju integer DEFAULT 1 NOT NULL,
    do_postoju integer,
    numer_kolejnosci integer NOT NULL,
    CONSTRAINT sklady_segmenty_check CHECK (((do_postoju IS NULL) OR (do_postoju >= od_postoju))),
    CONSTRAINT sklady_segmenty_numer_kolejnosci_check CHECK ((numer_kolejnosci > 0)),
    CONSTRAINT sklady_segmenty_od_postoju_check CHECK ((od_postoju > 0))
);


--
-- Name: stacje; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stacje (
    id_stacji integer NOT NULL,
    nazwa_stacji character varying(50) NOT NULL,
    id_gminy integer,
    szerokosc_geograficzna double precision NOT NULL,
    dlugosc_geograficzna double precision NOT NULL,
    CONSTRAINT stacje_dlugosc_geograficzna_check CHECK (((dlugosc_geograficzna >= ('-180'::integer)::double precision) AND (dlugosc_geograficzna <= (180)::double precision))),
    CONSTRAINT stacje_szerokosc_geograficzna_check CHECK (((szerokosc_geograficzna >= ('-90'::integer)::double precision) AND (szerokosc_geograficzna <= (90)::double precision)))
);


--
-- Name: trasy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trasy (
    id_trasy integer NOT NULL,
    nazwa_trasy character varying(100) NOT NULL,
    id_pociagu integer
);


--
-- Name: trasy_cykliczne; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trasy_cykliczne (
    id_trasy integer NOT NULL,
    dzien_kursowania public.dni_tygodnia NOT NULL
);


--
-- Name: typy_wagonow; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.typy_wagonow (
    id_typu integer NOT NULL,
    nazwa character varying(50) NOT NULL,
    liczba_rzedow integer NOT NULL,
    liczba_kolumn integer NOT NULL,
    czy_przedzialowy boolean NOT NULL
);


--
-- Name: wagony; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wagony (
    id_wagonu integer NOT NULL,
    id_typu integer NOT NULL
);


--
-- Name: wojewodztwa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wojewodztwa (
    id_wojewodztwa integer NOT NULL,
    nazwa_wojewodztwa character varying(50) NOT NULL
);


--
-- Name: elementy_stale elementy_stale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elementy_stale
    ADD CONSTRAINT elementy_stale_pkey PRIMARY KEY (id_elementu);


--
-- Name: gminy gminy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gminy
    ADD CONSTRAINT gminy_pkey PRIMARY KEY (id_gminy);


--
-- Name: infrastruktura_stacji infrastruktura_stacji_id_stacji_numer_peronu_numer_toru_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.infrastruktura_stacji
    ADD CONSTRAINT infrastruktura_stacji_id_stacji_numer_peronu_numer_toru_key UNIQUE (id_stacji, numer_peronu, numer_toru);


--
-- Name: infrastruktura_stacji infrastruktura_stacji_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.infrastruktura_stacji
    ADD CONSTRAINT infrastruktura_stacji_pkey PRIMARY KEY (id);


--
-- Name: miejsca miejsca_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.miejsca
    ADD CONSTRAINT miejsca_pkey PRIMARY KEY (id_miejsca);


--
-- Name: pociagi pociagi_nazwa_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pociagi
    ADD CONSTRAINT pociagi_nazwa_key UNIQUE (nazwa);


--
-- Name: pociagi pociagi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pociagi
    ADD CONSTRAINT pociagi_pkey PRIMARY KEY (id_pociagu);


--
-- Name: postoje postoje_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.postoje
    ADD CONSTRAINT postoje_pkey PRIMARY KEY (id_trasy, numer_postoju);


--
-- Name: powiaty powiaty_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powiaty
    ADD CONSTRAINT powiaty_pkey PRIMARY KEY (id_powiatu);


--
-- Name: przejazdy przejazdy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.przejazdy
    ADD CONSTRAINT przejazdy_pkey PRIMARY KEY (id_trasy, id_pociagu, data_przejazdu);


--
-- Name: sklady sklady_id_pociagu_numer_kolejnosci_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady
    ADD CONSTRAINT sklady_id_pociagu_numer_kolejnosci_key UNIQUE (id_pociagu, numer_kolejnosci);


--
-- Name: sklady sklady_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady
    ADD CONSTRAINT sklady_pkey PRIMARY KEY (id_pociagu, id_wagonu);


--
-- Name: sklady_segmenty sklady_segmenty_id_trasy_od_postoju_numer_kolejnosci_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_id_trasy_od_postoju_numer_kolejnosci_key UNIQUE (id_trasy, od_postoju, numer_kolejnosci);


--
-- Name: sklady_segmenty sklady_segmenty_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_pkey PRIMARY KEY (id_trasy, id_wagonu, od_postoju);


--
-- Name: stacje stacje_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stacje
    ADD CONSTRAINT stacje_pkey PRIMARY KEY (id_stacji);


--
-- Name: trasy_cykliczne trasy_cykliczne_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trasy_cykliczne
    ADD CONSTRAINT trasy_cykliczne_pkey PRIMARY KEY (id_trasy, dzien_kursowania);


--
-- Name: trasy trasy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trasy
    ADD CONSTRAINT trasy_pkey PRIMARY KEY (id_trasy);


--
-- Name: typy_wagonow typy_wagonow_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.typy_wagonow
    ADD CONSTRAINT typy_wagonow_pkey PRIMARY KEY (id_typu);


--
-- Name: wagony wagony_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagony
    ADD CONSTRAINT wagony_pkey PRIMARY KEY (id_wagonu);


--
-- Name: wojewodztwa wojewodztwa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wojewodztwa
    ADD CONSTRAINT wojewodztwa_pkey PRIMARY KEY (id_wojewodztwa);


--
-- Name: idx_infra_id_stacji; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_infra_id_stacji ON public.infrastruktura_stacji USING btree (id_stacji);


--
-- Name: idx_postoje_id_peronu_toru; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_postoje_id_peronu_toru ON public.postoje USING btree (id_peronu_toru);


--
-- Name: idx_postoje_id_trasy; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_postoje_id_trasy ON public.postoje USING btree (id_trasy);


--
-- Name: idx_przejazdy_trasa_data; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_przejazdy_trasa_data ON public.przejazdy USING btree (id_trasy, data_przejazdu);


--
-- Name: idx_sklady_segmenty_trasa; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sklady_segmenty_trasa ON public.sklady_segmenty USING btree (id_trasy);


--
-- Name: idx_trasy_cykl_id_dzien; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_trasy_cykl_id_dzien ON public.trasy_cykliczne USING btree (id_trasy, dzien_kursowania);


--
-- Name: postoje trg_aaa_nadaj_numer_postoju; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_aaa_nadaj_numer_postoju BEFORE INSERT ON public.postoje FOR EACH ROW EXECUTE FUNCTION public.fn_nadaj_numer_postoju();


--
-- Name: trasy_cykliczne trg_blokuj_cykliczna_gdy_przejazdy; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_blokuj_cykliczna_gdy_przejazdy BEFORE INSERT ON public.trasy_cykliczne FOR EACH ROW EXECUTE FUNCTION public.fn_blokuj_cykliczna_gdy_przejazdy();


--
-- Name: przejazdy trg_blokuj_przejazd_gdy_cykliczna; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_blokuj_przejazd_gdy_cykliczna BEFORE INSERT ON public.przejazdy FOR EACH ROW EXECUTE FUNCTION public.fn_blokuj_przejazd_gdy_cykliczna();


--
-- Name: pociagi trg_nadaj_id_pociagu; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_nadaj_id_pociagu BEFORE INSERT ON public.pociagi FOR EACH ROW EXECUTE FUNCTION public.fn_nadaj_id_pociagu();


--
-- Name: trasy trg_nadaj_id_trasy; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_nadaj_id_trasy BEFORE INSERT ON public.trasy FOR EACH ROW EXECUTE FUNCTION public.fn_nadaj_id_trasy();


--
-- Name: wagony trg_nadaj_id_wagonu; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_nadaj_id_wagonu BEFORE INSERT ON public.wagony FOR EACH ROW EXECUTE FUNCTION public.fn_nadaj_id_wagonu();


--
-- Name: postoje trg_waliduj_ostatni_postoj; Type: TRIGGER; Schema: public; Owner: -
--

CREATE CONSTRAINT TRIGGER trg_waliduj_ostatni_postoj AFTER INSERT OR UPDATE ON public.postoje DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE FUNCTION public.fn_waliduj_ostatni_postoj();


--
-- Name: postoje trg_waliduj_postoj; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_waliduj_postoj BEFORE INSERT OR UPDATE ON public.postoje FOR EACH ROW EXECUTE FUNCTION public.fn_waliduj_postoj();


--
-- Name: elementy_stale elementy_stale_id_typu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elementy_stale
    ADD CONSTRAINT elementy_stale_id_typu_fkey FOREIGN KEY (id_typu) REFERENCES public.typy_wagonow(id_typu);


--
-- Name: gminy gminy_id_powiatu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gminy
    ADD CONSTRAINT gminy_id_powiatu_fkey FOREIGN KEY (id_powiatu) REFERENCES public.powiaty(id_powiatu);


--
-- Name: infrastruktura_stacji infrastruktura_stacji_id_stacji_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.infrastruktura_stacji
    ADD CONSTRAINT infrastruktura_stacji_id_stacji_fkey FOREIGN KEY (id_stacji) REFERENCES public.stacje(id_stacji);


--
-- Name: miejsca miejsca_id_typu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.miejsca
    ADD CONSTRAINT miejsca_id_typu_fkey FOREIGN KEY (id_typu) REFERENCES public.typy_wagonow(id_typu);


--
-- Name: postoje postoje_id_peronu_toru_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.postoje
    ADD CONSTRAINT postoje_id_peronu_toru_fkey FOREIGN KEY (id_peronu_toru) REFERENCES public.infrastruktura_stacji(id);


--
-- Name: postoje postoje_id_trasy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.postoje
    ADD CONSTRAINT postoje_id_trasy_fkey FOREIGN KEY (id_trasy) REFERENCES public.trasy(id_trasy);


--
-- Name: powiaty powiaty_id_wojewodztwa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.powiaty
    ADD CONSTRAINT powiaty_id_wojewodztwa_fkey FOREIGN KEY (id_wojewodztwa) REFERENCES public.wojewodztwa(id_wojewodztwa);


--
-- Name: przejazdy przejazdy_id_pociagu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.przejazdy
    ADD CONSTRAINT przejazdy_id_pociagu_fkey FOREIGN KEY (id_pociagu) REFERENCES public.pociagi(id_pociagu);


--
-- Name: przejazdy przejazdy_id_trasy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.przejazdy
    ADD CONSTRAINT przejazdy_id_trasy_fkey FOREIGN KEY (id_trasy) REFERENCES public.trasy(id_trasy);


--
-- Name: sklady sklady_id_pociagu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady
    ADD CONSTRAINT sklady_id_pociagu_fkey FOREIGN KEY (id_pociagu) REFERENCES public.pociagi(id_pociagu);


--
-- Name: sklady sklady_id_wagonu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady
    ADD CONSTRAINT sklady_id_wagonu_fkey FOREIGN KEY (id_wagonu) REFERENCES public.wagony(id_wagonu);


--
-- Name: sklady_segmenty sklady_segmenty_id_trasy_do_postoju_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_id_trasy_do_postoju_fkey FOREIGN KEY (id_trasy, do_postoju) REFERENCES public.postoje(id_trasy, numer_postoju);


--
-- Name: sklady_segmenty sklady_segmenty_id_trasy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_id_trasy_fkey FOREIGN KEY (id_trasy) REFERENCES public.trasy(id_trasy) ON DELETE CASCADE;


--
-- Name: sklady_segmenty sklady_segmenty_id_trasy_od_postoju_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_id_trasy_od_postoju_fkey FOREIGN KEY (id_trasy, od_postoju) REFERENCES public.postoje(id_trasy, numer_postoju);


--
-- Name: sklady_segmenty sklady_segmenty_id_wagonu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sklady_segmenty
    ADD CONSTRAINT sklady_segmenty_id_wagonu_fkey FOREIGN KEY (id_wagonu) REFERENCES public.wagony(id_wagonu);


--
-- Name: stacje stacje_id_gminy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stacje
    ADD CONSTRAINT stacje_id_gminy_fkey FOREIGN KEY (id_gminy) REFERENCES public.gminy(id_gminy);


--
-- Name: trasy_cykliczne trasy_cykliczne_id_trasy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trasy_cykliczne
    ADD CONSTRAINT trasy_cykliczne_id_trasy_fkey FOREIGN KEY (id_trasy) REFERENCES public.trasy(id_trasy);


--
-- Name: trasy trasy_id_pociagu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trasy
    ADD CONSTRAINT trasy_id_pociagu_fkey FOREIGN KEY (id_pociagu) REFERENCES public.pociagi(id_pociagu);


--
-- Name: wagony wagony_id_typu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wagony
    ADD CONSTRAINT wagony_id_typu_fkey FOREIGN KEY (id_typu) REFERENCES public.typy_wagonow(id_typu);


--
-- PostgreSQL database dump complete
--

\unrestrict QgFxxxPDFaFlg1sKIOu2saaFHqpdm1SMUlMp5q9N4weg3sUtys8szkzNFK99Xsc

