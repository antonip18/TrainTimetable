"""
Trasy (endpointy) aplikacji webowej.

Ten plik zawiera:
- wyszukiwarkę połączeń kolejowych (algorytm Dijkstry),
- strony ze szczegółami tras,
- panel administratora do dodawania i usuwania tras.
"""

from flask import render_template, request, abort, jsonify, redirect, flash
from models import db, Stacja, Postoj, Trasa, Pociag, InfrastrukturaStacji, Przejazd, TrasaCykliczna
from models import Sklad, Wagon, TypWagonu, ElementStaly, Miejsce
from sqlalchemy import or_, text
import datetime
import heapq
from collections import defaultdict
import itertools


def time_to_minutes(t):
    """Zamienia obiekt datetime.time na liczbę minut od północy (np. 08:30 -> 510)."""
    if t is None:
        return 0
    return t.hour * 60 + t.minute


def parse_time_string(czas_str):
    """Zamienia tekst z formularza HTML (np. '08:30') na obiekt datetime.time."""
    if not czas_str:
        return None
    try:
        godzina, minuta = map(int, czas_str.split(':'))
        return datetime.time(godzina, minuta)
    except (ValueError, AttributeError):
        return None


def przygotuj_godziny_postojow(godz_przyjazd, godz_odjazd):
    """
    Dopasowuje godziny do reguł bazy danych (trigger trg_waliduj_postoj):
    - pierwsza stacja: tylko odjazd (bez przyjazdu)
    - ostatnia stacja: tylko przyjazd (bez odjazdu)
    """
    przyjazd = list(godz_przyjazd)
    odjazd = list(godz_odjazd)
    if przyjazd:
        przyjazd[0] = ''
    if odjazd:
        odjazd[-1] = ''
    return przyjazd, odjazd


def dopasuj_listy_postojow(infra_ids, godz_przyjazd, godz_odjazd):
    """
    Formularz HTML może wysłać krótsze listy godzin niż listę postojów.
    Uzupełniamy brakujące wartości pustym stringiem, żeby zip() działał poprawnie.
    """
    n = len(infra_ids)
    przyjazd = list(godz_przyjazd) + [''] * (n - len(godz_przyjazd))
    odjazd = list(godz_odjazd) + [''] * (n - len(godz_odjazd))
    return przyjazd[:n], odjazd[:n]


def waliduj_dane_nowej_trasy():
    """Sprawdza kompletność formularza admina przed zapisem do bazy."""
    bledy = []

    if not request.form.get('nazwa_trasy_tam') or not request.form.get('nazwa_trasy_powrot'):
        bledy.append('Podaj nazwy tras w obu kierunkach.')
    if not request.form.get('nazwa_pociagu'):
        bledy.append('Podaj nazwę pociągu.')
    if not request.form.get('kategoria_pociagu'):
        bledy.append('Wybierz kategorię pociągu.')

    wagony = [w for w in request.form.getlist('id_typu_wagonu[]') if w]
    if not wagony:
        bledy.append('Dodaj co najmniej jeden wagon do składu.')

    for kierunek, etykieta in [('tam', 'TAM'), ('powrot', 'POWRÓT')]:
        infra = request.form.getlist(f'id_infra_{kierunek}[]')
        if len(infra) < 2:
            bledy.append(f'Kierunek {etykieta}: dodaj co najmniej 2 stacje (start i koniec).')
        for i, inf in enumerate(infra):
            if not inf:
                bledy.append(f'Kierunek {etykieta}: wybierz peron/tor dla postoju nr {i + 1}.')

        typ = request.form.get(f'typ_kursowania_{kierunek}')
        if typ == 'cykliczna':
            if not request.form.getlist(f'dni_{kierunek}[]'):
                bledy.append(f'Kierunek {etykieta}: zaznacz co najmniej jeden dzień tygodnia.')
        elif typ == 'daty':
            daty = [d for d in request.form.getlist(f'konkretne_daty_{kierunek}[]') if d]
            if not daty:
                bledy.append(f'Kierunek {etykieta}: dodaj co najmniej jedną datę kursowania.')

    return bledy


def czytelny_komunikat_bledu(wyjatek):
    """Wyciąga prosty komunikat z błędu PostgreSQL (łatwiejszy do zrozumienia)."""
    import re
    msg = str(wyjatek)
    dopasowanie = re.search(r'BŁĄD:\s*(.+?)(?:\n|CONTEXT:)', msg)
    if dopasowanie:
        return dopasowanie.group(1).strip()
    if 'unique' in msg.lower() or 'UNIQUE' in msg:
        return 'Pociąg o takiej nazwie już istnieje w bazie – wybierz inny numer.'
    return msg.split('\n')[0][:200]


