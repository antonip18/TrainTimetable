from flask import Flask
from config import Config
from models import db
from routes import register_routes
from sqlalchemy import text

app = Flask(__name__)
app.config.from_object(Config)

db.init_app(app)
register_routes(app)

if __name__ == '__main__':
    with app.app_context():
        with db.engine.connect() as conn:
            print(conn.execute(text("SELECT current_user")).fetchone())
            print(conn.execute(text("SELECT current_database()")).fetchone())
        db.create_all()
    app.run(debug=True)