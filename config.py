import os

class Config:
    # musisz miec Baze danych o takich parametrach: 
    DB_USER = 'pociag'
    DB_PASSWORD = 'wagon'
    DB_HOST = 'localhost'
    DB_PORT = '5432'
    DB_NAME = 'kolei_db'

    SQLALCHEMY_DATABASE_URI = f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}'
    SQLALCHEMY_TRACK_MODIFICATIONS = False