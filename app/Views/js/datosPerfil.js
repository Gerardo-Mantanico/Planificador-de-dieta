
const name = document.getElementById('name');
const user = document.getElementById('user');
const address = document.getElementById('address');
const cui = document.getElementById('cui');
const phone = document.getElementById('phone');
const date = document.getElementById('date');
const genero = document.getElementById('genero');
const size = document.getElementById('size');
const email = document.getElementById('email');

const id =1;

fetch('http://localhost/Planificador-de-dieta/app/Model/Repository/Perfil.php?id=' + id)
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok ' + response.statusText);
        }
        return response.json();

    })
    .then(data => {
        console.log(data);
        name.value = data.nombre;
        user.value= data.usuario;
        address.value = data.contrasena;
        cui.value = data.cui;
        phone.value = data.telefono;
        date.value = data.fechaNacimiento;
        genero.value = data.sexo;
        size.value = data.talla;
        email.value = data.correo;

    })
    .catch(error => {
        console.error('Error:', error);
        id = id;
    });