from app import app
from models import db, Trasa, Pociag, Wagon, Postoj, TrasaCykliczna, Przejazd
from sqlalchemy import text
import datetime


def testuj_polaczenie():
    try:
        with app.app_context():
            db.session.execute(text("SELECT 1"))
            print("OK: połączenie działa")

            db.session.execute(text("SELECT * FROM stacje LIMIT 1"))
            print("OK: dostęp do tabeli stacje")

    except Exception as e:
        print("BŁĄD połączenia:", e)


def testuj_triggery():
    with app.app_context():
        try:
            trasa = Trasa(nazwa_trasy="TEST_TRIGGER_AUTO_ID")
            db.session.add(trasa)
            db.session.flush()
            assert trasa.id_trasy is not None, "Trigger nie nadał id_trasy"
            print(f"OK: trigger auto-ID trasy (id={trasa.id_trasy})")
            db.session.rollback()
        except Exception as e:
            db.session.rollback()
            print("BŁĄD triggera auto-ID:", e)

        try:
            trasa = Trasa(nazwa_trasy="TEST_POSTOJ")
            db.session.add(trasa)
            db.session.flush()
            zly_postoj = Postoj(
                id_trasy=trasa.id_trasy,
                numer_postoju=1,
                id_peronu_toru=1,
                godzina_przyjazdu=datetime.time(8, 0),
                godzina_odjazdu=datetime.time(8, 5),
            )
            db.session.add(zly_postoj)
            db.session.flush()
            print("BŁĄD: trigger postoju powinien zablokować przyjazd na stacji 1")
            db.session.rollback()
        except Exception as e:
            db.session.rollback()
            if "początkowa" in str(e).lower() or "przyjazdu" in str(e).lower():
                print("OK: trigger blokuje godzinę przyjazdu na pierwszym postoju")
            else:
                print("BŁĄD triggera postoju:", e)

        try:
            trasa = db.session.query(Trasa).first()
            if not trasa:
                print("POMINIĘTO: brak tras w bazie")
                return

            db.session.add(TrasaCykliczna(id_trasy=trasa.id_trasy, dzien_kursowania="poniedziałek"))
            db.session.flush()

            db.session.add(Przejazd(
                id_trasy=trasa.id_trasy,
                id_pociagu=1,
                data_przejazdu=datetime.date.today() + datetime.timedelta(days=7),
            ))
            db.session.flush()
            print("BŁĄD: trigger powinien zablokować mieszanie harmonogramów")
            db.session.rollback()
        except Exception as e:
            db.session.rollback()
            if "cykliczn" in str(e).lower():
                print("OK: trigger blokuje przejazd jednorazowy przy harmonogramie cyklicznym")
            else:
                print("BŁĄD triggera harmonogramu:", e)

        wynik = db.session.execute(text(
            "SELECT tgname FROM pg_trigger WHERE NOT tgisinternal ORDER BY tgname"
        )).fetchall()
        nazwy = [r[0] for r in wynik]
        if nazwy:
            print(f"OK: aktywne triggery ({len(nazwy)}): {', '.join(nazwy)}")
        else:
            print("UWAGA: brak triggerów! Uruchom: psql -U pociag -d kolei_db -f baza_danych/triggery.sql")


if __name__ == "__main__":
    testuj_polaczenie()
    print()
    testuj_triggery()
