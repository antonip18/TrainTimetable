from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class Stacja(db.Model):
    __tablename__ = 'stacje'
    id_stacji = db.Column(db.Integer, primary_key=True)
    nazwa_stacji = db.Column(db.String(50), nullable=False)
    # Relacja do infrastruktury, by łatwo skakać do torów/peronów
    infrastruktura = db.relationship('InfrastrukturaStacji', backref='stacja_rel', lazy=True)

class InfrastrukturaStacji(db.Model):
    __tablename__ = 'infrastruktura_stacji'
    id = db.Column(db.Integer, primary_key=True)
    id_stacji = db.Column(db.Integer, db.ForeignKey('stacje.id_stacji'), nullable=False)
    numer_peronu = db.Column(db.Integer, nullable=False)
    numer_toru = db.Column(db.Integer, nullable=False)
    # Relacja do postojów
    postoje = db.relationship('Postoj', backref='infrastruktura_rel', lazy=True)

class Trasa(db.Model):
    __tablename__ = 'trasy'
    id_trasy = db.Column(db.Integer, primary_key=True)
    nazwa_trasy = db.Column(db.String(100), nullable=False)
    postoje = db.relationship('Postoj', backref='trasa_rel', lazy=True)

class Postoj(db.Model):
    __tablename__ = 'postoje'
    id_trasy = db.Column(db.Integer, db.ForeignKey('trasy.id_trasy'), primary_key=True)
    numer_postoju = db.Column(db.Integer, primary_key=True)
    id_peronu_toru = db.Column(db.Integer, db.ForeignKey('infrastruktura_stacji.id'), nullable=False)
    godzina_przyjazdu = db.Column(db.Time)
    godzina_odjazdu = db.Column(db.Time)