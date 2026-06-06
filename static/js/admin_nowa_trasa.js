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
        <td>
            <div class="akcje-postoju">
                <button type="button" class="btn btn-secondary btn-przesun-gora" onclick="przesunPostoj(this, -1)">Góra</button>
                <button type="button" class="btn btn-secondary btn-przesun-dol" onclick="przesunPostoj(this, 1)">Dół</button>
                <button type="button" class="btn btn-danger btn-usun-postoj" onclick="usunPostoj(this)">Usuń</button>
            </div>
        </td>
    `;

    const dodawajPrzedOstatnim = window.AppConfig.dodawajPrzedOstatnim !== false;
    if (dodawajPrzedOstatnim && tbody.children.length >= 2) {
        tbody.insertBefore(row, tbody.lastChild);
    } else {
        tbody.appendChild(row);
    }
    
    przyciskiUsuwania();
    godziny();
}

function przyciskiUsuwania() {
    const wiersze = document.querySelectorAll('#postoje_tbody tr');
    const blokujSkrajnePostoje = window.AppConfig.blokujSkrajnePostoje !== false;
    wiersze.forEach((wiersz, index) => {
        const btnUsun = wiersz.querySelector('.btn-usun-postoj');
        const btnGora = wiersz.querySelector('.btn-przesun-gora');
        const btnDol = wiersz.querySelector('.btn-przesun-dol');
        if (btnUsun) {
            const czySkrajny = index === 0 || index === wiersze.length - 1;
            const czyZablokowany = wiersze.length <= 2 || (blokujSkrajnePostoje && czySkrajny);
            if (czyZablokowany) {
                btnUsun.disabled = true;
                btnUsun.style.opacity = "0.4";
                btnUsun.style.cursor = "not-allowed";
            } else {
                btnUsun.disabled = false;
                btnUsun.style.opacity = "1";
                btnUsun.style.cursor = "pointer";
            }
        }
        if (btnGora) {
            btnGora.disabled = index === 0;
        }
        if (btnDol) {
            btnDol.disabled = index === wiersze.length - 1;
        }
    });
}

function godziny() {
    const wiersze = document.querySelectorAll('#postoje_tbody tr');
    wiersze.forEach((wiersz, index) => {
        const inpPrzyjazd = wiersz.querySelector('.inp-przyjazd');
        const inpOdjazd = wiersz.querySelector('.inp-odjazd');

        if (!inpPrzyjazd || !inpOdjazd) return;

        inpPrzyjazd.disabled = false;
        inpPrzyjazd.title = '';
        inpOdjazd.disabled = false;
        inpOdjazd.title = '';

        if (index === 0 && inpPrzyjazd) {
            inpPrzyjazd.value = '';
            inpPrzyjazd.disabled = true;
            inpOdjazd.disabled = false;
            inpPrzyjazd.title = 'Pierwsza stacja – wpisz tylko godzinę odjazdu';
        }
        if (index === wiersze.length - 1 && inpOdjazd) {
            inpOdjazd.value = '';
            inpOdjazd.disabled = true;
            inpPrzyjazd.disabled = false;
            inpOdjazd.title = 'Ostatnia stacja – wpisz tylko godzinę przyjazdu';
        }
    });
}

function usunPostoj(btn) {
    if (document.querySelectorAll('#postoje_tbody tr').length <= 2) {
        return;
    }
    btn.closest('tr').remove();
    przyciskiUsuwania();
    godziny();
}

function przesunPostoj(btn, kierunek) {
    const row = btn.closest('tr');
    const tbody = row.parentElement;
    if (kierunek < 0 && row.previousElementSibling) {
        tbody.insertBefore(row, row.previousElementSibling);
    }
    if (kierunek > 0 && row.nextElementSibling) {
        tbody.insertBefore(row.nextElementSibling, row);
    }
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