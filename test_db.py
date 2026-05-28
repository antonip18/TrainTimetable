from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from config import Config  # Importujemy Twoją klasę konfiguracji

# 1. Tworzymy "mini-aplikację" tylko na potrzeby testu
app = Flask(__name__)
app.config.from_object(Config)
db = SQLAlchemy(app)

# 2. Próbujemy się połączyć
def testuj_polaczenie():
    try:
        # "app_context" jest potrzebny, żeby Flask wiedział, z jaką bazą rozmawiać
        with app.app_context():
            # Wykonujemy najprostsze zapytanie SQL, które nic nie robi, tylko sprawdza połączenie
            db.session.execute(db.text("SELECT 1"))
            print("--- SUKCES! ---")
            print("Połączenie z bazą danych działa poprawnie.")
    except Exception as e:
        print("--- BŁĄD! ---")
        print("Nie udało się połączyć z bazą danych.")
        print(f"Szczegóły błędu: {e}")

if __name__ == "__main__":
    testuj_polaczenie()