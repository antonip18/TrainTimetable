-- UWAGA: przed usunięciem tabel uruchom (opcjonalnie):
--   psql -U pociag -d kolei_db -f baza_danych/usun_triggery.sql

drop table postoje cascade;
drop table TRASY_CYKLICZNE cascade;
drop type DNI_TYGODNIA cascade;
drop table PRZEJAZDY cascade;
drop table trasy cascade;
drop table SKLADY cascade;
drop table POCIAGI cascade;
drop table WAGONY cascade;
drop table MIEJSCA cascade;
drop table ELEMENTY_STALE cascade;
drop table TYPY_WAGONOW cascade;
drop table INFRASTRUKTURA_STACJI cascade;
drop table STACJE cascade;
drop table GMINY cascade;
drop table POWIATY cascade;
drop table WOJEWODZTWA cascade;
