<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

 
require_once('../Repository/ConexionDB.php');
require_once('../entity/Paciente.php');

class CustomException extends Exception {}

function perfil(Paciente $paciente) {
    global $conn;
    $correo = 'gerardo@gmail.com';
    $contrasena = '123456789';
    $query = 'SELECT * FROM perfil WHERE perfil.id_usuario = (SELECT login(?, ?))';

    if ($stmt = $conn->prepare($query)) {
        $stmt->bind_param('ss', $correo, $contrasena);
        $stmt->execute();
        $result = $stmt->get_result();
        $datos = array();
        while ($row = $result->fetch_assoc()) {
            $datos[] = $row;
        }
        $stmt->close();
        $paciente->setId($datos[0]['id_usuario']);
        $paciente->setNombre($datos[0]['nombre']);
        $paciente->setUsuario($datos[0]['usuario']);
        $paciente->setTelefono($datos[0]['telefono']);
        $paciente->setFechaNacimiento($datos[0]['fecha_nacimiento']);
        $paciente->setDireccion($datos[0]['direccion']);
        $paciente->setCui($datos[0]['cui']);
        $paciente->setSexo($datos[0]['sexo']);
        $paciente->setTalla($datos[0]['paciente']);
        echo "Resultado es:" . $paciente->getNombre();
        return $paciente;
    } else {
        throw new CustomException('Error al preparar la consulta SQL.');
    }
}

// Llamar a la función para probarla
$p = new Paciente(
    null,
    null,
    null,
    $contrasena,
    $correo,
    null,
    null,
    null,
    null,
    null,
    null,
    null

);
perfil($p);
?>

