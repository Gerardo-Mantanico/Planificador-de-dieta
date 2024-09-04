<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once('ConexionDB.php');
require_once('../../Model/entity/Paciente.php');

class CustomException extends Exception {}



function registrar(Paciente $paciente)
{
    global $conn;
    $query = $conn->prepare("CALL insertar_paciente(?,?,?,?,?,?,?,?,?,?,?)");
    $nombre = $paciente->getNombre();
    $usuario = $paciente->getUsuario();
    $contrasena = $paciente->getContrasena();
    $correo = $paciente->getCorreo();
    $rol = $paciente->getRol();
    $telefono = $paciente->getTelefono();
    $fechaNacimiento = $paciente->getFechaNacimiento();
    $direccion = $paciente->getDireccion();
    $cui = $paciente->getCui();
    $sexo = $paciente->getSexo();
    $talla = $paciente->getTalla();


    $query->bind_param(
        "sssssssssss",
        $nombre,
        $usuario,
        $contrasena,
        $correo,
        $rol,
        $telefono,
        $fechaNacimiento,
        $direccion,
        $cui,
        $sexo,
        $talla
    );

    try {
        if ($query->execute()) {
            echo "Paciente registrado exitosamente.";
        } else {
            echo "Error al ejecutar el procedimiento almacenado: " . $query->error;
        }
        $query->close();
    } catch (Exception $e) {
        echo "Error";
    }
}