def zapisz_postoje_dla_trasy(id_trasy, kierunek):
    """Zapisuje listę postojów dla jednej trasy (kierunek tam lub powrót)."""
    id_infra = request.form.getlist(f'id_infra_{kierunek}[]')
    godz_przyjazd, godz_odjazd = dopasuj_listy_postojow(
        id_infra,
        request.form.getlist(f'godz_przyjazd_{kierunek}[]'),
        request.form.getlist(f'godz_odjazd_{kierunek}[]'),
    )
    godz_przyjazd, godz_odjazd = przygotuj_godziny_postojow(godz_przyjazd, godz_odjazd)

    for idx, (infra_id, g_prz, g_odj) in enumerate(zip(id_infra, godz_przyjazd, godz_odjazd)):
        db.session.add(Postoj(
            id_trasy=id_trasy,
            numer_postoju=idx + 1,
            id_peronu_toru=int(infra_id),
            godzina_przyjazdu=parse_time_string(g_prz),
            godzina_odjazdu=parse_time_string(g_odj),
        ))


def zapisz_sklad_dla_pociagu(id_pociagu, id_typu_wagonu_list):
    """Tworzy wagony i przypisuje je do pociągu (osobny wagon na każdy wpis w składzie)."""
    for idx, id_typu in enumerate(id_typu_wagonu_list):
        if not id_typu:
            continue
        nowy_wagon = Wagon(id_typu=int(id_typu))
        db.session.add(nowy_wagon)
        db.session.flush()
        db.session.add(Sklad(
            id_pociagu=id_pociagu,
            id_wagonu=nowy_wagon.id_wagonu,
            numer_kolejnosci=idx + 1,
        ))


def pobierz_wagony_do_listy_admin():
    """
    Pobiera wagony do wyświetlenia w panelu admina.

    Dla każdego wagonu sprawdzamy też, czy jest w składzie pociągu (tabela sklady).
    Wagon w użyciu nie może zostać usunięty – naruszyłoby to spójność bazy.
    """
    wiersze = db.session.query(Wagon, TypWagonu).\
        join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
        order_by(Wagon.id_wagonu.desc()).all()

    lista = []
    for wagon, typ in wiersze:
        # Szukamy, czy wagon jest przypisany do jakiegoś pociągu
        sklady = db.session.query(Sklad, Pociag).\
            join(Pociag, Sklad.id_pociagu == Pociag.id_pociagu).\
            filter(Sklad.id_wagonu == wagon.id_wagonu).all()

        nazwy_pociagow = [pociag.nazwa for _, pociag in sklady]
        lista.append({
            'id_wagonu': wagon.id_wagonu,
            'nazwa_typu': typ.nazwa,
            'w_uzyciu': len(sklady) > 0,
            'pociagi_opis': ', '.join(nazwy_pociagow),
        })
    return lista


def format_minutes(m):
    hours = m // 60
    minutes = m % 60
    if hours > 0:
        return f"{hours}h {minutes}m"
    return f"{minutes}m"

def get_pociag_info(id_trasy, data_podrozy_obj=None):
    """Pobiera kategorię i nazwę pociągu przypisanego do trasy (dla danej daty lub dowolnej)."""
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
    """Buduje listę wagonów ze schematem miejsc – używane na stronie szczegółów połączenia."""
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
    """Rejestruje trasy widoczne dla użytkownika końcowego (wyszukiwarka + szczegóły)."""

    @app.route('/szczegoly/direct/<int:id_trasy>', methods=['GET', 'POST'])
    def szczegoly_direct(id_trasy):
        """Strona szczegółów połączenia bezpośredniego (bez przesiadek)."""
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
        """Strona główna z formularzem wyszukiwania połączeń."""
        wszystkie_stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        domyslna_data = datetime.date.today().strftime('%Y-%m-%d')
        return render_template('uzytkownik_index.html', stacje=wszystkie_stacje, domyslna_data=domyslna_data)

    @app.route('/szukaj', methods=['POST', 'GET'])
    def szukaj():
        """
        Wyszukuje połączenia między dwiema stacjami.
        Używa algorytmu Dijkstry z limitem maks. 2 przesiadek.
        """
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
            """
            Szuka najlepszych połączeń grafem stacji.
            Każda krawędź grafu to odcinek między dwoma kolejnymi postojami tej samej trasy.
            """
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
            """Formatuje wyniki algorytmu do struktury zrozumiałej dla szablonu HTML."""
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
        """Strona szczegółów połączenia z jedną przesiadką."""
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
        """Strona szczegółów połączenia z dwiema przesiadkami."""
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
    
