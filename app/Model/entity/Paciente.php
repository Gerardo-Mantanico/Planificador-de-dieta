<?php
require_once 'Persona.php';
class Paciente extends Persona
{
    private $telefono;
    private $fechaNacimiento;
    private $direccion;
    private $cui;
    private $sexo;
    private $talla;

    public function __construct(
        $id,
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
    ) {

        parent::__construct($id, $nombre, $usuario, $contrasena, $correo, $rol);

        $this->direccion = $direccion;
        $this->cui = $cui;
        $this->sexo = $sexo;
        $this->talla = $talla;
        $this->telefono = $telefono;
        $this->fechaNacimiento = $fechaNacimiento;
    }


    public function getTelefono()
    {
        return $this->telefono;
    }


    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    public function getFechaNacimiento()
    {
        return $this->fechaNacimiento;
    }

    public function setFechaNacimiento($fechaNacimiento)
    {
        $this->fechaNacimiento = $fechaNacimiento;

        return $this;
    }


    public function getDireccion()
    {
        return $this->direccion;
    }


    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;

        return $this;
    }

    public function getCui()
    {
        return $this->cui;
    }

    public function setCui($cui)
    {
        $this->cui = $cui;

        return $this;
    }


    public function getSexo()
    {
        return $this->sexo;
    }


    public function setSexo($sexo)
    {
        $this->sexo = $sexo;

        return $this;
    }


    public function getTalla()
    {
        return $this->talla;
    }

    public function setTalla($talla)
    {
        $this->talla = $talla;

        return $this;
    }
}
