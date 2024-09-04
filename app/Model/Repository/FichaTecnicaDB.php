<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once('ConexionDB.php');
require_once('../../Model/entity/FichaTecnica.php');
class CustomException extends Exception {}

function registrar(FichaTecnica $ficha)
{
    echo "id". $ficha->getIdUsuario();
    global $conn;
    $query = $conn->prepare("CALL  insert_ficha_tecnica(?,?,?,?)");
    $id_usuario = $ficha->getIdUsuario();
    $edad = $ficha->getEdad();
    $peso = $ficha->getPeso();
    $glucosa = $ficha->getGlucosa();

    $query->bind_param(
        "ssss",
        $id_usuario,
        $edad,
        $peso,
        $glucosa
    );

    try {
        if ($query->execute()) {
            echo "Registrado exitosamente.";
        } else {
            echo "Error al ejecutar el procedimiento almacenado: " . $query->error;
        }
        $query->close();
    } catch (Exception $e) {
        echo "Error" . $e;
    }
}
