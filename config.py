import os

class Config:
    """
    Ustawienia aplikacji Flask.
    Przed uruchomieniem upewnij się, że baza PostgreSQL istnieje
    (skrypty w folderze baza_danych/).
    """

    # Klucz sesji – potrzebny m.in. do komunikatów flash w panelu admina
    SECRET_KEY = os.environ.get('SECRET_KEY', 'dev-klucz-tylko-do-projektu-studia')

    # Parametry połączenia z bazą danych PostgreSQL
    DB_USER = 'pociag'
    DB_PASSWORD = 'wagon'
    DB_HOST = 'localhost'
    DB_PORT = '5432'
    DB_NAME = 'kolei_db'

    SQLALCHEMY_DATABASE_URI = f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}'
    SQLALCHEMY_TRACK_MODIFICATIONS = False