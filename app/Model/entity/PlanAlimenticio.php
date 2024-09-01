<?php
 class PlanAlimenticio{
    private $id;
    private $fecha;
    private $idUsuario;
    private $totalKcal;

    public function __construct(
        $id,
        $fecha,
        $idUsuario,
        $totalKcal
    )
    {
        $this->id = $id;
        $this->fecha = $fecha;
        $this->idUsuario = $idUsuario;
        $this->totalKcal = $totalKcal;
        
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
     * Get the value of fecha
     */ 
    public function getFecha()
    {
        return $this->fecha;
    }

    /**
     * Set the value of fecha
     *
     * @return  self
     */ 
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;

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
     * Get the value of totalKcal
     */ 
    public function getTotalKcal()
    {
        return $this->totalKcal;
    }

    /**
     * Set the value of totalKcal
     *
     * @return  self
     */ 
    public function setTotalKcal($totalKcal)
    {
        $this->totalKcal = $totalKcal;

        return $this;
    }
 }
?>