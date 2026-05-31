"""
Prosty skrypt testowy – sprawdza, czy aplikacja łączy się z bazą PostgreSQL.

Uruchomienie: python test_db.py
"""

from app import app
from models import db


def testuj_polaczenie():
    """Wykonuje dwa proste zapytania SQL, żeby potwierdzić działanie połączenia."""
    try:
        with app.app_context():
            db.session.execute(db.text("SELECT 1"))
            print("OK: połączenie działa")

            db.session.execute(db.text("SELECT * FROM stacje LIMIT 1"))
            print("OK: dostęp do tabeli stacje")

    except Exception as e:
        print("BŁĄD:", e)


if __name__ == "__main__":
    testuj_polaczenie()
