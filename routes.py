from flask import render_template, request, abort, jsonify, redirect, flash
from models import db, Stacja, Postoj, Trasa, Pociag, InfrastrukturaStacji, Przejazd, TrasaCykliczna
from models import Sklad, Wagon, TypWagonu, ElementStaly, Miejsce, SkladSegment
from sqlalchemy import or_, text, func
import datetime
import heapq
from collections import defaultdict
import itertools


def time_to_minutes(t):
    if t is None:
        return 0
    return t.hour * 60 + t.minute


def parse_time_string(czas_str):
    if not czas_str:
        return None
    try:
        godzina, minuta = map(int, czas_str.split(':'))
        return datetime.time(godzina, minuta)
    except (ValueError, AttributeError):
        return None


def przygotuj_godziny_postojow(godz_przyjazd, godz_odjazd):
    przyjazd = list(godz_przyjazd)
    odjazd = list(godz_odjazd)
    if przyjazd:
        przyjazd[0] = ''
    if odjazd:
        odjazd[-1] = ''
    return przyjazd, odjazd


def dopasuj_listy_postojow(n, godz_przyjazd, godz_odjazd):
    przyjazd = list(godz_przyjazd)
    if len(przyjazd) == n - 1:
        przyjazd.insert(0, '')
    elif len(przyjazd) < n:
        przyjazd += [''] * (n - len(przyjazd))
        
    odjazd = list(godz_odjazd)
    if len(odjazd) == n - 1:
        odjazd.append('')
    elif len(odjazd) < n:
        odjazd += [''] * (n - len(odjazd))
        
    return przyjazd[:n], odjazd[:n]


def zapisz_postoje_dla_trasy(id_trasy):
    id_infra = request.form.getlist('id_infra[]')
    n = len(id_infra)
    
    godz_przyjazd, godz_odjazd = dopasuj_listy_postojow(
        n,
        request.form.getlist('godz_przyjazd[]'),
        request.form.getlist('godz_odjazd[]'),
    )
    godz_przyjazd, godz_odjazd = przygotuj_godziny_postojow(godz_przyjazd, godz_odjazd)

    current_day_offset = 0
    prev_odj_time = None

    for idx, (infra_id, g_prz, g_odj) in enumerate(zip(id_infra, godz_przyjazd, godz_odjazd)):
        prz_time = parse_time_string(g_prz)
        odj_time = parse_time_string(g_odj)
        
        if idx > 0 and prz_time is not None and prev_odj_time is not None:
            if prz_time < prev_odj_time:
                current_day_offset += 1
                
        p_offset = current_day_offset
        
        if prz_time is not None and odj_time is not None:
            if odj_time < prz_time:
                current_day_offset += 1
                
        o_offset = current_day_offset
        
        if odj_time is not None:
            prev_odj_time = odj_time

        db.session.add(Postoj(
            id_trasy=id_trasy,
            numer_postoju=idx + 1,
            id_peronu_toru=int(infra_id),
            godzina_przyjazdu=prz_time,
            godzina_odjazdu=odj_time,
            dzien_przyjazdu_offset=p_offset,
            dzien_odjazdu_offset=o_offset
        ))


def waliduj_dane_nowej_trasy():
    bledy = []

    if not request.form.get('nazwa_trasy'):
        bledy.append('Podaj nazwę trasy.')
    nazwa_wspolna = (request.form.get('nazwa_pociagu') or '').strip()
    if not nazwa_wspolna:
        bledy.append('Podaj nazwę pociągu.')
    if not request.form.get('kategoria_pociagu'):
        bledy.append('Wybierz kategorię pociągu.')

    wagony = [w for w in request.form.getlist('id_typu_wagonu[]') if w]
    if not wagony:
        bledy.append('Dodaj co najmniej jeden wagon do składu.')

    infra = request.form.getlist('id_infra[]')
    n = len(infra)
    if n < 2:
        bledy.append('Dodaj co najmniej 2 stacje (start i koniec).')
    for i, inf in enumerate(infra):
        if not inf:
            bledy.append(f'Wybierz peron/tor dla postoju nr {i + 1}.')

    godz_przyjazd = request.form.getlist('godz_przyjazd[]')
    godz_odjazd = request.form.getlist('godz_odjazd[]')
    
    if n >= 2:
        przyjazd_dopasowany, odjazd_dopasowany = dopasuj_listy_postojow(n, godz_przyjazd, godz_odjazd)
        
        for i in range(n):
            if i > 0:
                if not przyjazd_dopasowany[i] or not przyjazd_dopasowany[i].strip():
                    bledy.append(f'Podaj godzinę przyjazdu dla stacji nr {i + 1}.')
            
            if i < n - 1:
                if not odjazd_dopasowany[i] or not odjazd_dopasowany[i].strip():
                    bledy.append(f'Podaj godzinę odjazdu dla stacji nr {i + 1}.')

    typ = request.form.get('typ_kursowania')
    if typ == 'cykliczna':
        if not request.form.getlist('dni[]'):
            bledy.append('Zaznacz co najmniej jeden dzień tygodnia.')
    elif typ == 'daty':
        daty = [d for d in request.form.getlist('konkretne_daty[]') if d]
        if not daty:
            bledy.append('Dodaj co najmniej jedną datę kursowania.')

    num_pociagu = (request.form.get('numer_pociagu') or '').strip()
    kandydaci = []
    if nazwa_wspolna:
        pelna_nazwa = f"{nazwa_wspolna} {num_pociagu}".strip() if num_pociagu else nazwa_wspolna
        kandydaci.append(pelna_nazwa)

    if kandydaci:
        with db.session.no_autoflush:
            istniejace = {
                r[0]
                for r in db.session.query(Pociag.nazwa).filter(Pociag.nazwa.in_(kandydaci)).all()
            }
        if istniejace:
            bledy.append(
                'Pociąg o takiej nazwie już istnieje w bazie – wybierz inny numer.'
            )

    return bledy


