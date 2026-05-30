from flask import render_template, request, abort
from models import db, Stacja, Postoj, Trasa, Pociag, InfrastrukturaStacji, Przejazd, TrasaCykliczna
from models import Sklad, Wagon, TypWagonu, ElementStaly, Miejsce
from sqlalchemy.orm import aliased
from sqlalchemy import and_, or_, text
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

def get_pociag_info(id_trasy, data_podrozy_obj=None):
    if data_podrozy_obj:
        przejazd = db.session.query(Pociag).join(Przejazd).filter(
            Przejazd.id_trasy == id_trasy, 
            Przejazd.data_przejazdu == data_podrozy_obj
        ).first()
        if przejazd:
            return {'kategoria': przejazd.kategoria, 'nazwa': przejazd.nazwa}
    p = db.session.query(Pociag).join(Przejazd).filter(Przejazd.id_trasy == id_trasy).first()
    return {
        'kategoria': p.kategoria if p else "REG",
        'nazwa': p.nazwa if p else f"Pociąg Trasa {id_trasy}"
    }

def get_wagony_dla_trasy(id_trasy, data_podrozy_obj=None):
    q = db.session.query(Przejazd).filter(Przejazd.id_trasy == id_trasy)
    if data_podrozy_obj:
        q = q.filter(Przejazd.data_przejazdu == data_podrozy_obj)
        
    przejazd = q.first()
    
    if not przejazd:
        przejazd = db.session.query(Przejazd).filter(Przejazd.id_trasy == id_trasy).first()
        
    if not przejazd:
        return []

    id_pociagu = przejazd.id_pociagu

    sklady = db.session.query(Sklad, Wagon, TypWagonu).\
        join(Wagon, Sklad.id_wagonu == Wagon.id_wagonu).\
        join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
        filter(Sklad.id_pociagu == id_pociagu).\
        order_by(Sklad.numer_kolejnosci).all()

    wyniki_wagonow = []
    
    for sklad, wagon, typ in sklady:
        elementy_db = db.session.query(ElementStaly).filter_by(id_typu=typ.id_typu).all()
        elementy = [{
            'nazwa': el.nazwa_elementu,
            'r_od': el.rzad_od,
            'r_do': el.rzad_do,
            'k_od': el.kolumna_od,
            'k_do': el.kolumna_do
        } for el in elementy_db]

        miejsca_db = db.session.query(Miejsce).filter_by(id_typu=typ.id_typu).all()
        miejsca = [{
            'numer': m.numer_miejsca,
            'rzad': m.rzad,
            'kol': m.kolumna,
            'prm': m.czy_dla_niepelnosprawnych,
            'rower': m.czy_dla_rowerzystow,
            'stolik': m.czy_przy_stoliku,
            'przod': m.czy_przodem
        } for m in miejsca_db]

        wyniki_wagonow.append({
            'id_wagonu': sklad.numer_kolejnosci,
            'nazwa': typ.nazwa,
            'liczba_rzedow': typ.liczba_rzedow,
            'liczba_kolumn': typ.liczba_kolumn,
            'elementy': elementy,
            'miejsca': miejsca
        })
        
    return wyniki_wagonow


