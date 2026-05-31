"""
Prosty skrypt testowy – sprawdza połączenie z bazą i działanie triggerów.

Uruchomienie: python test_db.py
"""

from app import app
from models import db, Trasa, Pociag, Wagon, Postoj, TrasaCykliczna, Przejazd
from sqlalchemy import text
import datetime


def testuj_polaczenie():
    """Wykonuje proste zapytania SQL, żeby potwierdzić działanie połączenia."""
    try:
        with app.app_context():
            db.session.execute(text("SELECT 1"))
            print("OK: połączenie działa")

            db.session.execute(text("SELECT * FROM stacje LIMIT 1"))
            print("OK: dostęp do tabeli stacje")

    except Exception as e:
        print("BŁĄD połączenia:", e)


def testuj_triggery():
    """
    Sprawdza, czy triggery w bazie działają poprawnie.
    Każdy test kończy się rollback() – nic nie zostaje zapisane na stałe.
    """
    with app.app_context():
        # --- Test 1: auto-ID trasy ---
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

        # --- Test 2: pierwszy postój nie może mieć przyjazdu ---
        try:
            trasa = Trasa(nazwa_trasy="TEST_POSTOJ")
            db.session.add(trasa)
            db.session.flush()
            # id_peronu_toru=1 istnieje w bazie (stacja Lotnisko Modlin)
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

        # --- Test 3: harmonogram cykliczny vs jednorazowy ---
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

        # --- Test 4: lista aktywnych triggerów w bazie ---
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
