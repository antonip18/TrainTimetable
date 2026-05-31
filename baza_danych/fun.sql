-- =============================================================================
-- FUNKCJE POMOCNICZE DO CZYSZCZENIA DANYCH
-- =============================================================================
-- Uruchomienie:
--   psql -U pociag -d kolei_db -f baza_danych/fun.sql
--
-- Cel:
--   Usunąć z tabeli PRZEJAZDY rekordy, które:
--   1) kolidują z harmonogramem cyklicznym (TRASY_CYKLICZNE) dla tej samej trasy,
--   2) mają datę przejazdu w przeszłości.
--   To są przypadki, dla których restrykcyjne triggery normalnie blokowałyby INSERT.

CREATE OR REPLACE FUNCTION fn_usun_przejazdy_dla_tras_cyklicznych()
RETURNS INTEGER AS $$
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
$$ LANGUAGE plpgsql;

COMMENT ON FUNCTION fn_usun_przejazdy_dla_tras_cyklicznych() IS
'Czyści PRZEJAZDY: kolizje z TRASY_CYKLICZNE oraz rekordy z datą w przeszłości.';

SELECT fn_usun_przejazdy_dla_tras_cyklicznych();
