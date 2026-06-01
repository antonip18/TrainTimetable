const bridgeElement = document.getElementById('wagon-data-bridge');
const trainData = bridgeElement
    ? JSON.parse(bridgeElement.getAttribute('data-wagony') || '[]')
    : [];

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

const POLAND_BOUNDS = {
    north: 54.90,
    south: 49.00,
    west: 14.12,
    east: 24.15
};

const globalTooltip = document.createElement('div');
globalTooltip.className = 'custom-tooltip';
document.body.appendChild(globalTooltip);

function showTooltip(e, content) {
    globalTooltip.innerHTML = content;
    globalTooltip.style.display = 'block';
    moveTooltip(e);
}

function moveTooltip(e) {
    globalTooltip.style.left = (e.pageX + 15) + 'px';
    globalTooltip.style.top = (e.pageY + 15) + 'px';
}

function hideTooltip() {
    globalTooltip.style.display = 'none';
}

function getMapCoords(lat, lon) {
    const x = ((lon - POLAND_BOUNDS.west) / (POLAND_BOUNDS.east - POLAND_BOUNDS.west)) * 100;
    const y = ((POLAND_BOUNDS.north - lat) / (POLAND_BOUNDS.north - POLAND_BOUNDS.south)) * 100;
    return { x, y };
}

function initRouteMap() {
    const mapContainer = document.getElementById('map-container');
    if (!mapContainer) return;

    const stops = JSON.parse(mapContainer.getAttribute('data-stops'));
    const svg = document.getElementById('map-svg');
    if (!stops || stops.length === 0) return;

    let pathD = "";

    stops.forEach((stop, index) => {
        if (!stop.lat || !stop.lon) return;

        const coords = getMapCoords(stop.lat, stop.lon);

        if (index === 0) {
            pathD += `M ${coords.x} ${coords.y}`;
        } else {
            pathD += ` L ${coords.x} ${coords.y}`;
        }

        if (coords.x >= 0 && coords.x <= 100 && coords.y >= 0 && coords.y <= 100) {
            const circle = document.createElementNS('http://www.w3.org/2000/svg', 'circle');
            circle.setAttribute('cx', coords.x);
            circle.setAttribute('cy', coords.y);
            circle.setAttribute('r', '0.5');
            circle.setAttribute('fill', '#2b6cff');
            circle.setAttribute('stroke', '#ffffff');
            circle.setAttribute('stroke-width', '0.1');
            circle.setAttribute('class', 'map-marker');

            const htmlContent = `<strong>${stop.stacja}</strong><br>Gmina: ${stop.gmina}<br>Powiat: ${stop.powiat}<br>Województwo: ${stop.wojewodztwo}`;
            
            circle.addEventListener('mousemove', (e) => showTooltip(e, htmlContent));
            circle.addEventListener('mouseleave', hideTooltip);

            svg.appendChild(circle);
        }
    });

    if (pathD) {
        const path = document.createElementNS('http://www.w3.org/2000/svg', 'path');
        path.setAttribute('d', pathD);
        path.setAttribute('fill', 'none');
        path.setAttribute('stroke', '#2b6cff');
        path.setAttribute('stroke-width', '0.3');
        path.setAttribute('stroke-dasharray', '1, 0.5');
        svg.insertBefore(path, svg.firstChild);
    }

    document.querySelectorAll('.station-row').forEach(row => {
        const stacja = row.getAttribute('data-stacja');
        const gmina = row.getAttribute('data-gmina');
        const powiat = row.getAttribute('data-powiat');
        const wojewodztwo = row.getAttribute('data-wojewodztwo');
        
        const htmlContent = `<strong>${stacja}</strong><br>Gmina: ${gmina}<br>Powiat: ${powiat}<br>Województwo: ${wojewodztwo}`;

        row.addEventListener('mousemove', (e) => showTooltip(e, htmlContent));
        row.addEventListener('mouseleave', hideTooltip);
    });
}

document.addEventListener('DOMContentLoaded', () => {
    initRouteMap();
});