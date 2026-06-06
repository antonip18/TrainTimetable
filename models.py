from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()


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
    __tablename__ = 'stacje'
    id_stacji = db.Column(db.Integer, primary_key=True)
    nazwa_stacji = db.Column(db.String(50), nullable=False)
    id_gminy = db.Column(db.Integer, db.ForeignKey('gminy.id_gminy'), nullable=True)
    szerokosc_geograficzna = db.Column(db.Float, nullable=False)
    dlugosc_geograficzna = db.Column(db.Float, nullable=False)

    infrastruktura = db.relationship('InfrastrukturaStacji', backref='stacja', lazy=True)


class InfrastrukturaStacji(db.Model):
    __tablename__ = 'infrastruktura_stacji'
    id = db.Column(db.Integer, primary_key=True)
    id_stacji = db.Column(db.Integer, db.ForeignKey('stacje.id_stacji'), nullable=False)
    numer_peronu = db.Column(db.Integer, nullable=False)
    numer_toru = db.Column(db.Integer, nullable=False)

    postoje = db.relationship('Postoj', backref='infrastruktura', lazy=True)


class TypWagonu(db.Model):
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
    __tablename__ = 'elementy_stale'
    id_elementu = db.Column(db.Integer, primary_key=True)
    id_typu = db.Column(db.Integer, db.ForeignKey('typy_wagonow.id_typu'), nullable=True)
    nazwa_elementu = db.Column(db.String(50), nullable=False)
    rzad_od = db.Column(db.Integer, nullable=False)
    rzad_do = db.Column(db.Integer, nullable=False)
    kolumna_od = db.Column(db.Integer, nullable=False)
    kolumna_do = db.Column(db.Integer, nullable=False)


class Miejsce(db.Model):
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
    __tablename__ = 'wagony'
    id_wagonu = db.Column(db.Integer, primary_key=True, autoincrement=True)
    id_typu = db.Column(db.Integer, db.ForeignKey('typy_wagonow.id_typu'), nullable=False)

    sklady = db.relationship('Sklad', backref='wagon', lazy=True)


class Pociag(db.Model):
    __tablename__ = 'pociagi'
    id_pociagu = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nazwa = db.Column(db.String(30), unique=True, nullable=False)
    kategoria = db.Column(db.String(10), nullable=False)

    sklady = db.relationship('Sklad', backref='pociag', lazy=True)
    przejazdy = db.relationship('Przejazd', backref='pociag', lazy=True)


class Sklad(db.Model):
    __tablename__ = 'sklady'
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), primary_key=True)
    id_wagonu = db.Column(db.Integer, db.ForeignKey('wagony.id_wagonu'), primary_key=True)
    numer_kolejnosci = db.Column(db.Integer, nullable=False)


class Trasa(db.Model):
    __tablename__ = 'trasy'
    id_trasy = db.Column(db.Integer, primary_key=True, autoincrement=True)
    nazwa_trasy = db.Column(db.String(100), nullable=False)
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), nullable=True)

    pociag = db.relationship('Pociag', foreign_keys=[id_pociagu], backref='trasy_domyslne', lazy=True)
    postoje = db.relationship('Postoj', backref='trasa', lazy=True)
    przejazdy = db.relationship('Przejazd', backref='trasa', lazy=True)
    trasy_cykliczne = db.relationship('TrasaCykliczna', backref='trasa', lazy=True)
    segmenty_skladu = db.relationship('SkladSegment', backref='trasa', lazy=True)


class Przejazd(db.Model):
    __tablename__ = 'przejazdy'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    id_pociagu = db.Column(db.Integer, db.ForeignKey('pociagi.id_pociagu'), primary_key=True)
    data_przejazdu = db.Column(db.Date, primary_key=True)


class TrasaCykliczna(db.Model):
    __tablename__ = 'trasy_cykliczne'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)

    dzien_kursowania = db.Column(
        db.Enum('poniedziałek', 'wtorek', 'środa', 'czwartek', 'piątek', 'sobota', 'niedziela', name='dni_tygodnia'),
        primary_key=True
    )


class Postoj(db.Model):
    __tablename__ = 'postoje'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    numer_postoju = db.Column(db.Integer, primary_key=True)
    id_peronu_toru = db.Column(db.Integer, db.ForeignKey('infrastruktura_stacji.id'), nullable=False)
    dzien_przyjazdu_offset = db.Column(db.Integer, default=0)
    dzien_odjazdu_offset = db.Column(db.Integer, default=0)
    godzina_przyjazdu = db.Column(db.Time, nullable=True)
    godzina_odjazdu = db.Column(db.Time, nullable=True)


class SkladSegment(db.Model):
    __tablename__ = 'sklady_segmenty'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    id_wagonu = db.Column(db.Integer, db.ForeignKey('wagony.id_wagonu'), primary_key=True)
    od_postoju = db.Column(db.Integer, primary_key=True, default=1)
    do_postoju = db.Column(db.Integer, nullable=True)
    numer_kolejnosci = db.Column(db.Integer, nullable=False)

    wagon = db.relationship('Wagon', backref='segmenty', lazy=True)


class ZmianaSkladu(db.Model):
    __tablename__ = 'zmiany_skladu'
    id_zmiany = db.Column(db.Integer, primary_key=True, autoincrement=True)
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), nullable=False)
    numer_postoju = db.Column(db.Integer, nullable=False)
    id_wagonu = db.Column(db.Integer, db.ForeignKey('wagony.id_wagonu'), nullable=False)
    typ_operacji = db.Column(
        db.Enum('ODPIĘCIE', 'PRZYPIĘCIE', name='typ_operacji_skladu'),
        nullable=False,
    )
    id_trasy_docelowej = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), nullable=True)
    opis = db.Column(db.String(200), nullable=True)