from flask import render_template, request
from models import db, Stacja, InfrastrukturaStacji, Postoj

def register_routes(app):
    @app.route('/')
    def index():
        wszystkie_stacje = Stacja.query.all()
        return render_template('index.html', stacje=wszystkie_stacje)

    @app.route('/szukaj', methods=['POST'])
    def szukaj():
        start_id = int(request.form.get('stacja_start'))
        
        # 1. Znajdź wszystkie ID infrastruktury (perony/tory) dla wybranej stacji startowej
        infra_ids = db.session.query(InfrastrukturaStacji.id)\
            .filter(InfrastrukturaStacji.id_stacji == start_id)\
            .subquery()

        # 2. Znajdź wszystkie trasy (id_trasy), na których są te perony/tory
        trasy_ids = db.session.query(Postoj.id_trasy)\
            .filter(Postoj.id_peronu_toru.in_(infra_ids))\
            .subquery()

        # 3. Znajdź wszystkie inne ID infrastruktury, które są na tych trasach
        inne_infra_ids = db.session.query(Postoj.id_peronu_toru)\
            .filter(Postoj.id_trasy.in_(trasy_ids))\
            .subquery()

        # 4. Pobierz stacje, które posiadają tę infrastrukturę (wykluczając startową)
        sasiedzi = db.session.query(Stacja)\
            .join(InfrastrukturaStacji)\
            .filter(InfrastrukturaStacji.id.in_(inne_infra_ids))\
            .filter(Stacja.id_stacji != start_id)\
            .distinct().all()

        stacja_start_nazwa = Stacja.query.get(start_id).nazwa_stacji

        return render_template('wyniki.html', start=stacja_start_nazwa, sasiedzi=sasiedzi)  