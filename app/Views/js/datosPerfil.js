
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

$("#submit").click(function(){

    $.ajax(
        {
            url: "",
            type: "post",
            data: $("#formulario").serialize(),
            success: function(respuesta){
                $("#respuesta").html(respuesta);
            }
        }
    )
});