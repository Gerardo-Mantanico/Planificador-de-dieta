<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once('../../Model/entity/Credencial.php');
require_once('../../Model/Repository/LoginDB.php');

$correo  = $_POST['email'];
$usuario = $_POST['password'];

$credencial = IniciarSesion($correo, $usuario);
if ($credencial->getId() != null) {
    header("Location: http://localhost/Planificador-de-dieta/app/Views/plan.php");
    exit(); 
} else {
    header("Location: http://localhost/Planificador-de-dieta/app/Views/login.php");
    exit();
}
