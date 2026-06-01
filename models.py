"""
Modele bazy danych – mapowanie tabel PostgreSQL na klasy Python (ORM SQLAlchemy).

Każda klasa odpowiada jednej tabeli w bazie danych.
Relacje między tabelami (np. stacja -> perony) opisujemy przez db.relationship().
"""

from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


# --- Dane geograficzne (województwo -> powiat -> gmina -> stacja) ---

class Wojewodztwo(db.Model):
    __tablename__ = 'wojewodztwa'
    id_wojewodztwa = db.Column(db.Integer, primary_key=True)
    nazwa_wojewodztwa = db.Column(db.String(50), nullable=False)

    powiaty = db.relationship('Powiat', backref='wojewodztwo', lazy=True)


class Powiat(db.Model):
    __tablename__ = 'powiaty'
    id_powiatu = db.Column(db.Integer, primary_key=True)
    nazwa_powiatu = db.Column(db.String(50), nullable=False)
    id_wojewodztwa = db.Column(db.Integer, db.ForeignKey('wojewodztwa.id_wojewodztwa'), nullable=False)

    gminy = db.relationship('Gmina', backref='powiat', lazy=True)


class Gmina(db.Model):
    __tablename__ = 'gminy'
    id_gminy = db.Column(db.Integer, primary_key=True)
    nazwa_gminy = db.Column(db.String(50), nullable=False)
    id_powiatu = db.Column(db.Integer, db.ForeignKey('powiaty.id_powiatu'), nullable=False)

    stacje = db.relationship('Stacja', backref='gmina', lazy=True)


class Stacja(db.Model):
    """Stacja kolejowa z współrzędnymi GPS (używane na mapie trasy)."""
    __tablename__ = 'stacje'
    id_stacji = db.Column(db.Integer, primary_key=True)
    nazwa_stacji = db.Column(db.String(50), nullable=False)
    id_gminy = db.Column(db.Integer, db.ForeignKey('gminy.id_gminy'), nullable=True)
    szerokosc_geograficzna = db.Column(db.Float, nullable=False)
    dlugosc_geograficzna = db.Column(db.Float, nullable=False)

    infrastruktura = db.relationship('InfrastrukturaStacji', backref='stacja', lazy=True)


class InfrastrukturaStacji(db.Model):
    """Peron i tor przypisany do stacji."""
    __tablename__ = 'infrastruktura_stacji'
    id = db.Column(db.Integer, primary_key=True)
    id_stacji = db.Column(db.Integer, db.ForeignKey('stacje.id_stacji'), nullable=False)
    numer_peronu = db.Column(db.Integer, nullable=False)
    numer_toru = db.Column(db.Integer, nullable=False)

    postoje = db.relationship('Postoj', backref='infrastruktura', lazy=True)


# --- Wagony i miejsca ---

class TypWagonu(db.Model):
    """Szablon wagonu: wymiary siatki miejsc i typ (przedziałowy / bezprzedziałowy)."""
    __tablename__ = 'typy_wagonow'
    id_typu = db.Column(db.Integer, primary_key=True)
    nazwa = db.Column(db.String(50), nullable=False)
    liczba_rzedow = db.Column(db.Integer, nullable=False)
    liczba_kolumn = db.Column(db.Integer, nullable=False)
    czy_przedzialowy = db.Column(db.Boolean, nullable=False)

    elementy_stale = db.relationship('ElementStaly', backref='typ_wagonu', lazy=True)
    miejsca = db.relationship('Miejsce', backref='typ_wagonu', lazy=True)
    wagony = db.relationship('Wagon', backref='typ_wagonu', lazy=True)


class ElementStaly(db.Model):
    """Stały element w wagonie (np. toaleta, drzwi) – nie do siedzenia."""
    __tablename__ = 'elementy_stale'
    id_elementu = db.Column(db.Integer, primary_key=True)
    id_typu = db.Column(db.Integer, db.ForeignKey('typy_wagonow.id_typu'), nullable=True)
    nazwa_elementu = db.Column(db.String(50), nullable=False)
    rzad_od = db.Column(db.Integer, nullable=False)
    rzad_do = db.Column(db.Integer, nullable=False)
    kolumna_od = db.Column(db.Integer, nullable=False)
    kolumna_do = db.Column(db.Integer, nullable=False)


