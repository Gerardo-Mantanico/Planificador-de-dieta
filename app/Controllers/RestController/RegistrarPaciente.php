<?php
require_once('../../Model/entity/Paciente.php');
require_once('../../Model/Repository/RegistroUsuario.php');
$nombre  = $_POST['name'];
$usuario = $_POST['user'];
$direccion = $_POST['address'];
$cui = $_POST['cui'];
$telefono = $_POST['phone'];
$fecha = $_POST['date'];
$genero = $_POST['gender'];
$talla = $_POST['size'];
$correo = $_POST['email'];
$contrasena = $_POST['password'];


$paciente = new Paciente(
    null,
    $nombre,
    $usuario,
    $contrasena,
    $correo,
    'P',
    $telefono,
    $fecha,
    $direccion,
    $cui,
    $genero,
    $talla
);
registrar($paciente);
?>