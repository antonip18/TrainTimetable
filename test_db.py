from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from config import Config

app = Flask(__name__)
app.config.from_object(Config)
db = SQLAlchemy(app)

def testuj_polaczenie():
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