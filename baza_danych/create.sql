CREATE TABLE WOJEWODZTWA (
    id_wojewodztwa INTEGER PRIMARY KEY,
    nazwa_wojewodztwa VARCHAR(50) NOT NULL
);

CREATE TABLE POWIATY (
    id_powiatu INTEGER PRIMARY KEY,
    nazwa_powiatu VARCHAR(50) NOT NULL,
    id_wojewodztwa INTEGER REFERENCES WOJEWODZTWA(id_wojewodztwa) NOT NULL
);

CREATE TABLE GMINY (
    id_gminy INTEGER PRIMARY KEY,
    nazwa_gminy VARCHAR(50) NOT NULL,
    id_powiatu INTEGER REFERENCES POWIATY(id_powiatu) NOT NULL
);

CREATE TABLE STACJE (
    id_stacji INTEGER NOT NULL PRIMARY KEY,
    nazwa_stacji VARCHAR(50) NOT NULL,
    id_gminy INTEGER REFERENCES GMINY(id_gminy),
    szerokosc_geograficzna DOUBLE PRECISION NOT NULL,
    dlugosc_geograficzna DOUBLE PRECISION NOT NULL,
    CHECK (szerokosc_geograficzna BETWEEN -90 AND 90),
    CHECK (dlugosc_geograficzna BETWEEN -180 AND 180)
);

CREATE TABLE INFRASTRUKTURA_STACJI (
    id INTEGER PRIMARY KEY,
    id_stacji INTEGER REFERENCES STACJE(id_stacji),
    numer_peronu INTEGER NOT NULL,
    numer_toru INTEGER NOT NULL,
    UNIQUE(id_stacji, numer_peronu, numer_toru)
);

CREATE TABLE TYPY_WAGONOW (
    id_typu INTEGER PRIMARY KEY,
    nazwa VARCHAR(50) NOT NULL,
    liczba_rzedow INTEGER NOT NULL,
    liczba_kolumn INTEGER NOT NULL,
    czy_przedzialowy BOOLEAN NOT NULL
);

CREATE TABLE ELEMENTY_STALE (
    id_elementu INTEGER PRIMARY KEY,
    id_typu INTEGER REFERENCES TYPY_WAGONOW(id_typu),
    nazwa_elementu VARCHAR(50) NOT NULL,
    rzad_od INTEGER NOT NULL,
    rzad_do INTEGER NOT NULL,
    kolumna_od INTEGER NOT NULL,
    kolumna_do INTEGER NOT NULL
);

CREATE TABLE MIEJSCA (
    id_miejsca INTEGER PRIMARY KEY,
    id_typu INTEGER REFERENCES TYPY_WAGONOW(id_typu),
    numer_miejsca VARCHAR(5) NOT NULL,
    rzad INTEGER NOT NULL,
    kolumna INTEGER NOT NULL,
    numer_przedzialu INTEGER,
    lokalizacja VARCHAR(20),
    czy_przy_stoliku BOOLEAN DEFAULT FALSE,
    czy_dla_niepelnosprawnych BOOLEAN DEFAULT FALSE,
    czy_dla_rowerzystow BOOLEAN DEFAULT FALSE,
    czy_przodem BOOLEAN
);

CREATE TABLE WAGONY (
    id_wagonu INTEGER PRIMARY KEY,
    id_typu INTEGER NOT NULL REFERENCES TYPY_WAGONOW(id_typu)
);

CREATE TABLE POCIAGI (
    id_pociagu INTEGER PRIMARY KEY,
    nazwa VARCHAR(30) NOT NULL UNIQUE,
    kategoria VARCHAR(10) NOT NULL CHECK (kategoria IN ('TLK', 'IC', 'EIC', 'EIP', 'EC', 'EN', 'ICN', 'IC/MP', 'EN/IC', 'EC/IC/ICN', 'IC+', 'EC/EIC', 'EC/IC'))
);

CREATE TABLE SKLADY (
    id_pociagu INTEGER NOT NULL REFERENCES POCIAGI(id_pociagu),
    id_wagonu INTEGER NOT NULL REFERENCES WAGONY(id_wagonu),
    numer_kolejnosci INTEGER NOT NULL CHECK (numer_kolejnosci > 0),
    PRIMARY KEY(id_pociagu, id_wagonu),
    UNIQUE(id_pociagu, numer_kolejnosci)
);

CREATE TABLE TRASY (
    id_trasy INTEGER PRIMARY KEY,
    nazwa_trasy VARCHAR(100) NOT NULL,
    id_pociagu INTEGER REFERENCES POCIAGI(id_pociagu)
);

