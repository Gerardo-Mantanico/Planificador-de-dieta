<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
require_once('../Repository/ConexionDB.php');
require_once('../entity/Paciente.php');

class CustomException extends Exception {}
$id = $_GET["id"]; 
function perfil($id) {
    $paciente  = new Paciente(null,null,null,null,null,null,null,null,null,null,null,null);
    global $conn;
    $query = 'SELECT * FROM perfil WHERE perfil.id_usuario = ?';
    if ($stmt = $conn->prepare($query)) {
        $stmt->bind_param('s', $id );
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
        $paciente->setCorreo($datos[0]['correo']);
        $paciente->setContrasena("*******");
        $paciente->setRol("P");
        $paciente->setTelefono($datos[0]['telefono']);
        $paciente->setFechaNacimiento($datos[0]['fecha_nacimiento']);
        $paciente->setDireccion($datos[0]['direccion']);
        $paciente->setCui($datos[0]['cui']);
        $paciente->setSexo($datos[0]['sexo']);
        $paciente->setTalla($datos[0]['paciente']);

        header('Content-Type: application/json');
        echo json_encode($paciente);
    } else {
        throw new CustomException('Error al preparar la consulta SQL.');
    }
}

perfil($id);
?>

