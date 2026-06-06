const dzis = new Date();
const zaMiesiac = new Date();
zaMiesiac.setDate(dzis.getDate() + 30);
const minDataStr = dzis.toISOString().split('T')[0];
const maxDataStr = zaMiesiac.toISOString().split('T')[0];

function toggleHarmonogram(typ) {
    document.getElementById('dni_tygodnia_div').style.display = typ === 'cykliczna' ? 'block' : 'none';
    document.getElementById('konkretne_daty_div').style.display = typ === 'daty' ? 'block' : 'none';

    if (typ === 'cykliczna') {
        document.getElementById('daty_lista').innerHTML = '';
    } else {
        if (document.getElementById('daty_lista').children.length === 0) {
            dodajDate();
        }
    }
}

function dodajDate(domyslnaWartosc = '') {
    const container = document.getElementById('daty_lista');
    const div = document.createElement('div');
    div.className = 'date-item';
    div.innerHTML = `
        <input type="date" name="konkretne_daty[]" min="${minDataStr}" max="${maxDataStr}" value="${domyslnaWartosc}" required>
        <button type="button" class="btn btn-danger" style="padding: 10px 14px;" onclick="this.closest('div').remove()">Usuń</button>
    `;
    container.appendChild(div);
}

function dodajPostoj() {
    const tbody = document.getElementById('postoje_tbody');
    const row = document.createElement('tr');

    row.innerHTML = `
        <td>
            <select name="id_stacji[]" required onchange="pobierzInfrastrukture(this)">
                ${window.AppConfig.stacjeOptions}
            </select>
        </td>
        <td>
            <select name="id_infra[]" class="infra-select" required>
                <option value="">Najpierw wybierz stację</option>
            </select>
        </td>
        <td><input type="time" name="godz_przyjazd[]" class="inp-przyjazd"></td>
        <td><input type="time" name="godz_odjazd[]" class="inp-odjazd"></td>
        <td><button type="button" class="btn btn-danger btn-usun-postoj" onclick="usunPostoj(this)">Usuń</button></td>
    `;

    const wiersze = tbody.querySelectorAll('tr');

    if (wiersze.length >= 2) {
        // Wstawiamy nowy wiersz dokładnie PRZED ostatni istniejący wiersz (wiersze[wiersze.length - 1])
        tbody.insertBefore(row, wiersze[wiersze.length - 1]);
    } else {
        // Jeśli są mniej niż 2 wiersze, po prostu doklejamy na koniec
        tbody.appendChild(row);
    }
    
    przyciskiUsuwania();
    godziny();
}

function przyciskiUsuwania() {
    const wiersze = document.querySelectorAll('#postoje_tbody tr');
    wiersze.forEach((wiersz, index) => {
        const btnUsun = wiersz.querySelector('.btn-usun-postoj');
        if (btnUsun) {
            if (index === 0 || index === wiersze.length - 1) {
                btnUsun.disabled = true;
                btnUsun.style.opacity = "0.4";
                btnUsun.style.cursor = "not-allowed";
            } else {
                btnUsun.disabled = false;
                btnUsun.style.opacity = "1";
                btnUsun.style.cursor = "pointer";
            }
        }
    });
}

function godziny() {
    const wiersze = document.querySelectorAll('#postoje_tbody tr');
    wiersze.forEach((wiersz, index) => {
        const inpPrzyjazd = wiersz.querySelector('.inp-przyjazd');
        const inpOdjazd = wiersz.querySelector('.inp-odjazd');

        if (!inpPrzyjazd || !inpOdjazd) return;

        if (index === 0 && inpPrzyjazd) {
            inpPrzyjazd.disabled = true;
            inpOdjazd.disabled = false;
            inpPrzyjazd.title = 'Pierwsza stacja – wpisz tylko godzinę odjazdu';
        }
        if (index === wiersze.length - 1 && inpOdjazd) {
            inpOdjazd.disabled = true;
            inpPrzyjazd.disabled = false;
            inpOdjazd.title = 'Ostatnia stacja – wpisz tylko godzinę przyjazdu';
        }
    });
}

function usunPostoj(btn) {
    btn.closest('tr').remove();
    przyciskiUsuwania();
    godziny();
}

async function pobierzInfrastrukture(selectElement, selectedValue = null) {
    const stacjaId = selectElement.value;
    const tr = selectElement.closest('tr');
    const infraSelect = tr.querySelector('.infra-select');

    infraSelect.innerHTML = '<option value="">Ładowanie...</option>';
    if (!stacjaId) {
        infraSelect.innerHTML = '<option value="">Wybierz stację</option>';
        return;
    }

    try {
        const response = await fetch(`/api/infrastruktura/${stacjaId}`);
        const data = await response.json();
        infraSelect.innerHTML = '';
        if (data.length === 0) {
            infraSelect.innerHTML = '<option value="">Brak peronów/torów w bazie!</option>';
        } else {
            data.forEach(item => {
                const selectedAttr = (selectedValue && String(item.id) === String(selectedValue)) ? 'selected' : '';
                infraSelect.innerHTML += `<option value="${item.id}" ${selectedAttr}>Peron ${item.peron}, Tor ${item.tor}</option>`;
            });
        }
    } catch (e) {
        infraSelect.innerHTML = '<option value="">Błąd ładowania</option>';
    }
}

function dodajWagon() {
    const container = document.getElementById('wagony_lista');
    const div = document.createElement('div');
    div.className = 'wagon-item';
    div.innerHTML = `
        <strong class="nr-wagonu-label" style="min-width: 90px; color: #475569;">Wagon</strong>
        <select name="id_typu_wagonu[]" required>${window.AppConfig.wagonyOptions}</select>
        <button type="button" class="btn btn-danger" onclick="this.closest('.wagon-item').remove(); przeliczKolejnoscWagonow();">Usuń</button>
    `;
    container.appendChild(div);
    przeliczKolejnoscWagonow();
}

function przeliczKolejnoscWagonow() {
    document.querySelectorAll('.nr-wagonu-label').forEach((label, idx) => {
        label.textContent = `Wagon #${idx + 1}:`;
    });
}

function przygotujFormularzDoWyslania() {
    document.querySelectorAll('input[name="godz_przyjazd[]"], input[name="godz_odjazd[]"]').forEach(inp => {
        inp.disabled = false;
        inp.readOnly = false;
    });

    const typDaty = document.querySelector('input[name="typ_kursowania"]:checked');
    if (typDaty && typDaty.value === 'cykliczna') {
        document.getElementById('daty_lista').innerHTML = '';
    }

    return true;
}

window.onload = async function() {
    document.querySelectorAll('.date-input-field').forEach(input => {
        input.min = minDataStr;
        input.max = maxDataStr;
    });

    const form = document.getElementById('form-nowa-trasa');
    if (form) {
        form.addEventListener('submit', przygotujFormularzDoWyslania);
    }

    const maStareDane = window.AppConfig.maStareDane;
    if (!maStareDane) {
        dodajPostoj();
        dodajPostoj();
    } else {
        const wiersze = document.querySelectorAll('#postoje_tbody tr');
        for (let tr of wiersze) {
            const stacjaSelect = tr.querySelector('select[name="id_stacji[]"]');
            const infraSelect = tr.querySelector('.infra-select');
            if (stacjaSelect && infraSelect) {
                await pobierzInfrastrukture(stacjaSelect, infraSelect.value);
            }
        }
    }
    
    przyciskiUsuwania();
    godziny();

    if (document.getElementById('wagony_lista').children.length === 0) {
        dodajWagon();
    }
    przeliczKolejnoscWagonow();
};