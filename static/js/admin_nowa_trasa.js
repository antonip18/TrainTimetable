/**
 * Skrypt obsługujący formularz dodawania nowej trasy w panelu admina.
 * Dynamicznie dodaje postoje, wagony i daty kursowania.
 */

// Zakres dat do wyboru w harmonogramie (dziś + 30 dni)
const dzis = new Date();
const zaMiesiac = new Date();
zaMiesiac.setDate(dzis.getDate() + 30);
const minDataStr = dzis.toISOString().split('T')[0];
const maxDataStr = zaMiesiac.toISOString().split('T')[0];

/** Pokazuje/ukrywa sekcję harmonogramu (cykliczny vs konkretne daty). */
function toggleHarmonogram(kierunek, typ) {
    document.getElementById(`dni_tygodnia_div_${kierunek}`).style.display = typ === 'cykliczna' ? 'block' : 'none';
    document.getElementById(`konkretne_daty_div_${kierunek}`).style.display = typ === 'daty' ? 'block' : 'none';

    if (typ === 'daty' && document.getElementById(`daty_lista_${kierunek}`).children.length === 0) {
        dodajDate(kierunek);
    }
}

/** Dodaje pole z datą jednorazowego kursu. */
function dodajDate(kierunek, domyslnaWartosc = '') {
    const container = document.getElementById(`daty_lista_${kierunek}`);
    const div = document.createElement('div');
    div.className = 'date-item';
    div.innerHTML = `
        <input type="date" name="konkretne_daty_${kierunek}[]" min="${minDataStr}" max="${maxDataStr}" value="${domyslnaWartosc}" required>
        <button type="button" class="btn btn-danger" style="padding: 10px 14px;" onclick="this.closest('div').remove()">Usuń</button>
    `;
    container.appendChild(div);
}

/** Dodaje nowy wiersz postoju (stacja + peron/tor + godziny). */
function dodajPostoj(kierunek) {
    const tbody = document.getElementById(`postoje_tbody_${kierunek}`);
    const row = document.createElement('tr');

    row.innerHTML = `
        <td>
            <select name="id_stacji_${kierunek}[]" required onchange="pobierzInfrastrukture(this, '${kierunek}')">
                ${window.AppConfig.stacjeOptions}
            </select>
        </td>
        <td>
            <select name="id_infra_${kierunek}[]" class="infra-select" required>
                <option value="">Najpierw wybierz stację</option>
            </select>
        </td>
        <td><input type="time" name="godz_przyjazd_${kierunek}[]"></td>
        <td><input type="time" name="godz_odjazd_${kierunek}[]"></td>
        <td><button type="button" class="btn btn-danger btn-usun-postoj" onclick="usunPostoj(this, '${kierunek}')">Usuń</button></td>
    `;

    // Wstawiamy przed ostatnim wierszem (stacja końcowa)
    if (tbody.children.length >= 2) {
        tbody.insertBefore(row, tbody.lastChild);
    } else {
        tbody.appendChild(row);
    }

    odswiezPrzyciskiUsuwania(kierunek);
}

/** Pierwszy i ostatni postój nie mogą być usunięte (stacja początkowa/końcowa). */
function odswiezPrzyciskiUsuwania(kierunek) {
    const wiersze = document.querySelectorAll(`#postoje_tbody_${kierunek} tr`);
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

function usunPostoj(btn, kierunek) {
    btn.closest('tr').remove();
    odswiezPrzyciskiUsuwania(kierunek);
}

/** Pobiera z serwera listę peronów/torów po wybraniu stacji. */
async function pobierzInfrastrukture(selectElement, kierunek, selectedValue = null) {
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

/** Inicjalizacja formularza po załadowaniu strony. */
window.onload = async function() {
    document.querySelectorAll('.date-input-field').forEach(input => {
        input.min = minDataStr;
        input.max = maxDataStr;
    });

    const kierunki = ['tam', 'powrot'];
    for (const kierunek of kierunki) {
        const maStareDane = (kierunek === 'tam') ? window.AppConfig.maStareDaneTam : window.AppConfig.maStareDanePowrot;
        if (!maStareDane) {
            dodajPostoj(kierunek);
            dodajPostoj(kierunek);
        } else {
            const wiersze = document.querySelectorAll(`#postoje_tbody_${kierunek} tr`);
            for (let tr of wiersze) {
                const stacjaSelect = tr.querySelector(`select[name="id_stacji_${kierunek}[]"]`);
                const infraSelect = tr.querySelector('.infra-select');
                if (stacjaSelect && infraSelect) {
                    const zachowaneId = infraSelect.value;
                    await pobierzInfrastrukture(stacjaSelect, kierunek, zachowaneId);
                }
            }
            odswiezPrzyciskiUsuwania(kierunek);
        }
    }
    przeliczKolejnoscWagonow();
};