class Miejsce(db.Model):
    """Pojedyncze miejsce siedzące w wagonie."""
    __tablename__ = 'miejsca'
    id_miejsca = db.Column(db.Integer, primary_key=True)
    id_typu = db.Column(db.Integer, db.ForeignKey('typy_wagonow.id_typu'), nullable=True)
    numer_miejsca = db.Column(db.String(5), nullable=False)
    rzad = db.Column(db.Integer, nullable=False)
    kolumna = db.Column(db.Integer, nullable=False)
    numer_przedzialu = db.Column(db.Integer, nullable=True)
    lokalizacja = db.Column(db.String(20), nullable=True)
    czy_przy_stoliku = db.Column(db.Boolean, default=False, nullable=False)
    czy_dla_niepelnosprawnych = db.Column(db.Boolean, default=False, nullable=False)
    czy_dla_rowerzystow = db.Column(db.Boolean, default=False, nullable=False)
    czy_przodem = db.Column(db.Boolean, nullable=True)


class Wagon(db.Model):
    """Konkretna instancja wagonu (powstaje z szablonu TypWagonu)."""
    __tablename__ = 'wagony'
    id_wagonu = db.Column(db.Integer, primary_key=True, autoincrement=True)
    id_typu = db.Column(db.Integer, db.ForeignKey('typy_wagonow.id_typu'), nullable=False)

    sklady = db.relationship('Sklad', backref='wagon', lazy=True)


# --- Pociągi, trasy i rozkład jazdy ---

class Pociag(db.Model):
    """Pociąg (np. IC 1234) – może obsługiwać wiele tras w różnych datach."""
    __tablename__ = 'pociagi'
    id_pociagu = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nazwa = db.Column(db.String(30), unique=True, nullable=False)
    kategoria = db.Column(db.String(10), nullable=False)

    sklady = db.relationship('Sklad', backref='pociag', lazy=True)
    przejazdy = db.relationship('Przejazd', backref='pociag', lazy=True)


class Sklad(db.Model):
    """Łączy pociąg z wagonami i określa kolejność wagonów w składzie."""
    __tablename__ = 'sklady'
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), primary_key=True)
    id_wagonu = db.Column(db.Integer, db.ForeignKey('wagony.id_wagonu'), primary_key=True)
    numer_kolejnosci = db.Column(db.Integer, nullable=False)


class Trasa(db.Model):
    """Definicja trasy – lista postojów w określonej kolejności."""
    __tablename__ = 'trasy'
    # autoincrement=True: ID nadaje trigger w bazie (seq_trasy), gdy aplikacja nie poda wartości
    id_trasy = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nazwa_trasy = db.Column(db.String(100), nullable=False)
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), nullable=True)

    pociag = db.relationship('Pociag', foreign_keys=[id_pociagu], backref='trasy_domyslne', lazy=True)
    postoje = db.relationship('Postoj', backref='trasa', lazy=True)
    przejazdy = db.relationship('Przejazd', backref='trasa', lazy=True)
    trasy_cykliczne = db.relationship('TrasaCykliczna', backref='trasa', lazy=True)
    segmenty_skladu = db.relationship('SkladSegment', backref='trasa', lazy=True)


class Przejazd(db.Model):
    """Konkretny przejazd pociągu daną trasą w wybranym dniu."""
    __tablename__ = 'przejazdy'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), primary_key=True)
    data_przejazdu = db.Column(db.Date, primary_key=True)


class TrasaCykliczna(db.Model):
    """Harmonogram cykliczny – trasa kursuje w wybrane dni tygodnia."""
    __tablename__ = 'trasy_cykliczne'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)

    dzien_kursowania = db.Column(
        db.Enum('poniedziałek', 'wtorek', 'środa', 'czwartek', 'piątek', 'sobota', 'niedziela', name='dni_tygodnia'),
        primary_key=True
    )


class Postoj(db.Model):
    """Pojedynczy postój pociągu na trasie (stacja + godziny + peron/tor)."""
    __tablename__ = 'postoje'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    numer_postoju = db.Column(db.Integer, primary_key=True)
    id_peronu_toru = db.Column(db.Integer, db.ForeignKey('infrastruktura_stacji.id'), nullable=False)
    dzien_przyjazdu_offset = db.Column(db.Integer, default=0)  # 0 = ten sam dzień, 1 = następny dzień
    dzien_odjazdu_offset = db.Column(db.Integer, default=0)
    godzina_przyjazdu = db.Column(db.Time, nullable=True)
    godzina_odjazdu = db.Column(db.Time, nullable=True)


class SkladSegment(db.Model):
    """Skład wagonów na fragmencie trasy (od/do numeru postoju)."""
    __tablename__ = 'sklady_segmenty'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    id_wagonu = db.Column(db.Integer, db.ForeignKey('wagony.id_wagonu'), primary_key=True)
    od_postoju = db.Column(db.Integer, primary_key=True, default=1)
    do_postoju = db.Column(db.Integer, nullable=True)
    numer_kolejnosci = db.Column(db.Integer, nullable=False)

    wagon = db.relationship('Wagon', backref='segmenty', lazy=True)