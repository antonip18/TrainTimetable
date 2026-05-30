from flask import render_template, request, abort
from models import db, Stacja, Postoj, Trasa, Pociag, InfrastrukturaStacji, Przejazd, TrasaCykliczna
from models import Sklad, Wagon, TypWagonu, ElementStaly, Miejsce
from sqlalchemy.orm import aliased
from sqlalchemy import and_, or_, text
import datetime
import heapq
from collections import defaultdict
import itertools

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
            'r_od': el.rzad_od, 'r_do': el.rzad_do,
            'k_od': el.kolumna_od, 'k_do': el.kolumna_do
        } for el in elementy_db]

        miejsca_db = db.session.query(Miejsce).filter_by(id_typu=typ.id_typu).all()
        miejsca = [{
            'numer': m.numer_miejsca,
            'rzad': m.rzad, 'kol': m.kolumna,
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
                p.numer_postoju, p.godzina_przyjazdu, p.godzina_odjazdu,
                i.numer_peronu, i.numer_toru, s.nazwa_stacji,
                s.szerokosc_geograficzna, s.dlugosc_geograficzna,
                g.nazwa_gminy, pow.nazwa_powiatu, w.nazwa_wojewodztwa
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
                'lat': r.szerokosc_geograficzna, 'lon': r.dlugosc_geograficzna,
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
                            trasa=trasa, harmonogram=harmonogram, 
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

        aktywne_trasy_ids = [r[0] for r in db.session.query(Trasa.id_trasy).\
            outerjoin(TrasaCykliczna, Trasa.id_trasy == TrasaCykliczna.id_trasy).\
            outerjoin(Przejazd, Trasa.id_trasy == Przejazd.id_trasy).\
            filter(or_(TrasaCykliczna.dzien_kursowania == dzien_tyg_nazwa, Przejazd.data_przejazdu == base_date)).all()]

        if not aktywne_trasy_ids:
            return render_template('wyniki.html', polaczenia=[], start="..", koniec="..", data=data_podrozy)

        stacje_cache = {s.id_stacji: s.nazwa_stacji for s in db.session.query(Stacja.id_stacji, Stacja.nazwa_stacji).all()}

        pociagi_rows = db.session.query(Przejazd.id_trasy, Pociag.kategoria, Pociag.nazwa).\
            join(Pociag, Przejazd.id_pociagu == Pociag.id_pociagu).\
            filter(or_(Przejazd.data_przejazdu == base_date, Przejazd.data_przejazdu == None)).all()
        pociag_cache = {r.id_trasy: {'kategoria': r.kategoria, 'nazwa': r.nazwa} for r in pociagi_rows}

        postoje_raw = db.session.query(
            Postoj.id_trasy, Trasa.nazwa_trasy, InfrastrukturaStacji.id_stacji,
            Postoj.numer_postoju, Postoj.godzina_przyjazdu, Postoj.godzina_odjazdu,
            Postoj.dzien_przyjazdu_offset, Postoj.dzien_odjazdu_offset
        ).join(Trasa, Postoj.id_trasy == Trasa.id_trasy).\
        join(InfrastrukturaStacji, Postoj.id_peronu_toru == InfrastrukturaStacji.id).\
        filter(Postoj.id_trasy.in_(aktywne_trasy_ids)).order_by(Postoj.id_trasy, Postoj.numer_postoju).all()

        trasy_map = {}
        for r in postoje_raw:
            if r.id_trasy not in trasy_map:
                trasy_map[r.id_trasy] = {'nazwa': r.nazwa_trasy, 'stops': []}
            trasy_map[r.id_trasy]['stops'].append(r)

        def rozwiazanie_optymalne_dijkstra():
            graph = defaultdict(list)
            tie_breaker = itertools.count()
            
            for tid, tinfo in trasy_map.items():
                stops = tinfo['stops']
                for i in range(len(stops) - 1):
                    u = stops[i]
                    v = stops[i+1]
                    if u.godzina_odjazdu is None or v.godzina_przyjazdu is None: 
                        continue

                    dep_min = time_to_minutes(u.godzina_odjazdu) + (u.dzien_odjazdu_offset * 1440)
                    arr_min = time_to_minutes(v.godzina_przyjazdu) + (v.dzien_przyjazdu_offset * 1440)

                    graph[u.id_stacji].append({
                        'to': v.id_stacji, 'route_id': tid, 'route_name': tinfo['nazwa'],
                        'dep_min': dep_min, 'arr_min': arr_min,
                        'dep_str': u.godzina_odjazdu.strftime('%H:%M'),
                        'arr_str': v.godzina_przyjazdu.strftime('%H:%M')
                    })

            pq = []
            for edge in graph[start_id]:
                if edge['dep_min'] >= m_input:
                    path_leg = [{
                        'route_id': edge['route_id'], 'start_station': start_id, 'end_station': edge['to'],
                        'dep_min': edge['dep_min'], 'arr_min': edge['arr_min'],
                        'dep_str': edge['dep_str'], 'arr_str': edge['arr_str']
                    }]
                    heapq.heappush(pq, (edge['arr_min'], 0, edge['dep_min'], edge['to'], edge['route_id'], next(tie_breaker), path_leg))

            visited = defaultdict(list)

            def is_dominated(node, arr, trans, dep):
                for v_arr, v_trans, v_dep in visited[node]:
                    if v_arr <= arr and v_trans <= trans and v_dep >= dep:
                        return True
                return False

            znalezione_polaczenia = []

            while pq:
                arr_min, trans, dep_min_start, u, curr_route, _, path = heapq.heappop(pq)
                if trans > 2:
                    continue

                if is_dominated(u, arr_min, trans, dep_min_start):
                    continue
                visited[u].append((arr_min, trans, dep_min_start))

                if u == koniec_id:
                    znalezione_polaczenia.append((arr_min, trans, dep_min_start, path))
                    continue

                for edge in graph[u]:
                    is_transfer = (edge['route_id'] != curr_route)
                    next_trans = trans + (1 if is_transfer else 0)

                    if next_trans > 2:
                        continue

                    if is_transfer:
                        wait_time = edge['dep_min'] - arr_min
                        if not (5 <= wait_time <= 240):
                            continue
                    else:
                        if edge['dep_min'] < arr_min:
                            continue

                    new_arr = edge['arr_min']
                    
                    if not is_dominated(edge['to'], new_arr, next_trans, dep_min_start):
                        new_path = list(path)
                        
                        if not is_transfer:
                            last_leg = new_path[-1].copy()
                            last_leg['end_station'] = edge['to']
                            last_leg['arr_min'] = edge['arr_min']
                            last_leg['arr_str'] = edge['arr_str']
                            new_path[-1] = last_leg
                        else:
                            new_path.append({
                                'route_id': edge['route_id'], 'start_station': u, 'end_station': edge['to'],
                                'dep_min': edge['dep_min'], 'arr_min': edge['arr_min'],
                                'dep_str': edge['dep_str'], 'arr_str': edge['arr_str']
                            })

                        heapq.heappush(pq, (new_arr, next_trans, dep_min_start, edge['to'], edge['route_id'], next(tie_breaker), new_path))
                        
            return mapuj_na_szablony(znalezione_polaczenia)
            
        def mapuj_na_szablony(surowe_trasy):
            gotowe = []
            for arr_min, trans, dep_min, path in surowe_trasy:
                total_minutes = arr_min - dep_min
                diff = (dep_min - m_input) % 1440
                dep_date = base_date + datetime.timedelta(days=(dep_min // 1440))
                
                if trans == 0:
                    l = path[0]
                    gotowe.append({
                        'type': 'direct', 'id_trasy': l['route_id'], 'odjazd': l['dep_str'], 'przyjazd': l['arr_str'],
                        'czas_trwania': format_minutes(total_minutes), 'total_minutes': total_minutes,
                        'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'pociag': pociag_cache.get(l['route_id'], {'kategoria': 'REG', 'nazwa': 'Pociąg'}),
                        'route_name': trasy_map[l['route_id']]['nazwa']
                    })
                elif trans == 1:
                    l1, l2 = path[0], path[1]
                    gotowe.append({
                        'type': 'transfer', 'id_trasy_1': l1['route_id'], 'id_trasy_2': l2['route_id'],
                        'sid': start_id, 'tid': l1['end_station'], 'kid': koniec_id,
                        'odjazd': l1['dep_str'], 'przyjazd': l2['arr_str'],
                        'czas_trwania': format_minutes(total_minutes), 'total_minutes': total_minutes,
                        'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'stacja_przesiadki': stacje_cache.get(l1['end_station'], "Nieznana"),
                        'przyjazd_przesiadka': l1['arr_str'], 'odjazd_przesiadka': l2['dep_str'],
                        'pociag1': pociag_cache.get(l1['route_id'], {}), 'pociag2': pociag_cache.get(l2['route_id'], {})
                    })
                elif trans == 2:
                    l1, l2, l3 = path[0], path[1], path[2]
                    gotowe.append({
                        'type': 'transfer2', 
                        'id_trasy_1': l1['route_id'], 'id_trasy_2': l2['route_id'], 'id_trasy_3': l3['route_id'],
                        'sid': start_id, 'tid1': l1['end_station'], 'tid2': l2['end_station'], 'kid': koniec_id,
                        'odjazd': l1['dep_str'], 'przyjazd': l3['arr_str'],
                        'czas_trwania': format_minutes(total_minutes), 'total_minutes': total_minutes,
                        'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'stacja_przesiadki1': stacje_cache.get(l1['end_station'], "Nieznana"),
                        'przyjazd_przesiadka1': l1['arr_str'], 'odjazd_przesiadka1': l2['dep_str'],
                        'stacja_przesiadki2': stacje_cache.get(l2['end_station'], "Nieznana"),
                        'przyjazd_przesiadka2': l2['arr_str'], 'odjazd_przesiadka2': l3['dep_str'],
                        'pociag1': pociag_cache.get(l1['route_id'], {}), 'pociag2': pociag_cache.get(l2['route_id'], {}),
                        'pociag3': pociag_cache.get(l3['route_id'], {})
                    })
            return gotowe

        all_options = rozwiazanie_optymalne_dijkstra()

        type_priority = {'direct': 0, 'transfer': 1, 'transfer2': 2}
        all_options.sort(key=lambda x: (type_priority.get(x['type'], 3), x['sort_diff'], x['total_minutes']))

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
                        'lat': stacja.szerokosc_geograficzna, 'lon': stacja.dlugosc_geograficzna
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

    @app.route('/szczegoly/transfer2/<int:id1>/<int:id2>/<int:id3>', methods=['GET', 'POST'])
    def szczegoly_transfer2(id1, id2, id3):
        trasa1 = db.session.get(Trasa, id1)
        trasa2 = db.session.get(Trasa, id2)
        trasa3 = db.session.get(Trasa, id3)
        if not trasa1 or not trasa2 or not trasa3:
            abort(404)
        
        data_podrozy = request.args.get('data') or request.form.get('data')
        
        sid = request.args.get('sid', default=0, type=int) or request.form.get('sid', default=0, type=int)
        tid1 = request.args.get('tid1', default=0, type=int) or request.form.get('tid1', default=0, type=int)
        tid2 = request.args.get('tid2', default=0, type=int) or request.form.get('tid2', default=0, type=int)
        kid = request.args.get('kid', default=0, type=int) or request.form.get('kid', default=0, type=int)

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
                        'lat': stacja.szerokosc_geograficzna, 'lon': stacja.dlugosc_geograficzna
                    })
                if stacja.id_stacji == end_stacja_id and recording:
                    break
            return res

        h1 = get_sliced_stops(id1, sid, tid1)
        h2 = get_sliced_stops(id2, tid1, tid2)
        h3 = get_sliced_stops(id3, tid2, kid)

        try:
            b_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date() if data_podrozy else None
        except (ValueError, TypeError):
            b_date = None

        wagony_struktura1 = get_wagony_dla_trasy(id1, b_date)
        wagony_struktura2 = get_wagony_dla_trasy(id2, b_date)
        wagony_struktura3 = get_wagony_dla_trasy(id3, b_date)

        return render_template('szczegoly_2_przesiadki.html', 
                            trasa1=trasa1, pociag1=get_pociag_info(id1, b_date), h1=h1, wagony_json1=wagony_struktura1,
                            trasa2=trasa2, pociag2=get_pociag_info(id2, b_date), h2=h2, wagony_json2=wagony_struktura2,
                            trasa3=trasa3, pociag3=get_pociag_info(id3, b_date), h3=h3, wagony_json3=wagony_struktura3,
                            data=data_podrozy)