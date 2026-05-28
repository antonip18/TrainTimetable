from flask import render_template, request, abort
from models import db, Stacja, Postoj, Trasa, Pociag, InfrastrukturaStacji
from sqlalchemy.orm import aliased
import datetime

def time_to_minutes(t):
    if t is None:
        return 0
    return t.hour * 60 + t.minute

def format_minutes(m):
    hours = m // 60
    minutes = m % 60
    if hours > 0:
        return f"{hours}h {minutes}m"
    return f"{minutes}m"

def get_pociag_info(id_trasy):
    p = Pociag.query.get(id_trasy) or Pociag.query.first()
    return {
        'kategoria': p.kategoria if p else "REG",
        'nazwa': p.nazwa if p else f"Pociąg {id_trasy}"
    }

def register_routes(app):
    @app.route('/')
    def index():
        wszystkie_stacje = Stacja.query.order_by(Stacja.nazwa_stacji).all()
        domyslna_data = datetime.date.today().strftime('%Y-%m-%d')
        return render_template('index.html', stacje=wszystkie_stacje, domyslna_data=domyslna_data)

    @app.route('/szukaj', methods=['POST', 'GET'])
    def szukaj():
        if request.method == 'POST':
            start_id = request.form.get('stacja_start')
            koniec_id = request.form.get('stacja_koniec')
            data_podrozy = request.form.get('data')
            godzina_input_str = request.form.get('godzina') or "00:00"
        else:
            start_id = request.args.get('stacja_start')
            koniec_id = request.args.get('stacja_koniec')
            data_podrozy = request.args.get('data')
            godzina_input_str = request.args.get('godzina') or "00:00"
        
        if not start_id or not koniec_id:
            return "Błąd: Wybierz stację początkową i końcową!", 400
            
        start_id = int(start_id)
        koniec_id = int(koniec_id)
        
        try:
            h, m = map(int, godzina_input_str.split(':'))
            godzina_input = datetime.time(h, m)
        except ValueError:
            godzina_input = datetime.time(0, 0)

        m_input = time_to_minutes(godzina_input)
        base_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date()

        polaczenia_dict = {}

        # 1. POŁĄCZENIA BEZPOŚREDNIE
        p_start = aliased(Postoj)
        p_koniec = aliased(Postoj)
        infra_start = aliased(InfrastrukturaStacji)
        infra_koniec = aliased(InfrastrukturaStacji)
        
        direct_rows = db.session.query(Trasa, p_start, p_koniec).\
            join(p_start, Trasa.id_trasy == p_start.id_trasy).\
            join(infra_start, p_start.id_peronu_toru == infra_start.id).\
            join(p_koniec, Trasa.id_trasy == p_koniec.id_trasy).\
            join(infra_koniec, p_koniec.id_peronu_toru == infra_koniec.id).\
            filter(infra_start.id_stacji == start_id).\
            filter(infra_koniec.id_stacji == koniec_id).\
            filter(p_start.numer_postoju < p_koniec.numer_postoju).\
            filter(p_start.godzina_odjazdu != None).\
            filter(p_koniec.godzina_przyjazdu != None).all()

        for trasa, ps, pk in direct_rows:
            m_start = time_to_minutes(ps.godzina_odjazdu)
            m_koniec = time_to_minutes(pk.godzina_przyjazdu)
            
            total_minutes = (m_koniec - m_start) % 1440
            diff = (m_start - m_input) % 1440
            dep_date = base_date if m_start >= m_input else base_date + datetime.timedelta(days=1)
            
            key = ('direct', trasa.id_trasy, ps.godzina_odjazdu.strftime('%H:%M'))
            if key not in polaczenia_dict:
                polaczenia_dict[key] = {
                    'type': 'direct',
                    'id_trasy': trasa.id_trasy,
                    'odjazd': ps.godzina_odjazdu.strftime('%H:%M'),
                    'przyjazd': pk.godzina_przyjazdu.strftime('%H:%M'),
                    'czas_trwania': format_minutes(total_minutes),
                    'total_minutes': total_minutes,
                    'sort_diff': diff,
                    'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                    'pociag': get_pociag_info(trasa.id_trasy),
                    'route_name': trasa.nazwa_trasy
                }

        # 2. POŁĄCZENIA Z 1 PRZESIADKĄ
        p1 = aliased(Postoj)
        p2 = aliased(Postoj)
        p3 = aliased(Postoj)
        p4 = aliased(Postoj)
        infra1 = aliased(InfrastrukturaStacji)
        infra2 = aliased(InfrastrukturaStacji)
        infra3 = aliased(InfrastrukturaStacji)
        infra4 = aliased(InfrastrukturaStacji)
        t1 = aliased(Trasa)
        t2 = aliased(Trasa)

        transfer_rows = db.session.query(t1, p1, p2, t2, p3, p4, infra2.id_stacji).\
            select_from(t1).\
            join(p1, t1.id_trasy == p1.id_trasy).\
            join(infra1, p1.id_peronu_toru == infra1.id).\
            join(p2, t1.id_trasy == p2.id_trasy).\
            join(infra2, p2.id_peronu_toru == infra2.id).\
            join(infra3, infra2.id_stacji == infra3.id_stacji).\
            join(p3, infra3.id == p3.id_peronu_toru).\
            join(t2, p3.id_trasy == t2.id_trasy).\
            join(p4, t2.id_trasy == p4.id_trasy).\
            join(infra4, p4.id_peronu_toru == infra4.id).\
            filter(infra1.id_stacji == start_id).\
            filter(infra4.id_stacji == koniec_id).\
            filter(p1.numer_postoju < p2.numer_postoju).\
            filter(p3.numer_postoju < p4.numer_postoju).\
            filter(t1.id_trasy != t2.id_trasy).\
            filter(p1.godzina_odjazdu != None).\
            filter(p2.godzina_przyjazdu != None).\
            filter(p3.godzina_odjazdu != None).\
            filter(p4.godzina_przyjazdu != None).all()

        for train1, pos1, pos2, train2, pos3, pos4, id_stacji_przesiadki in transfer_rows:
            m1_dep = time_to_minutes(pos1.godzina_odjazdu)
            m1_arr = time_to_minutes(pos2.godzina_przyjazdu)
            m2_dep = time_to_minutes(pos3.godzina_odjazdu)
            m2_arr = time_to_minutes(pos4.godzina_przyjazdu)

            leg1 = (m1_arr - m1_dep) % 1440
            wait = (m2_dep - m1_arr) % 1440
            leg2 = (m2_arr - m2_dep) % 1440

            if wait > 180:
                continue

            total_minutes = leg1 + wait + leg2
            diff = (m1_dep - m_input) % 1440
            dep_date = base_date if m1_dep >= m_input else base_date + datetime.timedelta(days=1)
            
            key = ('transfer', train1.id_trasy, train2.id_trasy, pos1.godzina_odjazdu.strftime('%H:%M'))
            if key not in polaczenia_dict:
                stacja_przesiadki = Stacja.query.get(id_stacji_przesiadki).nazwa_stacji
                polaczenia_dict[key] = {
                    'type': 'transfer',
                    'id_trasy_1': train1.id_trasy,
                    'id_trasy_2': train2.id_trasy,
                    'sid': start_id,
                    'tid': id_stacji_przesiadki,
                    'kid': koniec_id,
                    'odjazd': pos1.godzina_odjazdu.strftime('%H:%M'),
                    'przyjazd': pos4.godzina_przyjazdu.strftime('%H:%M'),
                    'czas_trwania': format_minutes(total_minutes),
                    'total_minutes': total_minutes,
                    'sort_diff': diff,
                    'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                    'stacja_przesiadki': stacja_przesiadki,
                    'przyjazd_przesiadka': pos2.godzina_przyjazdu.strftime('%H:%M'),
                    'odjazd_przesiadka': pos3.godzina_odjazdu.strftime('%H:%M'),
                    'pociag1': get_pociag_info(train1.id_trasy),
                    'pociag2': get_pociag_info(train2.id_trasy)
                }

        all_options = list(polaczenia_dict.values())
        all_options.sort(key=lambda x: (0 if x['type'] == 'direct' else 1, x['sort_diff']))

        stacja_start_nazwa = Stacja.query.get(start_id).nazwa_stacji
        stacja_koniec_nazwa = Stacja.query.get(koniec_id).nazwa_stacji

        return render_template('wyniki.html', 
                               polaczenia=all_options, 
                               start=stacja_start_nazwa, 
                               koniec=stacja_koniec_nazwa, 
                               data=data_podrozy)

    @app.route('/szczegoly/direct/<int:id_trasy>', methods=['GET', 'POST'])
    def szczegoly_direct(id_trasy):
        trasa = Trasa.query.get_or_404(id_trasy)
        data_podrozy = request.args.get('data') or request.form.get('data')
        postoje_trasy = Postoj.query.filter_by(id_trasy=id_trasy).order_by(Postoj.numer_postoju).all()
        
        harmonogram = []
        for p in postoje_trasy:
            infra = InfrastrukturaStacji.query.get(p.id_peronu_toru)
            stacja = Stacja.query.get(infra.id_stacji) if infra else None
            harmonogram.append({
                'numer': p.numer_postoju,
                'stacja': stacja.nazwa_stacji if stacja else "Nieznana",
                'przyjazd': p.godzina_przyjazdu.strftime('%H:%M') if p.godzina_przyjazdu else 'Początek',
                'odjazd': p.godzina_odjazdu.strftime('%H:%M') if p.godzina_odjazdu else 'Koniec'
            })
        return render_template('szczegoly_direct.html', trasa=trasa, harmonogram=harmonogram, pociag=get_pociag_info(id_trasy), data=data_podrozy)

    @app.route('/szczegoly/transfer/<int:id1>/<int:id2>', methods=['GET', 'POST'])
    def szczegoly_transfer(id1, id2):
        trasa1 = Trasa.query.get_or_404(id1)
        trasa2 = Trasa.query.get_or_404(id2)
        
        data_podrozy = request.args.get('data') or request.form.get('data')
        
        sid = request.args.get('sid', default=0, type=int) or request.form.get('sid', default=0, type=int)
        tid = request.args.get('tid', default=0, type=int) or request.form.get('tid', default=0, type=int)
        kid = request.args.get('kid', default=0, type=int) or request.form.get('kid', default=0, type=int)
        
        def get_sliced_stops(id_trasy, start_stacja_id, end_stacja_id):
            postoje = Postoj.query.filter_by(id_trasy=id_trasy).order_by(Postoj.numer_postoju).all()
            res = []
            recording = False
            for p in postoje:
                infra = InfrastrukturaStacji.query.get(p.id_peronu_toru)
                stacja = Stacja.query.get(infra.id_stacji) if infra else None
                if not stacja:
                    continue
                
                if stacja.id_stacji == start_stacja_id:
                    recording = True
                
                if recording:
                    res.append({
                        'numer': p.numer_postoju,
                        'stacja': stacja.nazwa_stacji,
                        'przyjazd': p.godzina_przyjazdu.strftime('%H:%M') if p.godzina_przyjazdu else 'Początek',
                        'odjazd': p.godzina_odjazdu.strftime('%H:%M') if p.godzina_odjazdu else 'Koniec'
                    })
                
                if stacja.id_stacji == end_stacja_id:
                    break
            return res

        h1 = get_sliced_stops(id1, sid, tid)
        h2 = get_sliced_stops(id2, tid, kid)

        return render_template('szczegoly_transfer.html', 
                               trasa1=trasa1, pociag1=get_pociag_info(id1), h1=h1,
                               trasa2=trasa2, pociag2=get_pociag_info(id2), h2=h2,
                               data=data_podrozy)