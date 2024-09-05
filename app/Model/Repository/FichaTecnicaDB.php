<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
require_once('ConexionDB.php');
require_once('../../Model/entity/FichaTecnica.php');
class CustomException extends Exception {}

/*function registrar(FichaTecnica $ficha)
{
    echo "id" . $ficha->getIdUsuario();
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

    */
    function obtenerFichaTecnica($id)
    {
        global $conn;
        $ficha = new FichaTecnica();
        $query = $conn->prepare("SELECT * FROM `ficha_tecnica` WHERE id_fecha_tecnica= ?");
        if ($stmt = $conn->prepare($query)) {
            $stmt->bind_param('s', $id);
            $stmt->execute();
            $result = $stmt->get_result();
            $datos = array();
            while ($row = $result->fetch_assoc()) {
                $datos[] = $row;
            }
            $stmt->close();

            $ficha->setEdad($datos[0]['edad']);
            $ficha->setPeso($datos[0]['peso']);
            $ficha->setGlucosa($datos[0]['glucosa']);
            $ficha->setImc($datos[0]['imc']);
            $ficha->setFechaCreacion($datos[0]['fecha_creacion']);
            $ficha->setFechaVencimiento($datos[0]['fecha_finalizacion']);
          
          /*  $estado = $datos[0]['estado'];
            if ($estado == 1) {
                $ficha->setEstado("activo");
            } else
                $ficha->setEstado("vencido");*/

            header('Content-Type: application/json');
            echo json_encode($ficha);
        }
    }
//}
obtenerFichaTecnica(1);
?>