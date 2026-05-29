const bridgeElement = document.getElementById('wagon-data-bridge');
const trainData = JSON.parse(bridgeElement.getAttribute('data-wagony'));

function renderWagon(wagon) {
    const grid = document.getElementById('wagon-grid');
    const title = document.getElementById('wagon-title');
    
    title.textContent = `Wagon nr ${wagon.id_wagonu} - ${wagon.nazwa}`;
    
    grid.style.gridTemplateColumns = `repeat(${wagon.liczba_rzedow}, 40px)`;
    grid.style.gridTemplateRows = `repeat(${wagon.liczba_kolumn}, 40px)`;
    grid.innerHTML = '';

    wagon.elementy.forEach(el => {
        const div = document.createElement('div');
        div.className = 'grid-item static-element';
        div.textContent = el.nazwa;
        
        div.style.gridRow = `${el.k_od} / ${el.k_do + 1}`;
        div.style.gridColumn = `${el.r_od} / ${el.r_do + 1}`;
        grid.appendChild(div);
    });

    wagon.miejsca.forEach(m => {
        const div = document.createElement('div');
        div.className = 'grid-item seat';
        
        if (m.prm) div.classList.add('prm');
        if (m.rower) div.classList.add('bike');
        if (m.stolik) div.classList.add('table');

        let arrow = "";
        if (m.przod === true) arrow = " →";
        if (m.przod === false) arrow = " ←";

        div.textContent = m.numer + arrow;
        div.title = `Miejsce: ${m.numer}\nRząd: ${m.rzad}, Kolumna: ${m.kol}`;
        
        div.style.gridRow = `${m.kol} / ${m.kol + 1}`;
        div.style.gridColumn = `${m.rzad} / ${m.rzad + 1}`;
        grid.appendChild(div);
    });
}

function initTrainView() {
    const tabsContainer = document.getElementById('wagon-tabs');
    if (!trainData || trainData.length === 0) {
        document.getElementById('wagon-title').textContent = "Brak informacji o składzie pociągu.";
        document.getElementById('wagon-grid').style.display = 'none';
        return;
    }

    trainData.forEach((wagon, index) => {
        const btn = document.createElement('button');
        btn.className = `wagon-tab ${index === 0 ? 'active' : ''}`;
        btn.textContent = `Wagon ${wagon.id_wagonu}`;
        btn.onclick = () => {
            document.querySelectorAll('.wagon-tab').forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
            renderWagon(wagon);
        };
        tabsContainer.appendChild(btn);
    });

    renderWagon(trainData[0]);
}

document.addEventListener('DOMContentLoaded', initTrainView);