CREATE TABLE PRZEJAZDY (
    id_trasy INTEGER REFERENCES TRASY(id_trasy),
    id_pociagu INTEGER REFERENCES POCIAGI(id_pociagu),
    data_przejazdu DATE NOT NULL,
    PRIMARY KEY(id_trasy, id_pociagu, data_przejazdu)
);

CREATE TYPE DNI_TYGODNIA AS ENUM (
    'poniedziałek',
    'wtorek',
    'środa',
    'czwartek',
    'piątek',
    'sobota',
    'niedziela'
);

CREATE TABLE TRASY_CYKLICZNE (
    id_trasy INTEGER REFERENCES TRASY(id_trasy),
    dzien_kursowania DNI_TYGODNIA NOT NULL,
    PRIMARY KEY(id_trasy, dzien_kursowania)
);

CREATE TABLE POSTOJE (
    id_trasy INTEGER NOT NULL REFERENCES TRASY(id_trasy),
    numer_postoju INTEGER NOT NULL,
    id_peronu_toru INTEGER NOT NULL REFERENCES INFRASTRUKTURA_STACJI(id),
    dzien_przyjazdu_offset INTEGER DEFAULT 0,
    dzien_odjazdu_offset INTEGER DEFAULT 0,
    godzina_przyjazdu TIME,
    godzina_odjazdu TIME,
    PRIMARY KEY(id_trasy, numer_postoju),
    CHECK(godzina_przyjazdu IS NULL OR godzina_odjazdu IS NULL OR (godzina_odjazdu >= godzina_przyjazdu AND dzien_przyjazdu_offset=dzien_odjazdu_offset) OR (dzien_odjazdu_offset=dzien_przyjazdu_offset+1))
);

CREATE TABLE SKLADY_SEGMENTY (
    id_trasy INTEGER NOT NULL REFERENCES TRASY(id_trasy) ON DELETE CASCADE,
    id_wagonu INTEGER NOT NULL REFERENCES WAGONY(id_wagonu),
    od_postoju INTEGER NOT NULL DEFAULT 1 CHECK (od_postoju > 0),
    do_postoju INTEGER CHECK (do_postoju IS NULL OR do_postoju >= od_postoju),
    numer_kolejnosci INTEGER NOT NULL CHECK (numer_kolejnosci > 0),
    PRIMARY KEY (id_trasy, id_wagonu, od_postoju),
    UNIQUE (id_trasy, od_postoju, numer_kolejnosci),
    FOREIGN KEY (id_trasy, od_postoju) REFERENCES POSTOJE(id_trasy, numer_postoju),
    FOREIGN KEY (id_trasy, do_postoju) REFERENCES POSTOJE(id_trasy, numer_postoju)
);

CREATE TYPE TYP_OPERACJI_SKLADU AS ENUM ('ODPIĘCIE', 'PRZYPIĘCIE');

CREATE TABLE ZMIANY_SKLADU (
    id_zmiany SERIAL PRIMARY KEY,
    id_trasy INTEGER NOT NULL REFERENCES TRASY(id_trasy),
    numer_postoju INTEGER NOT NULL,
    id_wagonu INTEGER NOT NULL REFERENCES WAGONY(id_wagonu),
    typ_operacji TYP_OPERACJI_SKLADU NOT NULL,
    id_trasy_docelowej INTEGER REFERENCES TRASY(id_trasy),
    opis VARCHAR(200),
    FOREIGN KEY (id_trasy, numer_postoju) REFERENCES POSTOJE(id_trasy, numer_postoju)
);

CREATE INDEX idx_postoje_id_trasy ON POSTOJE(id_trasy);
CREATE INDEX idx_sklady_segmenty_trasa ON SKLADY_SEGMENTY(id_trasy);
CREATE INDEX idx_postoje_id_peronu_toru ON POSTOJE(id_peronu_toru);
CREATE INDEX idx_infra_id_stacji ON INFRASTRUKTURA_STACJI(id_stacji);
CREATE INDEX idx_przejazdy_trasa_data ON PRZEJAZDY(id_trasy, data_przejazdu);
CREATE INDEX idx_trasy_cykl_id_dzien ON TRASY_CYKLICZNE(id_trasy, dzien_kursowania);

CREATE SEQUENCE seq_trasy;
CREATE SEQUENCE seq_pociagi;
CREATE SEQUENCE seq_wagony;
SELECT setval('seq_trasy', (SELECT MAX(id_trasy) FROM trasy))
WHERE EXISTS (SELECT 1 FROM trasy LIMIT 1);

SELECT setval('seq_pociagi', (SELECT MAX(id_pociagu) FROM pociagi))
WHERE EXISTS (SELECT 1 FROM pociagi LIMIT 1);

SELECT setval('seq_wagony', (SELECT MAX(id_wagonu) FROM wagony))
WHERE EXISTS (SELECT 1 FROM wagony LIMIT 1);