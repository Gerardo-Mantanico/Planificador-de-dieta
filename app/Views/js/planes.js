
let id = 1;
const cardContainer = document.querySelector('.R'); // Ajusta esto al selector adecuadoa
menu();
document.getElementById('addElementButton').addEventListener('click', () => {
    id++; // Incrementamos el contador
    console.log(id);
    cardContainer.innerHTML = '';
    menu();

});

document.getElementById('beforeButton').addEventListener('click', () => {
    if(id<1){id=1}
    else{id--}
    cardContainer.innerHTML = '';
    menu();

});

function menu() {
    fetch('http://localhost/Planificador-de-dieta/app/Model/Repository/MenuDB.php?id=' + id)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json();

        })
        .then(data => {
            console.log(data);

            const card = createCard(data.desayuno);
            cardContainer.appendChild(card);

            const card1 = createCard(data.refaccionMatutina);
            cardContainer.appendChild(card1);

            const card2 = createCard(data.almuerzo);
            cardContainer.appendChild(card2);

            const card3 = createCard(data.refaccionDespertina);
            cardContainer.appendChild(card3);

            const card4 = createCard(data.cena);
            cardContainer.appendChild(card4);


        })
        .catch(error => {
            console.error('Error:', error);
            id=id;
        });

    // Obtener el contenedor de la tarjeta

    function createCard(menu) {
        const section = document.createElement('section');
        section.className = 'card';
        const detallesDiv = document.createElement('div');
        detallesDiv.className = 'container-detalles';
        const heading = document.createElement('h2');
        heading.textContent = menu.tipoComida;
        detallesDiv.appendChild(heading);
        // Crear el elemento span
        const detailsSpan = document.createElement('span');
        detailsSpan.className = "span-alimentos"

        // Construir el contenido HTML dentro del bucle
        let htmlContent = '';
        for (let i = 0; i < menu.arrayDeAlimentos.length; i++) {
            const alimento = menu.arrayDeAlimentos[i];
            htmlContent += `
<div>
    <p><strong>Nombre:</strong> ${alimento.nombre}</p>
    <p><strong>Índice Glucémico:</strong> ${alimento["indice glusemico"]}</p>
    <p><strong>Cantidad:</strong> ${alimento.cantidad}</p>
    <p><strong>Categoría:</strong> ${alimento.categorioa}</p>
    <br>
    <hr>
    <br>
</div>
`;
        }

        // Asignar el contenido HTML al elemento span
        detailsSpan.innerHTML = htmlContent;

        detallesDiv.appendChild(detailsSpan);
        const caloriasDiv = document.createElement('div');
        caloriasDiv.className = 'container-calorias';
        const caloriasP = document.createElement('p');
        caloriasP.textContent = menu.totalKcal + "Kcal";
        const detallesmenu2 = document.createElement('span');
        detallesmenu2.textContent = menu.tipo;

        const detallesmenu = document.createElement('span');
        detallesmenu.textContent = menu.horaInicial + "   -    " + menu.horaFinal;

        caloriasDiv.appendChild(caloriasP);
        caloriasDiv.appendChild(detallesmenu2);
        caloriasDiv.appendChild(detallesmenu);


        const imgDiv = document.createElement('div');
        imgDiv.className = 'container-img';
        const img = document.createElement('img');
        img.src = 'https://media.istockphoto.com/id/168340083/es/foto/choosemyplate-comida-saludable-y-placa-de-usda-dieta-equilibrada-recomendaci%C3%B3n.jpg?s=2048x2048&w=is&k=20&c=sBTI49VgLsZPM8vo71BnTpXg6G9sg2xnrbNgtgQ44Eo=';
        img.alt = 'dieta';
        imgDiv.appendChild(img);

        // Añadir los contenedores a la sección principal
        section.appendChild(detallesDiv);
        section.appendChild(caloriasDiv);
        section.appendChild(imgDiv);
        return section;
    }
}

