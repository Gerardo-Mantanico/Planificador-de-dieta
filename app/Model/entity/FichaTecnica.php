<?php

class FichaTecnica{
    private $id;
    private $idUsuario;
    private $edad;
    private $peso;
    private $glucosa;
    private $imc;
    private $fechaCreacion;
    private $fechaVencimiento;
    private $estado;

    public function __construct(
        $id,
        $idUsuario,
        $edad,
        $peso,
        $glucosa,
        $imc,
        $fechaCreacion,
        $fechaVencimiento,
        $estado
    )
    {
        $this->id  = $id;
        $this->idUsuario =   $idUsuario;
        $this->edad = $edad;
        $this->peso = $peso;
        $this->glucosa = $glucosa;
        $this->imc = $imc;
        $this->fechaCreacion = $fechaCreacion;
        $this->fechaVencimiento = $fechaVencimiento;
        $this->estado =  $estado;

    }

    

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of idUsuario
     */ 
    public function getIdUsuario()
    {
        return $this->idUsuario;
    }

    /**
     * Set the value of idUsuario
     *
     * @return  self
     */ 
    public function setIdUsuario($idUsuario)
    {
        $this->idUsuario = $idUsuario;

        return $this;
    }

    /**
     * Get the value of edad
     */ 
    public function getEdad()
    {
        return $this->edad;
    }

    /**
     * Set the value of edad
     *
     * @return  self
     */ 
    public function setEdad($edad)
    {
        $this->edad = $edad;

        return $this;
    }

    /**
     * Get the value of peso
     */ 
    public function getPeso()
    {
        return $this->peso;
    }

    /**
     * Set the value of peso
     *
     * @return  self
     */ 
    public function setPeso($peso)
    {
        $this->peso = $peso;

        return $this;
    }

    /**
     * Get the value of glucosa
     */ 
    public function getGlucosa()
    {
        return $this->glucosa;
    }

    /**
     * Set the value of glucosa
     *
     * @return  self
     */ 
    public function setGlucosa($glucosa)
    {
        $this->glucosa = $glucosa;

        return $this;
    }

    /**
     * Get the value of imc
     */ 
    public function getImc()
    {
        return $this->imc;
    }

    /**
     * Set the value of imc
     *
     * @return  self
     */ 
    public function setImc($imc)
    {
        $this->imc = $imc;

        return $this;
    }

    /**
     * Get the value of fechaCreacion
     */ 
    public function getFechaCreacion()
    {
        return $this->fechaCreacion;
    }

    /**
     * Set the value of fechaCreacion
     *
     * @return  self
     */ 
    public function setFechaCreacion($fechaCreacion)
    {
        $this->fechaCreacion = $fechaCreacion;

        return $this;
    }

    /**
     * Get the value of fechaVencimiento
     */ 
    public function getFechaVencimiento()
    {
        return $this->fechaVencimiento;
    }

    /**
     * Set the value of fechaVencimiento
     *
     * @return  self
     */ 
    public function setFechaVencimiento($fechaVencimiento)
    {
        $this->fechaVencimiento = $fechaVencimiento;

        return $this;
    }

    /**
     * Get the value of estado
     */ 
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set the value of estado
     *
     * @return  self
     */ 
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }
}

?>