def waliduj_dane_edycji_trasy():
    bledy = []

    if not (request.form.get('nazwa_trasy') or '').strip():
        bledy.append('Podaj nazwę trasy.')
    if not (request.form.get('nazwa_pociagu') or '').strip():
        bledy.append('Podaj nazwę pociągu.')
    if not request.form.get('kategoria_pociagu'):
        bledy.append('Wybierz kategorię pociągu.')

    infra = request.form.getlist('id_infra[]')
    if len(infra) < 2:
        bledy.append('Trasa musi mieć co najmniej 2 postoje.')
    for i, inf in enumerate(infra):
        if not inf:
            bledy.append(f'Wybierz peron/tor dla postoju nr {i + 1}.')

    n = len(infra)
    godz_przyjazd = request.form.getlist('godz_przyjazd[]')
    godz_odjazd = request.form.getlist('godz_odjazd[]')
    if n >= 2:
        przyjazd_dopasowany, odjazd_dopasowany = dopasuj_listy_postojow(n, godz_przyjazd, godz_odjazd)
        for i in range(n):
            if i > 0 and (not przyjazd_dopasowany[i] or not przyjazd_dopasowany[i].strip()):
                bledy.append(f'Podaj godzinę przyjazdu dla stacji nr {i + 1}.')
            if i < n - 1 and (not odjazd_dopasowany[i] or not odjazd_dopasowany[i].strip()):
                bledy.append(f'Podaj godzinę odjazdu dla stacji nr {i + 1}.')

    wagony = [w for w in request.form.getlist('id_typu_wagonu[]') if w]
    if not wagony:
        bledy.append('Dodaj co najmniej jeden wagon do składu.')

    typ = request.form.get('typ_kursowania')
    if typ == 'cykliczna':
        if not request.form.getlist('dni[]'):
            bledy.append('Zaznacz co najmniej jeden dzień tygodnia.')
    elif typ == 'daty':
        daty = [d for d in request.form.getlist('konkretne_daty[]') if d]
        if not daty:
            bledy.append('Dodaj co najmniej jedną datę kursowania.')
    else:
        bledy.append('Wybierz rodzaj kursowania.')

    return bledy


def czytelny_komunikat_bledu(wyjatek):
    import re
    msg = str(wyjatek)
    msg_db = str(getattr(wyjatek, 'orig', wyjatek))
    zrodlo = msg_db if msg_db and msg_db != msg else msg

    dopasowanie = re.search(r'(?:BŁĄD|ERROR):\s*(.+?)(?:\n|CONTEXT:)', zrodlo, re.IGNORECASE)
    if dopasowanie:
        tekst_bledu = dopasowanie.group(1).strip()
        if 'unique' in tekst_bledu.lower() and not ('pociag' in tekst_bledu.lower() or 'pociagi' in tekst_bledu.lower()):
            return f"Błąd unikalności danych: {tekst_bledu}"
        return tekst_bledu

    if 'query-invoked autoflush' in msg.lower():
        return msg_db.split('\n')[0][:200]

    if 'unique' in zrodlo.lower():
        if 'pociag' in zrodlo.lower() and 'nazwa' in zrodlo.lower():
            return 'Pociąg o takiej nazwie już istnieje w bazie – wybierz inny numer.'
        return f'Naruszenie unikalności: {zrodlo.split("\n")[0][:200]}'

    return zrodlo.split('\n')[0][:200]


def zapisz_sklad_dla_pociagu(id_pociagu, id_typu_wagonu_list):
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


def zapisz_segmenty_skladu_dla_trasy(id_trasy, id_pociagu):
    sklady = db.session.query(Sklad).\
        filter_by(id_pociagu=id_pociagu).\
        order_by(Sklad.numer_kolejnosci).all()
    for sklad in sklady:
        db.session.add(SkladSegment(
            id_trasy=id_trasy,
            id_wagonu=sklad.id_wagonu,
            od_postoju=1,
            do_postoju=None,
            numer_kolejnosci=sklad.numer_kolejnosci,
        ))


def pobierz_wagony_do_listy_admin():
    wiersze = db.session.query(Wagon, TypWagonu).\
        join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
        order_by(Wagon.id_wagonu.desc()).all()

    sklady_rows = db.session.query(Sklad.id_wagonu, Pociag.nazwa).\
        join(Pociag, Sklad.id_pociagu == Pociag.id_pociagu).all()
    nazwy_pociagow_po_wagonie = {}
    for id_wagonu, nazwa_pociagu in sklady_rows:
        nazwy_pociagow_po_wagonie.setdefault(id_wagonu, []).append(nazwa_pociagu)

    segmenty_rows = db.session.query(
        SkladSegment.id_wagonu,
        func.count(func.distinct(SkladSegment.id_trasy))
    ).group_by(SkladSegment.id_wagonu).all()
    segmenty_count_po_wagonie = {id_wagonu: liczba for id_wagonu, liczba in segmenty_rows}

    lista = []
    for wagon, typ in wiersze:
        nazwy_pociagow = nazwy_pociagow_po_wagonie.get(wagon.id_wagonu, [])
        liczba_segmentow = segmenty_count_po_wagonie.get(wagon.id_wagonu, 0)
        w_uzyciu = len(nazwy_pociagow) > 0 or liczba_segmentow > 0

        lista.append({
            'id_wagonu': wagon.id_wagonu,
            'nazwa_typu': typ.nazwa,
            'w_uzyciu': w_uzyciu,
            'pociagi_opis': ', '.join(nazwy_pociagow) if nazwy_pociagow else (
                f'w segmentach tras ({liczba_segmentow})' if liczba_segmentow else ''
            ),
        })
    return lista


def przywroc_wagony_po_zmianie_trasy(id_trasy):
    """Wywołuje trigger DB przywracający przepięte wagony do macierzystego pociągu."""
    db.session.execute(
        text("SELECT przywroc_wagony_po_zmianie_trasy(:id_trasy)"),
        {'id_trasy': id_trasy},
    )


def pobierz_postoje_ze_zmiana_skladu(id_trasy):
    """Zwraca zbiór numerów postojów, na których nastąpiła zmiana składu."""
    rows = db.session.execute(text("""
        SELECT numer_postoju FROM zmiany_skladu WHERE id_trasy = :id_trasy
        UNION
        SELECT numer_postoju FROM zmiany_skladu WHERE id_trasy_docelowej = :id_trasy
    """), {'id_trasy': id_trasy}).fetchall()
    return {r[0] for r in rows}


def format_minutes(m):
    hours = m // 60
    minutes = m % 60
    if hours > 0:
        return f"{hours}h {minutes}m"
    return f"{minutes}m"


def _id_pociagu_dla_trasy(id_trasy, data_podrozy_obj=None):
    trasa = db.session.get(Trasa, id_trasy)
    if trasa and trasa.id_pociagu:
        return trasa.id_pociagu
    q = db.session.query(Przejazd.id_pociagu).filter(Przejazd.id_trasy == id_trasy)
    if data_podrozy_obj:
        q = q.filter(Przejazd.data_przejazdu == data_podrozy_obj)
    row = q.first()
    if row:
        return row[0]
    row = db.session.query(Przejazd.id_pociagu).filter(Przejazd.id_trasy == id_trasy).first()
    return row[0] if row else None


def get_pociag_info(id_trasy, data_podrozy_obj=None):
    id_pociagu = _id_pociagu_dla_trasy(id_trasy, data_podrozy_obj)
    if id_pociagu:
        p = db.session.get(Pociag, id_pociagu)
        if p:
            return {'kategoria': p.kategoria, 'nazwa': p.nazwa}
    return {'kategoria': 'REG', 'nazwa': f'Pociąg Trasa {id_trasy}'}


def _numer_postoju_dla_stacji(id_trasy, id_stacji, prefer_max=False):
    q = db.session.query(Postoj.numer_postoju).\
        join(InfrastrukturaStacji, Postoj.id_peronu_toru == InfrastrukturaStacji.id).\
        filter(Postoj.id_trasy == id_trasy, InfrastrukturaStacji.id_stacji == id_stacji).\
        order_by(Postoj.numer_postoju.desc() if prefer_max else Postoj.numer_postoju.asc())
    row = q.first()
    return row[0] if row else None


