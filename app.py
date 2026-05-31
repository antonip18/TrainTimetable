"""
Główny plik aplikacji – punkt startowy projektu TrainTimetable.

Uruchomienie: python app.py
(lub: flask --app app run)
"""

from flask import Flask
from config import Config
from models import db
from routes import register_routes, register_admin
from sqlalchemy import text

# Tworzymy obiekt aplikacji Flask
app = Flask(__name__)
app.config.from_object(Config)

# Łączymy aplikację z bazą danych i rejestrujemy trasy (endpointy)
db.init_app(app)
register_routes(app)
register_admin(app)

if __name__ == '__main__':
    with app.app_context():
        # Test połączenia z bazą przy starcie
        with db.engine.connect() as conn:
            print(conn.execute(text("SELECT current_user")).fetchone())
            print(conn.execute(text("SELECT current_database()")).fetchone())
        # Tworzy tabele, jeśli jeszcze nie istnieją (zwykle robi to create.sql)
        db.create_all()
    app.run(debug=True)