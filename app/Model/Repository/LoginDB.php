<?php
require_once('ConexionDB.php');
require_once(__DIR__ . '/../entity/Credencial.php');
class CustomException extends Exception {}

function IniciarSesion($correo,  $contrasena) {
    $credencial = new Credencial();
    global $conn;
    $query = "SELECT id_usuario , nombre FROM usuario where correo = ? and contrasena = ?";
    if ($stmt = $conn->prepare($query)) {
        $stmt->bind_param('ss', $correo, $contrasena);
        $stmt->execute();
        $result = $stmt->get_result();
        $datos = array();
        while ($row = $result->fetch_assoc()) {
            $datos[] = $row;
        }
        $stmt->close();
        $credencial->setId($datos[0]['id_usuario']);
        $credencial->setName($datos[0]['nombre']);
        return $credencial;
    } else {
        throw new CustomException('Error al preparar la consulta SQL.');
    }
}


?>