def get_wagony_dla_trasy(id_trasy, data_podrozy_obj=None, od_postoju=None, do_postoju=None):
    id_pociagu = _id_pociagu_dla_trasy(id_trasy, data_podrozy_obj)
    if not id_pociagu:
        return []

    max_p = db.session.query(func.max(Postoj.numer_postoju)).filter(Postoj.id_trasy == id_trasy).scalar() or 1
    if od_postoju is None:
        od_postoju = 1
    if do_postoju is None:
        do_postoju = max_p

    segmenty = db.session.query(SkladSegment, Wagon, TypWagonu).\
        join(Wagon, SkladSegment.id_wagonu == Wagon.id_wagonu).\
        join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
        filter(SkladSegment.id_trasy == id_trasy).\
        order_by(SkladSegment.numer_kolejnosci).all()

    if not segmenty:
        sklady_fallback = db.session.query(Sklad, Wagon, TypWagonu).\
            join(Wagon, Sklad.id_wagonu == Wagon.id_wagonu).\
            join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
            filter(Sklad.id_pociagu == id_pociagu).\
            order_by(Sklad.numer_kolejnosci).all()
        
        class DummySeg:
            def __init__(self, od, do, num):
                self.od_postoju = od
                self.do_postoju = do
                self.numer_kolejnosci = num
        segmenty = [(DummySeg(1, None, s.numer_kolejnosci), w, t) for s, w, t in sklady_fallback]

    wyniki_wagonow = []
    for seg, wagon, typ in segmenty:
        seg_od = seg.od_postoju
        seg_do = seg.do_postoju if seg.do_postoju is not None else max_p

        if not (seg_od <= do_postoju and seg_do >= od_postoju):
            continue

        status = 'normalny'
        if seg_do < do_postoju:
            status = 'odczepiany'
        elif seg_od > od_postoju:
            status = 'doczepiany'

        nr_kolej = seg.numer_kolejnosci

        elementy_db = db.session.query(ElementStaly).filter_by(id_typu=typ.id_typu).all()
        elementy = [{
            'nazwa': el.nazwa_elementu,
            'r_od': el.rzad_od, 'r_do': el.rzad_do,
            'k_od': el.kolumna_od, 'k_do': el.kolumna_do,
        } for el in elementy_db]

        miejsca_db = db.session.query(Miejsce).filter_by(id_typu=typ.id_typu).all()
        miejsca = [{
            'numer': m.numer_miejsca,
            'rzad': m.rzad, 'kol': m.kolumna,
            'prm': m.czy_dla_niepelnosprawnych,
            'rower': m.czy_dla_rowerzystow,
            'stolik': m.czy_przy_stoliku,
            'przod': m.czy_przodem,
        } for m in miejsca_db]

        wyniki_wagonow.append({
            'id_wagonu': nr_kolej,
            'nazwa': typ.nazwa,
            'liczba_rzedow': typ.liczba_rzedow,
            'liczba_kolumn': typ.liczba_kolumn,
            'elementy': elementy,
            'miejsca': miejsca,
            'status': status,
        })
    return wyniki_wagonow


