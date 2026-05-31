function renderWagon(wagon, gridId, titleId) {
    const grid = document.getElementById(gridId);
    const title = document.getElementById(titleId);
    
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

        let arrow = m.przod === true ? " →" : m.przod === false ? " ←" : "";
        div.textContent = m.numer + arrow;
        div.title = `Miejsce: ${m.numer}\nRząd: ${m.rzad}, Kolumna: ${m.kol}`;
        
        div.style.gridRow = `${m.kol} / ${m.kol + 1}`;
        div.style.gridColumn = `${m.rzad} / ${m.rzad + 1}`;
        grid.appendChild(div);
    });
}

function initTrainInstance(bridgeId, tabsId, gridId, titleId) {
    const bridgeElement = document.getElementById(bridgeId);
    const tabsContainer = document.getElementById(tabsId);
    if (!bridgeElement || !tabsContainer) return;

    const rawData = bridgeElement.getAttribute('data-wagony');
    const trainData = rawData ? JSON.parse(rawData) : null;

    if (!trainData || trainData.length === 0) {
        document.getElementById(titleId).textContent = "Brak informacji o składzie pociągu.";
        document.getElementById(gridId).style.display = 'none';
        return;
    }

    trainData.forEach((wagon, index) => {
        const btn = document.createElement('button');
        btn.className = `wagon-tab ${index === 0 ? 'active' : ''}`;
        btn.textContent = `Wagon ${wagon.id_wagonu}`;
        btn.onclick = () => {
            tabsContainer.querySelectorAll('.wagon-tab').forEach(b => b.classList.remove('active'));
            btn.classList.add('active');
            renderWagon(wagon, gridId, titleId);
        };
        tabsContainer.appendChild(btn);
    });

    renderWagon(trainData[0], gridId, titleId);
}

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

function drawRoute(svg, stops, color) {
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
            circle.setAttribute('r', '0.6');
            circle.setAttribute('fill', color);
            circle.setAttribute('stroke', '#ffffff');
            circle.setAttribute('stroke-width', '0.1');
            circle.setAttribute('class', 'map-marker');

            const htmlContent = `<strong>${stop.stacja}</strong>`;
            circle.addEventListener('mousemove', (e) => showTooltip(e, htmlContent));
            circle.addEventListener('mouseleave', hideTooltip);

            svg.appendChild(circle);
        }
    });

    if (pathD) {
        const path = document.createElementNS('http://www.w3.org/2000/svg', 'path');
        path.setAttribute('d', pathD);
        path.setAttribute('fill', 'none');
        path.setAttribute('stroke', color);
        path.setAttribute('stroke-width', '0.4');
        path.setAttribute('stroke-dasharray', '1, 0.5');
        svg.insertBefore(path, svg.firstChild); 
    }
}

function initTransferMap() {
    const mapContainer = document.getElementById('map-container-transfer');
    if (!mapContainer) {
        console.error("Brak elementu map-container-transfer!");
        return;
    }

    const stops1 = JSON.parse(mapContainer.getAttribute('data-stops-1'));
    const stops2 = JSON.parse(mapContainer.getAttribute('data-stops-2'));
    const stops3 = JSON.parse(mapContainer.getAttribute('data-stops-3'));
    const svg = document.getElementById('map-svg');

    drawRoute(svg, stops1, '#2b6cff');
    drawRoute(svg, stops2, '#22c55e');
    drawRoute(svg, stops3, '#df2b2b');

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
    initTrainInstance('wagon-data-bridge-1', 'wagon-tabs-1', 'wagon-grid-1', 'wagon-title-1');
    initTrainInstance('wagon-data-bridge-2', 'wagon-tabs-2', 'wagon-grid-2', 'wagon-title-2');
    initTrainInstance('wagon-data-bridge-3', 'wagon-tabs-3', 'wagon-grid-3', 'wagon-title-3');
    initTransferMap();
});