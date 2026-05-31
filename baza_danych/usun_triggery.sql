-- =============================================================================
-- USUWANIE TRIGGERÓW I SEKWENCJI (przed drop.sql lub przed ponownym triggery.sql)
-- =============================================================================

DROP TRIGGER IF EXISTS trg_waliduj_ostatni_postoj ON postoje;
DROP TRIGGER IF EXISTS trg_waliduj_date_przejazdu ON przejazdy;
DROP TRIGGER IF EXISTS trg_blokuj_cykliczna_gdy_przejazdy ON trasy_cykliczne;
DROP TRIGGER IF EXISTS trg_blokuj_przejazd_gdy_cykliczna ON przejazdy;
DROP TRIGGER IF EXISTS trg_waliduj_postoj ON postoje;
DROP TRIGGER IF EXISTS trg_aaa_nadaj_numer_postoju ON postoje;
DROP TRIGGER IF EXISTS trg_nadaj_id_wagonu ON wagony;
DROP TRIGGER IF EXISTS trg_nadaj_id_pociagu ON pociagi;
DROP TRIGGER IF EXISTS trg_nadaj_id_trasy ON trasy;

DROP FUNCTION IF EXISTS fn_waliduj_ostatni_postoj();
DROP FUNCTION IF EXISTS fn_waliduj_date_przejazdu();
DROP FUNCTION IF EXISTS fn_blokuj_cykliczna_gdy_przejazdy();
DROP FUNCTION IF EXISTS fn_blokuj_przejazd_gdy_cykliczna();
DROP FUNCTION IF EXISTS fn_waliduj_postoj();
DROP FUNCTION IF EXISTS fn_nadaj_numer_postoju();
DROP FUNCTION IF EXISTS fn_nadaj_id_wagonu();
DROP FUNCTION IF EXISTS fn_nadaj_id_pociagu();
DROP FUNCTION IF EXISTS fn_nadaj_id_trasy();

DROP SEQUENCE IF EXISTS seq_wagony;
DROP SEQUENCE IF EXISTS seq_pociagi;
DROP SEQUENCE IF EXISTS seq_trasy;