def register_admin(app):
    """Rejestruje trasy panelu administratora (dodawanie, edycja, usuwanie tras)."""

    @app.route('/admin')
    def admin_index():
        """Strona główna panelu administratora."""
        return render_template('admin_index.html')

    @app.route('/admin/trasa/nowa', methods=['GET', 'POST'])
    def admin_nowa_trasa():
        """Formularz tworzenia nowej trasy dwukierunkowej wraz z pociągiem i składem."""

        def zapisz_harmonogram_kierunkowy(id_trasy, id_pociagu, typ_kursowania, kierunek):
            """Zapisuje harmonogram: albo cykliczny (dni tygodnia), albo jednorazowy (daty)."""
            if typ_kursowania == 'cykliczna':
                dni = request.form.getlist(f'dni_{kierunek}[]')
                for dzien in dni:
                    cykl = TrasaCykliczna(id_trasy=id_trasy, dzien_kursowania=dzien)
                    db.session.add(cykl)
            else:
                daty = request.form.getlist(f'konkretne_daty_{kierunek}[]')
                for d_str in daty:
                    if d_str:
                        data_obj = datetime.datetime.strptime(d_str, '%Y-%m-%d').date()
                        przejazd = Przejazd(id_trasy=id_trasy, id_pociagu=id_pociagu, data_przejazdu=data_obj)
                        db.session.add(przejazd)

        if request.method == 'POST':
            # --- Krok 1: walidacja danych z formularza ---
            bledy_walidacji = waliduj_dane_nowej_trasy()
            if bledy_walidacji:
                for blad in bledy_walidacji:
                    flash(blad, 'danger')
                stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
                typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
                return render_template('admin_nowa_trasa.html', stacje=stacje, typy_wagonow=typy_wagonow)

            try:
                # --- Krok 2: odczyt podstawowych pól ---
                nazwa_wspolna = request.form.get('nazwa_pociagu')
                num_tam = request.form.get('numer_pociagu_tam')
                num_powrot = request.form.get('numer_pociagu_powrot')
                kategoria_pociagu = request.form.get('kategoria_pociagu')
                id_typu_wagonu_list = request.form.getlist('id_typu_wagonu[]')

                # --- Krok 3: pociągi (tam i powrót to dwa osobne rekordy) ---
                pociag_tam = Pociag(nazwa=f"{nazwa_wspolna} {num_tam}", kategoria=kategoria_pociagu)
                pociag_powrot = Pociag(nazwa=f"{nazwa_wspolna} {num_powrot}", kategoria=kategoria_pociagu)
                db.session.add(pociag_tam)
                db.session.add(pociag_powrot)
                db.session.flush()  # pobieramy id nadane przez trigger w bazie

                # --- Krok 4: skład wagonów (osobne wagony dla każdego pociągu) ---
                zapisz_sklad_dla_pociagu(pociag_tam.id_pociagu, id_typu_wagonu_list)
                zapisz_sklad_dla_pociagu(pociag_powrot.id_pociagu, id_typu_wagonu_list)

                # --- Krok 5: trasa TAM + postoje + harmonogram ---
                nowa_trasa_tam = Trasa(nazwa_trasy=request.form.get('nazwa_trasy_tam'))
                db.session.add(nowa_trasa_tam)
                db.session.flush()
                zapisz_postoje_dla_trasy(nowa_trasa_tam.id_trasy, 'tam')
                zapisz_harmonogram_kierunkowy(
                    nowa_trasa_tam.id_trasy, pociag_tam.id_pociagu,
                    request.form.get('typ_kursowania_tam'), 'tam'
                )

                # --- Krok 6: trasa POWRÓT + postoje + harmonogram ---
                nowa_trasa_powrot = Trasa(nazwa_trasy=request.form.get('nazwa_trasy_powrot'))
                db.session.add(nowa_trasa_powrot)
                db.session.flush()
                zapisz_postoje_dla_trasy(nowa_trasa_powrot.id_trasy, 'powrot')
                zapisz_harmonogram_kierunkowy(
                    nowa_trasa_powrot.id_trasy, pociag_powrot.id_pociagu,
                    request.form.get('typ_kursowania_powrot'), 'powrot'
                )

                db.session.commit()
                flash("Obustronne trasy, pociągi oraz wspólny skład zostały pomyślnie zapisane!", "success")
                return redirect('/admin')

            except Exception as e:
                db.session.rollback()
                flash(f"Błąd zapisu: {czytelny_komunikat_bledu(e)}", "danger")
                
                stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
                typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
                
                return render_template('admin_nowa_trasa.html', stacje=stacje, typy_wagonow=typy_wagonow)

        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
        return render_template('admin_nowa_trasa.html', stacje=stacje, typy_wagonow=typy_wagonow)
    
    @app.route('/admin/trasa/od_do', methods=['GET'])
    def admin_trasa_od_do():
        """Wyszukiwarka tras do edycji lub usunięcia."""
        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        return render_template('admin_trasy_lista.html', stacje=stacje)

    @app.route('/admin/wagony', methods=['GET', 'POST'])
    def admin_wagony():
        """
        Panel dodawania i usuwania wagonów.

        Wagon (tabela wagony) = konkretny pojazd utworzony z szablonu (typy_wagonow).
        Usunąć można tylko wagon, który nie jest w składzie żadnego pociągu.
        """
        if request.method == 'POST':
            akcja = request.form.get('akcja')

            # --- DODAWANIE ---
            if akcja == 'dodaj':
                id_typu = request.form.get('id_typu', type=int)
                if not id_typu:
                    flash('Wybierz typ wagonu z listy.', 'danger')
                else:
                    try:
                        typ = db.session.get(TypWagonu, id_typu)
                        if not typ:
                            flash('Wybrany typ wagonu nie istnieje.', 'danger')
                        else:
                            nowy_wagon = Wagon(id_typu=id_typu)
                            db.session.add(nowy_wagon)
                            db.session.commit()
                            flash(
                                f'Utworzono wagon #{nowy_wagon.id_wagonu} (typ: {typ.nazwa}).',
                                'success'
                            )
                    except Exception as e:
                        db.session.rollback()
                        flash(f'Błąd: {czytelny_komunikat_bledu(e)}', 'danger')

            # --- USUWANIE ---
            elif akcja == 'usun':
                id_wagonu = request.form.get('id_wagonu', type=int)
                try:
                    wagon = db.session.get(Wagon, id_wagonu)
                    if not wagon:
                        flash('Nie znaleziono takiego wagonu.', 'danger')
                    elif db.session.query(Sklad).filter_by(id_wagonu=id_wagonu).first():
                        flash(
                            f'Wagon #{id_wagonu} jest w składzie pociągu – nie można go usunąć.',
                            'danger'
                        )
                    else:
                        db.session.delete(wagon)
                        db.session.commit()
                        flash(f'Wagon #{id_wagonu} został usunięty.', 'success')
                except Exception as e:
                    db.session.rollback()
                    flash(f'Błąd: {czytelny_komunikat_bledu(e)}', 'danger')

            return redirect('/admin/wagony')

        # GET – pokaż formularz i listę wagonów
        typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
        wagony = pobierz_wagony_do_listy_admin()
        return render_template(
            'admin_wagony.html',
            typy_wagonow=typy_wagonow,
            wagony=wagony,
        )

    @app.route('/api/infrastruktura/<int:id_stacji>')
    def api_infrastruktura(id_stacji):
        """
        API zwracające perony i tory dla wybranej stacji.
        Używane przez JavaScript w formularzu dodawania nowej trasy.
        """
        infrastruktura = db.session.query(InfrastrukturaStacji).filter_by(id_stacji=id_stacji).all()
        return jsonify([
            {
                'id': element.id,
                'peron': element.numer_peronu,
                'tor': element.numer_toru
            }
            for element in infrastruktura
        ])
    
    @app.route('/api/trasy/od_do', methods=['GET'])
    def api_trasy_od_do():
        """API zwracające trasy przejeżdżające między dwiema stacjami."""
        start_id = request.args.get('start', type=int)
        end_id = request.args.get('end', type=int)

        if not start_id or not end_id:
            return jsonify([])

        query = text("""
            SELECT DISTINCT t.id_trasy, t.nazwa_trasy, prz.id_pociagu, poc.nazwa as nazwa_pociagu
            FROM trasy t
            JOIN postoje p1 ON t.id_trasy = p1.id_trasy
            JOIN postoje p2 ON t.id_trasy = p2.id_trasy
            JOIN infrastruktura_stacji i1 ON p1.id_peronu_toru = i1.id
            JOIN infrastruktura_stacji i2 ON p2.id_peronu_toru = i2.id
            LEFT JOIN przejazdy prz ON t.id_trasy = prz.id_trasy
            LEFT JOIN pociagi poc ON prz.id_pociagu = poc.id_pociagu
            WHERE i1.id_stacji = :start_id 
              AND i2.id_stacji = :end_id
              AND p1.numer_postoju < p2.numer_postoju
        """)
        
        wyniki = db.session.execute(query, {'start_id': start_id, 'end_id': end_id}).fetchall()
        
        trasy_lista = []
        for r in wyniki:
            nazwa_handlowa = r.nazwa_pociagu.rsplit(' ', 1)[0] if r.nazwa_pociagu else ""
            
            trasy_lista.append({
                'id_trasy': r.id_trasy,
                'nazwa_trasy': r.nazwa_trasy,
                'id_pociagu': r.id_pociagu,
                'nazwa_pociagu': r.nazwa_pociagu,
                'nazwa_handlowa': nazwa_handlowa
            })

        return jsonify(trasy_lista)
    

    @app.route('/admin/trasa/zarzadzaj/<int:id_trasy>', methods=['GET'])
    def admin_zarzadzaj_trasa(id_trasy):
        trasa_tam = db.session.get(Trasa, id_trasy)
        if not trasa_tam:
            flash("Nie znaleziono takiej trasy.", "danger")
            return redirect('/admin/trasa/od_do')

        przejazd = db.session.query(Przejazd).filter_by(id_trasy=id_trasy).first()
        pociag_tam = db.session.get(Pociag, przejazd.id_pociagu) if przejazd else None

        cykle_tam = db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy).all()
        przejazdy_tam = db.session.query(Przejazd).filter_by(id_trasy=id_trasy).order_by(Przejazd.data_przejazdu).all()

        return render_template('admin_zarzadzaj_trasa.html', 
                               trasa_tam=trasa_tam, pociag_tam=pociag_tam, cykle_tam=cykle_tam, przejazdy_tam=przejazdy_tam)
    
    @app.route('/admin/trasa/usun_calkowicie', methods=['POST'])
    def admin_usun_calkowicie():
        id_trasy_tam = request.form.get('id_trasy_tam', type=int)
        id_trasy_powrot = request.form.get('id_trasy_powrot', type=int)

        try:
            tras_ids = [id_trasy_tam]
            if id_trasy_powrot:
                tras_ids.append(id_trasy_powrot)

            for tid in tras_ids:
                if tid:
                    db.session.query(Postoj).filter_by(id_trasy=tid).delete()
                    db.session.query(TrasaCykliczna).filter_by(id_trasy=tid).delete()
                    db.session.query(Przejazd).filter_by(id_trasy=tid).delete()
                    db.session.query(Trasa).filter_by(id_trasy=tid).delete()
            
            db.session.commit()
            flash("Wybrane trasy (i powiązane z nimi harmonogramy) zostały usunięte. Wagony i Pociągi pozostały w bazie.", "success")
        except Exception as e:
            db.session.rollback()
            flash(f"Wystąpił błąd podczas usuwania trasy: {str(e)}", "danger")

        return redirect('/admin/trasa/od_do')
    
    @app.route('/admin/trasa/usun_harmonogram', methods=['POST'])
    def admin_usun_harmonogram():
        try:
            if 'dzien_cyklu' in request.form:
                dzien = request.form.get('dzien_cyklu')
                id_trasy = request.form.get('id_trasy', type=int)
                db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy, dzien_kursowania=dzien).delete()
                msg = f"Usunięto cykliczny kurs: {dzien}."

            elif 'data_przejazdu' in request.form:
                data_str = request.form.get('data_przejazdu')
                id_trasy = request.form.get('id_trasy', type=int)
                id_pociagu = request.form.get('id_pociagu', type=int)
                data_obj = datetime.datetime.strptime(data_str, '%Y-%m-%d').date()
                db.session.query(Przejazd).filter_by(id_trasy=id_trasy, id_pociagu=id_pociagu, data_przejazdu=data_obj).delete()
                msg = f"Usunięto przejazd z dnia {data_str}."
            
            db.session.commit()
            flash(msg, "success")
            
            base_trasa = request.form.get('base_trasa', type=int)
            return redirect(f'/admin/trasa/zarzadzaj/{base_trasa}')
            
        except Exception as e:
            db.session.rollback()
            flash(f"Wystąpił błąd: {str(e)}", "danger")
            return redirect('/admin/trasa/od_do')