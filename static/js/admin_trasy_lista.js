async function wyszukajTrasy() {
    const startId = document.getElementById('search_start').value;
    const endId = document.getElementById('search_end').value;
    const wynikiContainer = document.getElementById('wyniki_tras');

    if (!startId || !endId) {
        wynikiContainer.innerHTML = '';
        return;
    }

    wynikiContainer.innerHTML = '<h4>Szukam tras...</h4>';

    try {
        const response = await fetch(`/api/trasy/od_do?start=${startId}&end=${endId}`);
        const trasy = await response.json();

        if (trasy.length === 0) {
            wynikiContainer.innerHTML = '<h4>Brak tras na wybranym odcinku.</h4>';
            return;
        }

        let html = '<h4>Znalezione trasy:</h4><ul style="list-style: none; padding: 0;">';
        trasy.forEach(t => {
            html += `
                <li style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 15px; margin-bottom: 10px; border-radius: 8px; display: flex; justify-content: space-between; align-items: center;">
                    <div>
                        <strong>${t.nazwa_trasy}</strong><br>
                        <span style="color: #64748b; font-size: 13px;">Obsługiwane przez: ${t.nazwa_pociagu || 'Brak przypisanego pociągu'}</span>
                    </div>
                    <a href="/admin/trasa/zarzadzaj/${t.id_trasy}" class="btn">Zarządzaj / Usuń</a>
                </li>
            `;
        });
        html += '</ul>';
        wynikiContainer.innerHTML = html;

    } catch (error) {
        wynikiContainer.innerHTML = '<h4 style="color: red;">Błąd pobierania danych.</h4>';
    }
}