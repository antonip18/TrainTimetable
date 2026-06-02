import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY', 'dev-klucz-tylko-do-projektu-studia')

    DB_USER = 'pociag'
    DB_PASSWORD = 'wagon'
    DB_HOST = 'localhost'
    DB_PORT = '5432'
    DB_NAME = 'kolei_db'

    SQLALCHEMY_DATABASE_URI = f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}'
    SQLALCHEMY_TRACK_MODIFICATIONS = False