def get_sliced_stops(id_trasy, start_stacja_id, end_stacja_id):
    query = text("""
        SELECT 
            p.numer_postoju, p.godzina_przyjazdu, p.godzina_odjazdu,
            p.dzien_przyjazdu_offset, p.dzien_odjazdu_offset,
            i.numer_peronu, i.numer_toru, s.id_stacji, s.nazwa_stacji,
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
    rows = db.session.execute(query, {"id_trasy": id_trasy}).fetchall()
    
    res = []
    recording = False
    for r in rows:
        if r.id_stacji == start_stacja_id:
            recording = True
        if recording:
            czy_gmina_jest = r.nazwa_gminy is not None
            
            prz_offset = f" (+{r.dzien_przyjazdu_offset}d)" if getattr(r, 'dzien_przyjazdu_offset', 0) > 0 else ""
            odj_offset = f" (+{r.dzien_odjazdu_offset}d)" if getattr(r, 'dzien_odjazdu_offset', 0) > 0 else ""

            res.append({
                'numer': r.numer_postoju,
                'stacja': r.nazwa_stacji if r.nazwa_stacji else "Nieznana",
                'peron': r.numer_peronu if r.numer_peronu is not None else "-",
                'tor': r.numer_toru if r.numer_toru is not None else "-",
                'przyjazd': (r.godzina_przyjazdu.strftime('%H:%M') + prz_offset) if r.godzina_przyjazdu else 'Początek',
                'odjazd': (r.godzina_odjazdu.strftime('%H:%M') + odj_offset) if r.godzina_odjazdu else 'Koniec',
                'lat': r.szerokosc_geograficzna, 'lon': r.dlugosc_geograficzna,
                'gmina': r.nazwa_gminy if czy_gmina_jest else "NIEZNANE",
                'powiat': r.nazwa_powiatu if czy_gmina_jest else "NIEZNANE",
                'wojewodztwo': r.nazwa_wojewodztwa if czy_gmina_jest else "NIEZNANE"
            })
        if r.id_stacji == end_stacja_id and recording:
            break
    return res


def register_routes(app):
    @app.route('/szczegoly/direct/<int:id_trasy>', methods=['GET', 'POST'])
    def szczegoly_direct(id_trasy):
        trasa = db.session.get(Trasa, id_trasy)
        if not trasa:
            abort(404)
            
        data_podrozy = request.args.get('data') or request.form.get('data')
        if data_podrozy == "":
            data_podrozy = None

        sid = request.args.get('sid', type=int) or request.form.get('sid', type=int) or \
            request.args.get('stacja_start', type=int) or request.form.get('stacja_start', type=int) or \
            request.args.get('start', type=int) or request.form.get('start', type=int)

        kid = request.args.get('kid', type=int) or request.form.get('kid', type=int) or \
            request.args.get('stacja_koniec', type=int) or request.form.get('stacja_koniec', type=int) or \
            request.args.get('end', type=int) or request.form.get('end', type=int)

        if sid and kid:
            harmonogram = get_sliced_stops(id_trasy, sid, kid)
            if harmonogram:
                od_p = harmonogram[0]['numer']
                do_p = harmonogram[-1]['numer']
            else:
                od_p = 1
                do_p = db.session.query(func.max(Postoj.numer_postoju)).filter(Postoj.id_trasy == id_trasy).scalar() or 1
        else:
            harmonogram = []
            od_p = 1
            do_p = db.session.query(func.max(Postoj.numer_postoju)).filter(Postoj.id_trasy == id_trasy).scalar() or 1

        if not harmonogram:
            postoje_db = db.session.execute(text("""
                SELECT p.numer_postoju, p.godzina_przyjazdu, p.godzina_odjazdu, p.id_peronu_toru,
                    s.nazwa_stacji, s.szerokosc_geograficzna, s.dlugosc_geograficzna,
                    g.nazwa_gminy, pow.nazwa_powiatu, w.nazwa_wojewodztwa,
                    i.numer_peronu, i.numer_toru
                FROM POSTOJE p
                JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
                JOIN STACJE s ON i.id_stacji = s.id_stacji
                LEFT JOIN GMINY g ON s.id_gminy = g.id_gminy
                LEFT JOIN POWIATY pow ON g.id_powiatu = pow.id_powiatu
                LEFT JOIN WOJEWODZTWA w ON pow.id_wojewodztwa = w.id_wojewodztwa
                WHERE p.id_trasy = :id_trasy
                ORDER BY p.numer_postoju
            """), {'id_trasy': id_trasy}).fetchall()
            
            for r in postoje_db:
                if od_p <= r.numer_postoju <= do_p:
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

        wagony_struktura = get_wagony_dla_trasy(id_trasy, b_date, od_p, do_p)

        return render_template('szczegoly_direct.html', 
                            trasa=trasa, harmonogram=harmonogram, 
                            pociag=get_pociag_info(id_trasy, b_date), 
                            data=data_podrozy if data_podrozy else "Brak daty",
                            wagony_json=wagony_struktura)

    @app.route('/')
    def index():
        wszystkie_stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        domyslna_data = datetime.date.today().strftime('%Y-%m-%d')
        return render_template('uzytkownik_index.html', stacje=wszystkie_stacje, domyslna_data=domyslna_data)

    @app.route('/szukaj', methods=['POST', 'GET'])
    def szukaj():
        src = request.form if request.method == 'POST' else request.args
        
        wymaga_prm = src.get('miejsce_prm') == '1'
        wymaga_rower = src.get('miejsce_rower') == '1'
        min_przesiadka = src.get('min_przesiadka', default=5, type=int)
        max_przesiadki = src.get('max_przesiadki', default=2, type=int)

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

        pociag_cache = {}
        trasy_z_pociagiem = db.session.query(Trasa.id_trasy, Pociag.kategoria, Pociag.nazwa).\
            join(Pociag, Trasa.id_pociagu == Pociag.id_pociagu).\
            filter(Trasa.id_trasy.in_(aktywne_trasy_ids)).all()
        for r in trasy_z_pociagiem:
            pociag_cache[r.id_trasy] = {'kategoria': r.kategoria, 'nazwa': r.nazwa}

        przejazdy_pociagi = db.session.query(Przejazd.id_trasy, Pociag.kategoria, Pociag.nazwa).\
            join(Pociag, Przejazd.id_pociagu == Pociag.id_pociagu).\
            filter(Przejazd.id_trasy.in_(aktywne_trasy_ids), Przejazd.data_przejazdu == base_date).all()
        for r in przejazdy_pociagi:
            if r.id_trasy not in pociag_cache:
                pociag_cache[r.id_trasy] = {'kategoria': r.kategoria, 'nazwa': r.nazwa}

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

        def czy_trasa_spelnia_wymagania_taboru(tid):
            if not wymaga_prm and not wymaga_rower:
                return True
            wagony = get_wagony_dla_trasy(tid, base_date)
            ma_prm = False
            ma_rower = False
            for w in wagony:
                for m in w.get('miejsca', []):
                    if m.get('prm'): ma_prm = True
                    if m.get('rower'): ma_rower = True
                    if (not wymaga_prm or ma_prm) and (not wymaga_rower or ma_rower):
                        return True
            return False

        def rozwiazanie_optymalne_dijkstra():
            graph = defaultdict(list)
            tie_breaker = itertools.count()
            
            for tid, tinfo in trasy_map.items():
                if not czy_trasa_spelnia_wymagania_taboru(tid):
                    continue
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
                if trans > max_przesiadki: continue
                if is_dominated(u, arr_min, trans, dep_min_start): continue
                visited[u].append((arr_min, trans, dep_min_start))

                if u == koniec_id:
                    znalezione_polaczenia.append((arr_min, trans, dep_min_start, path))
                    continue

                for edge in graph[u]:
                    if edge['to'] == start_id: continue
                    cycle = False
                    for leg in path:
                        if edge['to'] == leg['start_station'] or edge['to'] == leg['end_station']:
                            cycle = True
                            break
                    if cycle: continue

                    is_transfer = (edge['route_id'] != curr_route)
                    next_trans = trans + (1 if is_transfer else 0)
                    if next_trans > max_przesiadki: continue

                    if is_transfer:
                        wait_time = edge['dep_min'] - arr_min
                        if not (min_przesiadka <= wait_time <= 240): continue
                    else:
                        if edge['dep_min'] < arr_min: continue

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

            gotowe = []
            for arr, trans, dep, path in znalezione_polaczenia:
                total_minutes = arr - dep
                diff = dep - m_input
                dep_date = base_date
                
                if len(path) == 1:
                    l = path[0]
                    gotowe.append({
                        'type': 'direct', 'id_trasy': l['route_id'], 'sid': start_id, 'kid': koniec_id,
                        'odjazd': l['dep_str'], 'przyjazd': l['arr_str'], 'czas_trwania': format_minutes(total_minutes),
                        'total_minutes': total_minutes, 'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'pociag': pociag_cache.get(l['route_id'], {})
                    })
                elif len(path) == 2:
                    l1, l2 = path[0], path[1]
                    gotowe.append({
                        'type': 'transfer', 'id_trasy_1': l1['route_id'], 'id_trasy_2': l2['route_id'],
                        'sid': start_id, 'tid': l1['end_station'], 'kid': koniec_id,
                        'odjazd': l1['dep_str'], 'przyjazd': l2['arr_str'], 'czas_trwania': format_minutes(total_minutes),
                        'total_minutes': total_minutes, 'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'stacja_przesiadki': stacje_cache.get(l1['end_station'], "Nieznana"),
                        'przyjazd_przesiadka': l1['arr_str'], 'odjazd_przesiadka': l2['dep_str'],
                        'pociag1': pociag_cache.get(l1['route_id'], {}), 'pociag2': pociag_cache.get(l2['route_id'], {})
                    })
                elif len(path) == 3:
                    l1, l2, l3 = path[0], path[1], path[2]
                    gotowe.append({
                        'type': 'transfer2', 'id_trasy_1': l1['route_id'], 'id_trasy_2': l2['route_id'], 'id_trasy_3': l3['route_id'],
                        'sid': start_id, 'tid1': l1['end_station'], 'tid2': l2['end_station'], 'kid': koniec_id,
                        'odjazd': l1['dep_str'], 'przyjazd': l3['arr_str'], 'czas_trwania': format_minutes(total_minutes),
                        'total_minutes': total_minutes, 'sort_diff': diff, 'data_wyjazdu': dep_date.strftime('%Y-%m-%d'),
                        'stacja_przesiadki1': stacje_cache.get(l1['end_station'], "Nieznana"), 'przyjazd_przesiadka1': l1['arr_str'], 'odjazd_przesiadka1': l2['dep_str'],
                        'stacja_przesiadki2': stacje_cache.get(l2['end_station'], "Nieznana"), 'przyjazd_przesiadka2': l2['arr_str'], 'odjazd_przesiadka2': l3['dep_str'],
                        'pociag1': pociag_cache.get(l1['route_id'], {}), 'pociag2': pociag_cache.get(l2['route_id'], {}), 'pociag3': pociag_cache.get(l3['route_id'], {})
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
        if not trasa1 or not trasa2: abort(404)
        
        data_podrozy = request.args.get('data') or request.form.get('data')
        sid = request.args.get('sid', default=0, type=int) or request.form.get('sid', default=0, type=int)
        tid = request.args.get('tid', default=0, type=int) or request.form.get('tid', default=0, type=int)
        kid = request.args.get('kid', default=0, type=int) or request.form.get('kid', default=0, type=int)

        h1 = get_sliced_stops(id1, sid, tid)
        h2 = get_sliced_stops(id2, tid, kid)
        
        try:
            b_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date() if data_podrozy else None
        except (ValueError, TypeError):
            b_date = None

        od1 = _numer_postoju_dla_stacji(id1, sid, prefer_max=False)
        do1 = _numer_postoju_dla_stacji(id1, tid, prefer_max=True)
        od2 = _numer_postoju_dla_stacji(id2, tid, prefer_max=False)
        do2 = _numer_postoju_dla_stacji(id2, kid, prefer_max=True)

        wagony_struktura1 = get_wagony_dla_trasy(id1, b_date, od1, do1)
        wagony_struktura2 = get_wagony_dla_trasy(id2, b_date, od2, do2)

        return render_template('szczegoly_transfer.html', 
                            trasa1=trasa1, pociag1=get_pociag_info(id1, b_date), h1=h1, wagony_json1=wagony_struktura1,
                            trasa2=trasa2, pociag2=get_pociag_info(id2, b_date), h2=h2, wagony_json2=wagony_struktura2,
                            data=data_podrozy)


    @app.route('/szczegoly/transfer2/<int:id1>/<int:id2>/<int:id3>', methods=['GET', 'POST'])
    def szczegoly_transfer2(id1, id2, id3):
        trasa1 = db.session.get(Trasa, id1)
        trasa2 = db.session.get(Trasa, id2)
        trasa3 = db.session.get(Trasa, id3)
        if not trasa1 or not trasa2 or not trasa3: abort(404)
        
        data_podrozy = request.args.get('data') or request.form.get('data')
        sid = request.args.get('sid', default=0, type=int) or request.form.get('sid', default=0, type=int)
        tid1 = request.args.get('tid1', default=0, type=int) or request.form.get('tid1', default=0, type=int)
        tid2 = request.args.get('tid2', default=0, type=int) or request.form.get('tid2', default=0, type=int)
        kid = request.args.get('kid', default=0, type=int) or request.form.get('kid', default=0, type=int)

        h1 = get_sliced_stops(id1, sid, tid1)
        h2 = get_sliced_stops(id2, tid1, tid2)
        h3 = get_sliced_stops(id3, tid2, kid)

        try:
            b_date = datetime.datetime.strptime(data_podrozy, '%Y-%m-%d').date() if data_podrozy else None
        except (ValueError, TypeError):
            b_date = None

        od1 = _numer_postoju_dla_stacji(id1, sid, prefer_max=False)
        do1 = _numer_postoju_dla_stacji(id1, tid1, prefer_max=True)
        od2 = _numer_postoju_dla_stacji(id2, tid1, prefer_max=False)
        do2 = _numer_postoju_dla_stacji(id2, tid2, prefer_max=True)
        od3 = _numer_postoju_dla_stacji(id3, tid2, prefer_max=False)
        do3 = _numer_postoju_dla_stacji(id3, kid, prefer_max=True)

        wagony_struktura1 = get_wagony_dla_trasy(id1, b_date, od1, do1)
        wagony_struktura2 = get_wagony_dla_trasy(id2, b_date, od2, do2)
        wagony_struktura3 = get_wagony_dla_trasy(id3, b_date, od3, do3)

        return render_template('szczegoly_2_przesiadki.html', 
                            trasa1=trasa1, pociag1=get_pociag_info(id1, b_date), h1=h1, wagony_json1=wagony_struktura1,
                            trasa2=trasa2, pociag2=get_pociag_info(id2, b_date), h2=h2, wagony_json2=wagony_struktura2,
                            trasa3=trasa3, pociag3=get_pociag_info(id3, b_date), h3=h3, wagony_json3=wagony_struktura3,
                            data=data_podrozy)


def register_admin(app):
    @app.route('/admin')
    def admin_index():
        return render_template('admin_index.html')

    @app.route('/admin/trasa/nowa', methods=['GET', 'POST'])
    def admin_nowa_trasa():
        def zapisz_harmonogram(id_trasy, id_pociagu, typ_kursowania):
            if typ_kursowania == 'cykliczna':
                dni = request.form.getlist('dni[]')
                for dzien in dni:
                    cykl = TrasaCykliczna(id_trasy=id_trasy, dzien_kursowania=dzien)
                    db.session.add(cykl)
            else:
                daty = request.form.getlist('konkretne_daty[]')
                for d_str in daty:
                    if d_str:
                        data_obj = datetime.datetime.strptime(d_str, '%Y-%m-%d').date()
                        przejazd = Przejazd(id_trasy=id_trasy, id_pociagu=id_pociagu, data_przejazdu=data_obj)
                        db.session.add(przejazd)

        if request.method == 'POST':
            db.session.rollback()
            bledy_walidacji = waliduj_dane_nowej_trasy()
            if bledy_walidacji:
                db.session.rollback()
                for blad in bledy_walidacji:
                    flash(blad, 'danger')
                stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
                typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
                return render_template('admin_nowa_trasa.html', stacje=stacje, typy_wagonow=typy_wagonow)
            
            try:
                nazwa_wspolna = request.form.get('nazwa_pociagu').strip()
                kat = request.form.get('kategoria_pociagu')
                num_pociagu = request.form.get('numer_pociagu').strip()
                
                pociag = Pociag(nazwa=f"{nazwa_wspolna} {num_pociagu}" if num_pociagu else nazwa_wspolna, kategoria=kat)
                db.session.add(pociag)
                db.session.flush()
                
                trasa = Trasa(nazwa_trasy=request.form.get('nazwa_trasy'), id_pociagu=pociag.id_pociagu)
                db.session.add(trasa)
                db.session.flush()
                
                zapisz_postoje_dla_trasy(trasa.id_trasy)
                
                wagony_id = [int(w) for w in request.form.getlist('id_typu_wagonu[]') if w]
                zapisz_sklad_dla_pociagu(pociag.id_pociagu, wagony_id)
                db.session.flush()
                
                zapisz_segmenty_skladu_dla_trasy(trasa.id_trasy, pociag.id_pociagu)
                
                zapisz_harmonogram(trasa.id_trasy, pociag.id_pociagu, request.form.get('typ_kursowania'))
                
                db.session.commit()
                flash('Trasa została pomyślnie utworzona!', 'success')
                return redirect('/admin/trasa/nowa')
            except Exception as e:
                db.session.rollback()
                flash(f'Wystąpił błąd podczas dodawania trasy: {czytelny_komunikat_bledu(e)}', 'danger')
                
        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
        return render_template('admin_nowa_trasa.html', stacje=stacje, typy_wagonow=typy_wagonow)

    @app.route('/admin/trasa/od_do', methods=['GET'])
    def admin_trasa_od_do():
        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        return render_template('admin_trasy_lista.html', stacje=stacje)

    @app.route('/admin/wagony', methods=['GET', 'POST'])
    def admin_wagony():
        if request.method == 'POST':
            akcja = request.form.get('akcja')

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

            elif akcja == 'usun':
                id_wagonu = request.form.get('id_wagonu', type=int)
                try:
                    wagon = db.session.get(Wagon, id_wagonu)
                    if not wagon:
                        flash('Nie znaleziono takiego wagonu.', 'danger')
                    elif db.session.query(Sklad).filter_by(id_wagonu=id_wagonu).first() or \
                            db.session.query(SkladSegment).filter_by(id_wagonu=id_wagonu).first() or \
                            db.session.execute(text(
                                "SELECT 1 FROM zmiany_skladu WHERE id_wagonu = :id LIMIT 1"
                            ), {'id': id_wagonu}).first():
                        flash(
                            f'Wagon #{id_wagonu} jest w składzie pociągu lub segmencie trasy – nie można go usunąć.',
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

        typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
        wagony = pobierz_wagony_do_listy_admin()
        return render_template(
            'admin_wagony.html',
            typy_wagonow=typy_wagonow,
            wagony=wagony,
        )

    @app.route('/api/infrastruktura/<int:id_stacji>')
    def api_infrastruktura(id_stacji):
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
        start_id = request.args.get('start', type=int)
        end_id = request.args.get('end', type=int)

        if not start_id or not end_id:
            return jsonify([])

        query = text("""
            SELECT DISTINCT
                t.id_trasy,
                t.nazwa_trasy,
                COALESCE(prz.id_pociagu, t.id_pociagu) AS id_pociagu,
                poc.nazwa as nazwa_pociagu
            FROM trasy t
            JOIN postoje p1 ON t.id_trasy = p1.id_trasy
            JOIN postoje p2 ON t.id_trasy = p2.id_trasy
            JOIN infrastruktura_stacji i1 ON p1.id_peronu_toru = i1.id
            JOIN infrastruktura_stacji i2 ON p2.id_peronu_toru = i2.id
            LEFT JOIN przejazdy prz ON t.id_trasy = prz.id_trasy
            LEFT JOIN pociagi poc ON poc.id_pociagu = COALESCE(prz.id_pociagu, t.id_pociagu)
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

        if trasa_tam.id_pociagu:
            pociag_tam = db.session.get(Pociag, trasa_tam.id_pociagu)
        else:
            przejazd = db.session.query(Przejazd).filter_by(id_trasy=id_trasy).first()
            pociag_tam = db.session.get(Pociag, przejazd.id_pociagu) if przejazd else None

        cykle_tam = db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy).all()
        przejazdy_tam = db.session.query(Przejazd).filter_by(id_trasy=id_trasy).order_by(Przejazd.data_przejazdu).all()

        segmenty_tam = db.session.query(SkladSegment, Wagon, TypWagonu).\
            join(Wagon, SkladSegment.id_wagonu == Wagon.id_wagonu).\
            join(TypWagonu, Wagon.id_typu == TypWagonu.id_typu).\
            filter(SkladSegment.id_trasy == id_trasy).\
            order_by(SkladSegment.numer_kolejnosci).all()

        return render_template('admin_zarzadzaj_trasa.html', 
                               trasa_tam=trasa_tam, pociag_tam=pociag_tam, cykle_tam=cykle_tam,
                               przejazdy_tam=przejazdy_tam, segmenty_tam=segmenty_tam)
    
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
                    przywroc_wagony_po_zmianie_trasy(tid)
                    db.session.execute(text(
                        "DELETE FROM zmiany_skladu WHERE id_trasy = :id OR id_trasy_docelowej = :id"
                    ), {'id': tid})
                    db.session.query(SkladSegment).filter_by(id_trasy=tid).delete()
                    db.session.query(Postoj).filter_by(id_trasy=tid).delete()
                    db.session.query(TrasaCykliczna).filter_by(id_trasy=tid).delete()
                    db.session.query(Przejazd).filter_by(id_trasy=tid).delete()
                    db.session.query(Trasa).filter_by(id_trasy=tid).delete()
            
            db.session.commit()
            flash("Wybrane trasy (i powiązane z nimi harmonogramy) zostały usunięte. Wagony i Pociągi pozostały w bazie.", "success")
        except Exception as e:
            db.session.rollback()
            flash(f"Wystąpił błąd podczas usuwania trasy: {czytelny_komunikat_bledu(e)}", "danger")

        return redirect('/admin/trasa/od_do')
    
    @app.route('/admin/trasa/usun_harmonogram', methods=['POST'])
    def admin_usun_harmonogram():
        try:
            if 'dzien_cyklu' in request.form:
                dzien = request.form.get('dzien_cyklu')
                id_trasy = request.form.get('id_trasy', type=int)
                przywroc_wagony_po_zmianie_trasy(id_trasy)
                db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy, dzien_kursowania=dzien).delete()
                msg = f"Usunięto cykliczny kurs: {dzien}. Przepięcia wagonów powiązanych z trasą zostały zresetowane."

            elif 'data_przejazdu' in request.form:
                data_str = request.form.get('data_przejazdu')
                id_trasy = request.form.get('id_trasy', type=int)
                id_pociagu = request.form.get('id_pociagu', type=int)
                data_obj = datetime.datetime.strptime(data_str, '%Y-%m-%d').date()
                przywroc_wagony_po_zmianie_trasy(id_trasy)
                db.session.query(Przejazd).filter_by(id_trasy=id_trasy, id_pociagu=id_pociagu, data_przejazdu=data_obj).delete()
                msg = f"Usunięto przejazd z dnia {data_str}. Przepięcia wagonów powiązanych z trasą zostały zresetowane."
            
            db.session.commit()
            flash(msg, "success")
            
            base_trasa = request.form.get('base_trasa', type=int)
            return redirect(f'/admin/trasa/zarzadzaj/{base_trasa}')
            
        except Exception as e:
            db.session.rollback()
            flash(f"Wystąpił błąd: {czytelny_komunikat_bledu(e)}", "danger")
            return redirect('/admin/trasa/od_do')
        
    @app.route('/api/mozliwe_przepiecia')
    def api_mozliwe_przepiecia():
        id_trasy = request.args.get('id_trasy', type=int)
        id_stacji = request.args.get('id_stacji', type=int)
        
        if not id_trasy or not id_stacji:
            return jsonify({'wagony': [], 'trasy_docelowe': []})

        query_zrodlo = text("""
            SELECT p.godzina_przyjazdu, p.numer_postoju, p.dzien_przyjazdu_offset 
            FROM POSTOJE p
            JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
            WHERE p.id_trasy = :id_trasy AND i.id_stacji = :id_stacji
            ORDER BY p.numer_postoju
            LIMIT 1
        """)
        zrodlo = db.session.execute(query_zrodlo, {'id_trasy': id_trasy, 'id_stacji': id_stacji}).first()
        
        if not zrodlo or not zrodlo.godzina_przyjazdu:
            return jsonify({'wagony': [], 'trasy_docelowe': []})

        query_wagony = text("""
            SELECT w.id_wagonu, tw.nazwa
            FROM SKLADY_SEGMENTY ss
            JOIN WAGONY w ON ss.id_wagonu = w.id_wagonu
            JOIN TYPY_WAGONOW tw ON w.id_typu = tw.id_typu
            WHERE ss.id_trasy = :id_trasy 
              AND ss.od_postoju <= :postoj
              AND (ss.do_postoju IS NULL OR ss.do_postoju >= :postoj)
        """)
        wagony = db.session.execute(query_wagony, {'id_trasy': id_trasy, 'postoj': zrodlo.numer_postoju}).fetchall()
        wagony_list = [{'id': w.id_wagonu, 'nazwa': f"Wagon #{w.id_wagonu} ({w.nazwa})"} for w in wagony]

        p_offset_zrodlo = getattr(zrodlo, 'dzien_przyjazdu_offset', 0) or 0
        przyjazd_minuty = time_to_minutes(zrodlo.godzina_przyjazdu) + (p_offset_zrodlo * 1440)

        query_cele = text("""
            SELECT p.id_trasy, t.nazwa_trasy, p.godzina_odjazdu, p.dzien_odjazdu_offset
            FROM POSTOJE p
            JOIN TRASY t ON p.id_trasy = t.id_trasy
            JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
            WHERE i.id_stacji = :id_stacji AND p.id_trasy != :id_trasy
              AND p.godzina_odjazdu IS NOT NULL
        """)
        cele = db.session.execute(query_cele, {'id_stacji': id_stacji, 'id_trasy': id_trasy}).fetchall()
        
        trasy_docelowe = []
        for c in cele:
            o_offset_cel = getattr(c, 'dzien_odjazdu_offset', 0) or 0
            odjazd_minuty = time_to_minutes(c.godzina_odjazdu) + (o_offset_cel * 1440)
            
            roznica = odjazd_minuty - przyjazd_minuty
            
            if roznica < 0 and roznica > -1200:
                roznica += 1440
                
            if 20 <= roznica <= 40:
                trasy_docelowe.append({
                    'id': c.id_trasy,
                    'nazwa': f"{c.nazwa_trasy} (Odjazd: {c.godzina_odjazdu.strftime('%H:%M')})"
                })

        return jsonify({'wagony': wagony_list, 'trasy_docelowe': trasy_docelowe})

    @app.route('/admin/przepinanie_wagonow', methods=['GET', 'POST'])
    def admin_przepinanie_wagonow():
        if request.method == 'POST':
            id_trasy_zrodlowej = request.form.get('id_trasy_zrodlowej', type=int)
            id_trasy_docelowej = request.form.get('id_trasy_docelowej', type=int)
            id_stacji = request.form.get('id_stacji', type=int)
            id_wagonu = request.form.get('id_wagonu', type=int)

            if not all([id_trasy_zrodlowej, id_trasy_docelowej, id_stacji, id_wagonu]):
                flash("Wypełnij wszystkie pola formularza.", "danger")
                return redirect('/admin/przepinanie_wagonow')

            try:
                res_zrodlo = db.session.execute(text("""
                    SELECT p.numer_postoju FROM POSTOJE p
                    JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
                    WHERE p.id_trasy = :id_t AND i.id_stacji = :id_s
                      AND p.godzina_przyjazdu IS NOT NULL
                    ORDER BY p.numer_postoju
                    LIMIT 1
                """), {'id_t': id_trasy_zrodlowej, 'id_s': id_stacji}).fetchone()
                
                res_cel = db.session.execute(text("""
                    SELECT p.numer_postoju FROM POSTOJE p
                    JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
                    WHERE p.id_trasy = :id_t AND i.id_stacji = :id_s
                      AND p.godzina_odjazdu IS NOT NULL
                    ORDER BY p.numer_postoju
                    LIMIT 1
                """), {'id_t': id_trasy_docelowej, 'id_s': id_stacji}).fetchone()

                if not res_zrodlo or not res_cel:
                    flash("Nie znaleziono odpowiednich postojów dla podanej stacji na wybranych trasach.", "danger")
                    return redirect('/admin/przepinanie_wagonow')

                num_postoj_zrodlo = res_zrodlo[0]
                num_postoj_cel = res_cel[0]

                seg_zrodlo = db.session.execute(text("""
                    SELECT od_postoju, numer_kolejnosci FROM SKLADY_SEGMENTY
                    WHERE id_trasy = :id_t AND id_wagonu = :id_w
                      AND od_postoju <= :np
                      AND (do_postoju IS NULL OR do_postoju >= :np)
                """), {
                    'id_t': id_trasy_zrodlowej, 'id_w': id_wagonu, 'np': num_postoj_zrodlo,
                }).fetchone()

                if not seg_zrodlo:
                    flash("Wybrany wagon nie jest aktywny na trasie źródłowej w tym postoju.", "danger")
                    return redirect('/admin/przepinanie_wagonow')

                res_max = db.session.execute(text("""
                    SELECT COALESCE(MAX(numer_kolejnosci), 0) FROM SKLADY_SEGMENTY
                    WHERE id_trasy = :id_t
                """), {'id_t': id_trasy_docelowej}).fetchone()
                max_kol = res_max[0] if res_max else 0

                db.session.execute(text("""
                    UPDATE SKLADY_SEGMENTY
                    SET do_postoju = :np
                    WHERE id_trasy = :id_t AND id_wagonu = :id_w AND od_postoju = :od_p
                """), {
                    'id_t': id_trasy_zrodlowej, 'id_w': id_wagonu,
                    'np': num_postoj_zrodlo, 'od_p': seg_zrodlo[0],
                })

                db.session.execute(text("""
                    INSERT INTO SKLADY_SEGMENTY (id_trasy, id_wagonu, od_postoju, do_postoju, numer_kolejnosci)
                    VALUES (:id_t, :id_w, :od_p, NULL, :kol)
                """), {
                    'id_t': id_trasy_docelowej, 'id_w': id_wagonu,
                    'od_p': num_postoj_cel, 'kol': max_kol + 1,
                })

                db.session.execute(text("""
                    INSERT INTO ZMIANY_SKLADU (id_trasy, numer_postoju, id_wagonu, typ_operacji, id_trasy_docelowej, opis)
                    VALUES (:id_tz, :np, :id_w, 'ODPIĘCIE', :id_tc, 'Przepięcie manewrowe')
                """), {
                    'id_tz': id_trasy_zrodlowej, 
                    'np': num_postoj_zrodlo, 
                    'id_w': id_wagonu, 
                    'id_tc': id_trasy_docelowej
                })

                db.session.execute(text("""
                    INSERT INTO ZMIANY_SKLADU (id_trasy, numer_postoju, id_wagonu, typ_operacji, opis)
                    VALUES (:id_tc, :npc, :id_w, 'PRZYPIĘCIE', 'Przyjęto z innej trasy')
                """), {
                    'id_tc': id_trasy_docelowej, 
                    'npc': num_postoj_cel, 
                    'id_w': id_wagonu
                })

                db.session.commit()
                flash("Pomyślnie odpięto i przypięto wagon do nowej trasy!", "success")
                
            except Exception as e:
                db.session.rollback()
                flash(f"Wystąpił błąd bazy danych: {czytelny_komunikat_bledu(e)}", "danger")
            
            return redirect('/admin/przepinanie_wagonow')

        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        trasy = db.session.query(Trasa).order_by(Trasa.nazwa_trasy).all()
        return render_template('admin_przepinanie_wagonow.html', stacje=stacje, trasy=trasy)
    
    @app.route('/admin/trasa/edytuj/<int:id_trasy>', methods=['GET', 'POST'])
    def admin_edytuj_trasa(id_trasy):
        trasa = db.session.get(Trasa, id_trasy)
        if not trasa:
            flash("Nie znaleziono takiej trasy.", "danger")
            return redirect('/admin/trasa/od_do')

        if trasa.id_pociagu:
            pociag = db.session.get(Pociag, trasa.id_pociagu)
        else:
            przejazd = db.session.query(Przejazd).filter_by(id_trasy=id_trasy).first()
            pociag = db.session.get(Pociag, przejazd.id_pociagu) if przejazd else None

        if not pociag:
            flash("Trasa nie ma przypisanego pociągu, edycja niemożliwa.", "danger")
            return redirect('/admin/trasa/od_do')

        if request.method == 'POST':
            bledy_walidacji = waliduj_dane_edycji_trasy()
            if bledy_walidacji:
                for blad in bledy_walidacji:
                    flash(blad, 'danger')
                return redirect(f'/admin/trasa/edytuj/{id_trasy}')

            try:
                nazwa_wspolna = request.form.get('nazwa_pociagu').strip()
                num_pociagu = (request.form.get('numer_pociagu') or '').strip()
                pociag.nazwa = f"{nazwa_wspolna} {num_pociagu}".strip() if num_pociagu else nazwa_wspolna
                pociag.kategoria = request.form.get('kategoria_pociagu')
                
                trasa.nazwa_trasy = request.form.get('nazwa_trasy').strip()

                przywroc_wagony_po_zmianie_trasy(id_trasy)
                db.session.query(SkladSegment).filter_by(id_trasy=id_trasy).delete()
                db.session.query(Postoj).filter_by(id_trasy=id_trasy).delete()
                db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy).delete()
                db.session.query(Przejazd).filter_by(id_trasy=id_trasy).delete()
                db.session.query(Sklad).filter_by(id_pociagu=pociag.id_pociagu).delete()

                zapisz_postoje_dla_trasy(trasa.id_trasy)
                
                wagony_id = [int(w) for w in request.form.getlist('id_typu_wagonu[]') if w]
                zapisz_sklad_dla_pociagu(pociag.id_pociagu, wagony_id)
                db.session.flush()
                
                zapisz_segmenty_skladu_dla_trasy(trasa.id_trasy, pociag.id_pociagu)

                typ_kursowania = request.form.get('typ_kursowania')
                if typ_kursowania == 'cykliczna':
                    dni = request.form.getlist('dni[]')
                    for dzien in dni:
                        db.session.add(TrasaCykliczna(id_trasy=trasa.id_trasy, dzien_kursowania=dzien))
                else:
                    daty = request.form.getlist('konkretne_daty[]')
                    for d_str in daty:
                        if d_str:
                            data_obj = datetime.datetime.strptime(d_str, '%Y-%m-%d').date()
                            db.session.add(Przejazd(id_trasy=trasa.id_trasy, id_pociagu=pociag.id_pociagu, data_przejazdu=data_obj))

                db.session.commit()
                flash('Trasa została pomyślnie zaktualizowana!', 'success')
                return redirect(f'/admin/trasa/zarzadzaj/{id_trasy}')
            except Exception as e:
                db.session.rollback()
                flash(f'Wystąpił błąd podczas edycji trasy: {czytelny_komunikat_bledu(e)}', 'danger')

        stacje = db.session.query(Stacja).order_by(Stacja.nazwa_stacji).all()
        typy_wagonow = db.session.query(TypWagonu).order_by(TypWagonu.nazwa).all()
        
        postoje_db = db.session.execute(text("""
            SELECT p.numer_postoju, p.godzina_przyjazdu, p.godzina_odjazdu, 
                   i.id_stacji, i.id as id_infra
            FROM POSTOJE p
            JOIN INFRASTRUKTURA_STACJI i ON p.id_peronu_toru = i.id
            WHERE p.id_trasy = :id_trasy
            ORDER BY p.numer_postoju
        """), {'id_trasy': id_trasy}).fetchall()
        
        segmenty_db = db.session.query(SkladSegment, Wagon).\
            join(Wagon, SkladSegment.id_wagonu == Wagon.id_wagonu).\
            filter(SkladSegment.id_trasy == id_trasy).\
            order_by(SkladSegment.numer_kolejnosci).all()
        wagony_db = [seg.Wagon.id_typu for seg in segmenty_db]
        
        cykle_db = [c.dzien_kursowania for c in db.session.query(TrasaCykliczna).filter_by(id_trasy=id_trasy).all()]
        przejazdy_db = [p.data_przejazdu.strftime('%Y-%m-%d') for p in db.session.query(Przejazd).filter_by(id_trasy=id_trasy).all()]

        nazwa_czlon = pociag.nazwa.rsplit(' ', 1)
        pociag_handlowa = nazwa_czlon[0] if len(nazwa_czlon) == 2 and nazwa_czlon[1].isdigit() else pociag.nazwa
        pociag_numer = nazwa_czlon[1] if len(nazwa_czlon) == 2 and nazwa_czlon[1].isdigit() else ""

        return render_template('admin_edytuj_trasa.html',
                               trasa=trasa, pociag=pociag,
                               pociag_handlowa=pociag_handlowa, pociag_numer=pociag_numer,
                               stacje=stacje, typy_wagonow=typy_wagonow,
                               postoje_db=postoje_db, wagony_db=wagony_db,
                               cykle=cykle_db, przejazdy=przejazdy_db)