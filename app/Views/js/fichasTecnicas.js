

const id = 1;

fetch('http://localhost/Planificador-de-dieta/app/Model/Repository/FichaTecnicaDB.php?id=' + id)
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        return response.json();

    })
    .then(data => {
        console.log(data);
        imprimirTabla(data);

    })
    .catch(error => {
        console.error('Error:', error);
        id = id;
    });


function imprimirTabla(fichas) {
    const tbody = document.querySelector('#tablaDatos tbody');
    fichas.forEach(item => {
        const fila = document.createElement('tr');
        Object.keys(item).forEach(key => {
            if(item[key]!=null){
                const celda = document.createElement('td');

            celda.textContent = item[key];
            fila.appendChild(celda);
            }
            
        });
        tbody.appendChild(fila);
    });
}