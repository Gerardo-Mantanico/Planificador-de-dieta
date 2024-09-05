<?php
require_once('../../Model/Repository/FichaTecnicaDB.php');
require_once('../../Model/entity/FichaTecnica.php');

//$idUsuario = $_POST['id'];
$edad = $_POST['age'];
$peso = $_POST['peso'];
$glucosa = $_POST['glucosa'];


$ficha = new FichaTecnica(
    null,
    1,
    $edad,
    $peso,
    $glucosa,
    null,
    null,
    null,
    null  
);

//registrar(1);


?>