def register_routes(app):
    @app.route('/szczegoly/direct/<int:id_trasy>', methods=['GET', 'POST'])
    def szczegoly_direct(id_trasy):
        trasa = db.session.get(Trasa, id_trasy)
        if not trasa:
            abort(404)
            
        data_podrozy = request.args.get('data') or request.form.get('data')
        if data_podrozy == "":
            data_podrozy = None

        query = text("""
            SELECT 
                p.numer_postoju,
                p.godzina_przyjazdu,
                p.godzina_odjazdu,
                i.numer_peronu,
                i.numer_toru,
                s.nazwa_stacji,
                s.szerokosc_geograficzna,
                s.dlugosc_geograficzna,
                g.nazwa_gminy,
                pow.nazwa_powiatu,
                w.nazwa_wojewodztwa
            FROM POSTOJE p
            JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
            JOIN STACJE s ON i.id_stacji = s.id_stacji
            LEFT JOIN GMINY g ON s.id_gminy = g.id_gminy
            LEFT JOIN POWIATY pow ON g.id_powiatu = pow.id_powiatu
            LEFT JOIN WOJEWODZTWA w ON pow.id_wojewodztwa = w.id_wojewodztwa
            WHERE p.id_trasy = :id_trasy
            ORDER BY p.numer_postoju
        """)
        postoje_rows = db.session.execute(query, {"id_trasy": id_trasy}).fetchall()
        
        harmonogram = []
        for r in postoje_rows:
            czy_gmina_jest = r.nazwa_gminy is not None
            
            harmonogram.append({
                'numer': r.numer_postoju,
                'stacja': r.nazwa_stacji if r.nazwa_stacji else "Nieznana",
                'peron': r.numer_peronu if r.numer_peronu is not None else "-",
                'tor': r.numer_toru if r.numer_toru is not None else "-",
                'przyjazd': r.godzina_przyjazdu.strftime('%H:%M') if r.godzina_przyjazdu else 'Początek',
                'odjazd': r.godzina_odjazdu.strftime('%H:%M') if r.godzina_odjazdu else 'Koniec',
                'lat': r.szerokosc_geograficzna,
                'lon': r.dlugosc_geograficzna,
                'gmina': r.nazwa_gminy if czy_gmina_jest else "NIEZNANE",
                'powiat': r.nazwa_powiatu if czy_gmina_jest else "NIEZNANE",
                'wojewodztwo': r.nazwa_wojewodztwa if czy_gmina_jest else "NIEZNANE"
            })
            
        try:
            b_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date() if data_podrozy else None
        except (ValueError, TypeError):
            b_date = None

        wagony_struktura = get_wagony_dla_trasy(id_trasy, b_date)

        return render_template('szczegoly_direct.html', 
                            trasa=trasa, 
                            harmonogram=harmonogram, 
                            pociag=get_pociag_info(id_trasy, b_date), 
                            data=data_podrozy if data_podrozy else "Brak daty",
                            wagony_json=wagony_struktura)

    @app.route('/')
    def index():
        wszystkie_stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        domyslna_data = datetime.date.today().strftime('%Y-%m-%d')
        return render_template('index.html', stacje=wszystkie_stacje, domyslna_data=domyslna_data)

    @app.route('/szukaj', methods=['POST', 'GET'])
    def szukaj():
        src = request.form if request.method == 'POST' else request.args
        start_id = src.get('stacja_start')
        koniec_id = src.get('stacja_koniec')
        data_podrozy = src.get('data')
        godzina_input_str = src.get('godzina') or "00:00"
        
        if not start_id or not koniec_id or not data_podrozy:
            return "Błąd: Wybierz stację początkową, końcową oraz datę!", 400
            
        start_id = int(start_id)
        koniec_id = int(koniec_id)
        
        try:
            h, m = map(int, godzina_input_str.split(':'))
            godzina_input = datetime.time(h, m)
        except ValueError:
            godzina_input = datetime.time(0, 0)

        m_input = time_to_minutes(godzina_input)
        base_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date()

        dni_tygodnia_map = {
            0: 'poniedziałek', 1: 'wtorek', 2: 'środa', 3: 'czwartek',
            4: 'piątek', 5: 'sobota', 6: 'niedziela'
        }
        dzien_tyg_nazwa = dni_tygodnia_map[base_date.weekday()]

        polaczenia_dict = {}

        aktywne_trasy_ids = [r[0] for r in db.session.query(Trasa.id_trasy).\
            outerjoin(TrasaCykliczna, Trasa.id_trasy == TrasaCykliczna.id_trasy).\
            outerjoin(Przejazd, Trasa.id_trasy == Przejazd.id_trasy).\
            filter(or_(TrasaCykliczna.dzien_kursowania == dzien_tyg_nazwa, Przejazd.data_przejazdu == base_date)).all()]

        if not aktywne_trasy_ids:
            return render_template('wyniki.html', polaczenia=[], start="..", koniec="..", data=data_podrozy)

        p_start = aliased(Postoj)
        p_koniec = aliased(Postoj)
        infra_start = aliased(InfrastrukturaStacji)
        infra_koniec = aliased(InfrastrukturaStacji)
        
        direct_rows = db.session.query(Trasa, p_start, p_koniec, Pociag).\
            join(p_start, Trasa.id_trasy == p_start.id_trasy).\
            join(infra_start, p_start.id_peronu_toru == infra_start.id).\
            join(p_koniec, Trasa.id_trasy == p_koniec.id_trasy).\
            join(infra_koniec, p_koniec.id_peronu_toru == infra_koniec.id).\
            outerjoin(Przejazd, and_(Trasa.id_trasy == Przejazd.id_trasy, or_(Przejazd.data_przejazdu == base_date, Przejazd.data_przejazdu == None))).\
            outerjoin(Pociag, Przejazd.id_pociagu == Pociag.id_pociagu).\
            filter(Trasa.id_trasy.in_(aktywne_trasy_ids)).\
            filter(infra_start.id_stacji == start_id).\
            filter(infra_koniec.id_stacji == koniec_id).\
            filter(p_start.numer_postoju < p_koniec.numer_postoju).\
            filter(p_start.godzina_odjazdu != None).\
            filter(p_koniec.godzina_przyjazdu != None).all()

        for trasa, ps, pk, pociag_obj in direct_rows:
            m_start = time_to_minutes(ps.godzina_odjazdu)
            m_koniec = time_to_minutes(pk.godzina_przyjazdu)
            
            days_offset = (pk.dzien_przyjazdu_offset - ps.dzien_odjazdu_offset)
            total_minutes = (m_koniec - m_start) + (days_offset * 1440)
            diff = (m_start - m_input) % 1440
            dep_date = base_date if m_start >= m_input else base_date + datetime.timedelta(days=1)

            p_info = {'kategoria': pociag_obj.kategoria if pociag_obj else "REG", 'nazwa': pociag_obj.nazwa if pociag_obj else f"Pociąg {trasa.id_trasy}"}
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
                    'pociag': p_info,
                    'route_name': trasa.nazwa_trasy
                }

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
        
        poc1 = aliased(Pociag)
        poc2 = aliased(Pociag)
        prz1 = aliased(Przejazd)
        prz2 = aliased(Przejazd)

        transfer_rows = db.session.query(t1, p1, p2, t2, p3, p4, infra2.id_stacji, poc1, poc2).\
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
            outerjoin(prz1, and_(t1.id_trasy == prz1.id_trasy, or_(prz1.data_przejazdu == base_date, prz1.data_przejazdu == None))).\
            outerjoin(poc1, prz1.id_pociagu == poc1.id_pociagu).\
            outerjoin(prz2, and_(t2.id_trasy == prz2.id_trasy, or_(prz2.data_przejazdu == base_date, prz2.data_przejazdu == None))).\
            outerjoin(poc2, prz2.id_pociagu == poc2.id_pociagu).\
            filter(t1.id_trasy.in_(aktywne_trasy_ids)).\
            filter(t2.id_trasy.in_(aktywne_trasy_ids)).\
            filter(infra1.id_stacji == start_id).\
            filter(infra4.id_stacji == koniec_id).\
            filter(p1.numer_postoju < p2.numer_postoju).\
            filter(p3.numer_postoju < p4.numer_postoju).\
            filter(t1.id_trasy != t2.id_trasy).\
            filter(p1.godzina_odjazdu != None).\
            filter(p2.godzina_przyjazdu != None).\
            filter(p3.godzina_odjazdu != None).\
            filter(p4.godzina_przyjazdu != None).all()

        stacje_cache = {s.id_stacji: s.nazwa_stacji for s in db.session.query(Stacja.id_stacji, Stacja.nazwa_stacji).all()}

        for train1, pos1, pos2, train2, pos3, pos4, id_stacji_przesiadki, p1_obj, p2_obj in transfer_rows:
            m1_dep = time_to_minutes(pos1.godzina_odjazdu)
            m1_arr = time_to_minutes(pos2.godzina_przyjazdu)
            m2_dep = time_to_minutes(pos3.godzina_odjazdu)
            m2_arr = time_to_minutes(pos4.godzina_przyjazdu)

            leg1 = (m1_arr - m1_dep) + ((pos2.dzien_przyjazdu_offset - pos1.dzien_odjazdu_offset) * 1440)
            wait = (m2_dep - m1_arr) + ((pos3.dzien_przyjazdu_offset - pos2.dzien_przyjazdu_offset) * 1440)
            leg2 = (m2_arr - m2_dep) + ((pos4.dzien_odjazdu_offset - pos3.dzien_przyjazdu_offset) * 1440)

            if wait < 5 or wait > 240:
                continue

            total_minutes = leg1 + wait + leg2
            diff = (m1_dep - m_input) % 1440
            dep_date = base_date if m1_dep >= m_input else base_date + datetime.timedelta(days=1)
            
            key = ('transfer', train1.id_trasy, train2.id_trasy, pos1.godzina_odjazdu.strftime('%H:%M'))
            if key not in polaczenia_dict:
                stacja_przesiadki = stacje_cache.get(id_stacji_przesiadki, "Nieznana")
                
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
                    'pociag1': {'kategoria': p1_obj.kategoria if p1_obj else "REG", 'nazwa': p1_obj.nazwa if p1_obj else f"Pociąg {train1.id_trasy}"},
                    'pociag2': {'kategoria': p2_obj.kategoria if p2_obj else "REG", 'nazwa': p2_obj.nazwa if p2_obj else f"Pociąg {train2.id_trasy}"}
                }

        all_options = list(polaczenia_dict.values())
        all_options.sort(key=lambda x: (0 if x['type'] == 'direct' else 1, x['sort_diff']))

        stacja_start_nazwa = stacje_cache.get(start_id, "Nieznana")
        stacja_koniec_nazwa = stacje_cache.get(koniec_id, "Nieznana")

        return render_template('wyniki.html', polaczenia=all_options, start=stacja_start_nazwa, koniec=stacja_koniec_nazwa, data=data_podrozy)

    @app.route('/szczegoly/transfer/<int:id1>/<int:id2>', methods=['GET', 'POST'])
    def szczegoly_transfer(id1, id2):
        trasa1 = db.session.get(Trasa, id1)
        trasa2 = db.session.get(Trasa, id2)
        if not trasa1 or not trasa2:
            abort(404)
        
        data_podrozy = request.args.get('data') or request.form.get('data')
        
        sid = request.args.get('sid', default=0, type=int) or request.form.get('sid', default=0, type=int)
        tid = request.args.get('tid', default=0, type=int) or request.form.get('tid', default=0, type=int)
        kid = request.args.get('kid', default=0, type=int) or request.form.get('kid', default=0, type=int)
        
        if sid == 0 or tid == 0 or kid == 0:
            stops_t1 = db.session.query(InfrastrukturaStacji.id_stacji).\
                join(Postoj, Postoj.id_peronu_toru == InfrastrukturaStacji.id).\
                filter(Postoj.id_trasy == id1).order_by(Postoj.numer_postoju).all()
            stops_t2 = db.session.query(InfrastrukturaStacji.id_stacji).\
                join(Postoj, Postoj.id_peronu_toru == InfrastrukturaStacji.id).\
                filter(Postoj.id_trasy == id2).order_by(Postoj.numer_postoju).all()
                
            list_t1 = [r[0] for r in stops_t1]
            list_t2 = [r[0] for r in stops_t2]
            
            wspolne = list(set(list_t1).intersection(set(list_t2)))
            
            if len(wspolne) > 0:
                tid = wspolne[0]
            else:
                tid = list_t1[-1] if list_t1 else 0
                
            if sid == 0:
                sid = list_t1[0] if list_t1 else 0
            if kid == 0:
                kid = list_t2[-1] if list_t2 else 0

        def get_sliced_stops(id_trasy, start_stacja_id, end_stacja_id):
            wycinek_postojow = db.session.query(Postoj, Stacja, InfrastrukturaStacji).\
                join(InfrastrukturaStacji, Postoj.id_peronu_toru == InfrastrukturaStacji.id).\
                join(Stacja, InfrastrukturaStacji.id_stacji == Stacja.id_stacji).\
                filter(Postoj.id_trasy == id_trasy).\
                order_by(Postoj.numer_postoju).all()
                
            res = []
            recording = False
            
            for p, stacja, infra in wycinek_postojow:
                if stacja.id_stacji == start_stacja_id:
                    recording = True
                if recording:
                    res.append({
                        'numer': p.numer_postoju,
                        'stacja': stacja.nazwa_stacji,
                        'peron': infra.numer_peronu if infra.numer_peronu is not None else "-",
                        'tor': infra.numer_toru if infra.numer_toru is not None else "-",
                        'przyjazd': p.godzina_przyjazdu.strftime('%H:%M') if p.godzina_przyjazdu else 'Początek',
                        'odjazd': p.godzina_odjazdu.strftime('%H:%M') if p.godzina_odjazdu else 'Koniec',
                        'lat': stacja.szerokosc_geograficzna,
                        'lon': stacja.dlugosc_geograficzna
                    })
                if stacja.id_stacji == end_stacja_id and recording:
                    break
            return res

        h1 = get_sliced_stops(id1, sid, tid)
        h2 = get_sliced_stops(id2, tid, kid)

        try:
            b_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date() if data_podrozy else None
        except (ValueError, TypeError):
            b_date = None

        wagony_struktura1 = get_wagony_dla_trasy(id1, b_date)
        wagony_struktura2 = get_wagony_dla_trasy(id2, b_date)

        return render_template('szczegoly_transfer.html', 
                            trasa1=trasa1, pociag1=get_pociag_info(id1, b_date), h1=h1, wagony_json1=wagony_struktura1,
                            trasa2=trasa2, pociag2=get_pociag_info(id2, b_date), h2=h2, wagony_json2=wagony_struktura2,
                            data=data_podrozy)