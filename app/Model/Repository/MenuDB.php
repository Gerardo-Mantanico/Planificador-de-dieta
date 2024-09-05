<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once('ConexionDB.php');
require_once('../entity/Menu.php');
require_once('../entity/Comida.php');
require_once('../entity/Alimento.php');
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
$id = $_GET["id"]; 
class CustomException extends Exception {}

function menu($id){
    global $conn;
    $menu = new Menu();
    $menu->setIdMenu($id);
    $query = "SELECT * FROM dieta WHERE id_menu = ?";
    if ($stmt = $conn->prepare($query)) {
        $id_menu = $menu->getIdMenu();
        $stmt->bind_param("i", $id_menu);
        $stmt->execute();
        $result = $stmt->get_result();
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $menu->getDesayuno()->setTipoComida("Desayuno");
        $menu->getDesayuno()->setId($data[0]['id_desayuno']);
        $menu->getDesayuno()->setHoraInicial($data[0]['d_hora_inicial']);
        $menu->getDesayuno()->setHorafinal($data[0]['d_hora_final']);
        $menu->getDesayuno()->setTotalKcal($data[0]['d_total_kcal']);
        $menu->getDesayuno()->setTipo($data[0]['d_tipo']);

        $menu->getRefaccionMotutina()->setTipoComida("Refacion matutino");
        $menu->getRefaccionMotutina()->setId($data[0]['id_refaccion_matutina']);
        $menu->getRefaccionMotutina()->setHoraInicial($data[0]['rm_hora_inicial']);
        $menu->getRefaccionMotutina()->setHorafinal($data[0]['rm_hora_final']);
        $menu->getRefaccionMotutina()->setTotalKcal($data[0]['rm_total_kcal']);
        $menu->getRefaccionMotutina()->setTipo($data[0]['rm_tipo']);

        $menu->getAlmuerzo()->setTipoComida("Almuerzo");
        $menu->getAlmuerzo()->setId($data[0]['id_almuerzo']);
        $menu->getAlmuerzo()->setHoraInicial($data[0]['a_hora_inicial']);
        $menu->getAlmuerzo()->setHorafinal($data[0]['a_hora_final']);
        $menu->getAlmuerzo()->setTotalKcal($data[0]['a_total_kcal']);
        $menu->getAlmuerzo()->setTipo($data[0]['a_tipo']);

        $menu->getRefaccionDespertina()->setTipoComida("Refacion vespertino");
        $menu->getRefaccionDespertina()->setId($data[0]['id_refaccion_despertina']);
        $menu->getRefaccionDespertina()->setHoraInicial($data[0]['rd_hora_inicial']);
        $menu->getRefaccionDespertina()->setHorafinal($data[0]['rd_hora_final']);
        $menu->getRefaccionDespertina()->setTotalKcal($data[0]['rd_total_kcal']);
        $menu->getRefaccionDespertina()->setTipo($data[0]['rd_tipo']);

        $menu->getCena()->setTipoComida("Cena");
        $menu->getCena()->setId($data[0]['id_cena']);
        $menu->getCena()->setHoraInicial($data[0]['c_hora_inicial']);
        $menu->getCena()->setHorafinal($data[0]['c_hora_final']);
        $menu->getCena()->setTotalKcal($data[0]['c_total_kcal']);
        $menu->getCena()->setTipo($data[0]['c_tipo']);
        
        $stmt->close();
   
    } else {
        throw new CustomException('Error al preparar la consulta SQL.');
    }
    $query = "SELECT * FROM comestibles WHERE id_alimento IN (SELECT dd.id_alimentos FROM  detalle_desayuno  dd WHERE  dd.id_desayuno = ?)";
    $comida = $menu->getDesayuno();
    tiempoComida($id, $comida, $conn, $query);

    $query = "SELECT * FROM comestibles WHERE id_alimento IN (SELECT dd.id_alimentos FROM  detalle_almuerzo  dd WHERE  dd.id_almuerzo =?)";
    $arreglo = $menu->getAlmuerzo();
    tiempoComida($id, $arreglo, $conn, $query);

    $query = "SELECT * FROM comestibles WHERE id_alimento IN (SELECT dd.id_alimentos FROM  detalle_cena  dd WHERE  dd.id_cena = ?)";
    $arreglo = $menu->getCena();
    tiempoComida($id, $arreglo, $conn, $query);

    $query = "SELECT * FROM comestibles WHERE id_alimento IN (SELECT dd.id_alimentos FROM  detalle_refaccion_matutina  dd WHERE dd.id_refaccion_matutina = ?)";
    $arreglo = $menu->getRefaccionMotutina();
    tiempoComida($id, $arreglo, $conn, $query);

    $query = "SELECT * FROM comestibles WHERE id_alimento IN (SELECT dd.id_alimentos FROM  detalle_refaccion_depertina  dd WHERE dd.id_refaccion_despertina = ?)";
    $arreglo = $menu->getRefaccionDespertina();
    tiempoComida($id, $arreglo, $conn, $query);
     
    header('Content-Type: application/json');
    echo json_encode($menu);
  
}

function tiempoComida($id,  $comida, $conn, $query)
{
    if ($stmt = $conn->prepare($query)) {
        $stmt->bind_param("i", $id);
        $stmt->execute();
        $result = $stmt->get_result();
        $datos = array();
        while ($row = $result->fetch_assoc()) {
            $datos[] = $row;
        }
        for ($i = 0; $i < count($datos); $i++) {
            $alimento = new Alimento(
                // $datos[$i]['id_alimento'],
                $datos[$i]['nombre'],
                $datos[$i]['indice_glucemico'],
                $datos[$i]['Cantidad'],
                $datos[$i]['categoria']
            );
             $comida->addAlimento($alimento);
        }
        $stmt->close();
    } else {
        throw new CustomException('Error al preparar la consulta SQL.');
    }
}

menu($gid);
