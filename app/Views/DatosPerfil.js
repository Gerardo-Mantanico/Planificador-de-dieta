
/*const name = document.getElementById ('name');
const user = document.getElementById ('user');
const address = document.getElementById ('address');
const cui = document.getElementById ('cui');
const phone = document.getElementById ('phone');
const date = document.getElementById ('date');
const genero = document.getElementById ('genero');
const size = document.getElementById ('size');
const email = document.getElementById('email');



function data() {
    $.post("/srv/http/Planificador-de-dieta/app/Model/Repository/Perfil.php", { "texto": miVariableJS }, function(respuesta) {
        alert(respuesta);
    });
    
}
name.value="Luis Gerardo";*/

/*
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
name.value="Luis Gerardo";
*/


$(document).ready(function() {
    const name = $('#name');
    const user = $('#user');
    const address = $('#address');
    const cui = $('#cui');
    const phone = $('#phone');
    const date = $('#date');
    const genero = $('#genero');
    const size = $('#size');
    const email = $('#email');

    // Definir una variable para la petición POST
    const miVariableJS = {
        name: name.val(),
        user: user.val(),
        address: address.val(),
        cui: cui.val(),
        phone: phone.val(),
        date: date.val(),
        genero: genero.val(),
        size: size.val(),
        email: email.val()
    };

    // Rellenar el campo 'name' como ejemplo
    name.val("Luis Gerardo");

    $('#submitButton').click(function() {
        // Realizar la petición POST
        $.post("/srv/http/Planificador-de-dieta/app/Model/Repository/Perfil.php", { "texto": miVariableJS }, function(respuesta) {
            alert(respuesta);
        }).fail(function(jqXHR, textStatus, errorThrown) {
            alert("Error en la petición: " + textStatus + ", " + errorThrown);
        });
    });
});