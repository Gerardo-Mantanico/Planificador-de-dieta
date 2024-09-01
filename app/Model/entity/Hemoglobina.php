<?php
class Hemoglobina
{
    private $idHemoglobina;
    private $idPaciente;
    private $fechaInicial;
    private $fechaVencimiento;

    public function __construct(
        $idHemoglobina,
        $idPaciente,
        $fechaInicial,
        $fechaVencimiento
    ) {
        $this->idHemoglobina = $idHemoglobina;
        $this->idPaciente = $idPaciente;
        $this->fechaInicial = $fechaInicial;
        $this->fechaVencimiento = $fechaVencimiento;
    }


    /**
     * Get the value of idHemoglobina
     */ 
    public function getIdHemoglobina()
    {
        return $this->idHemoglobina;
    }

    /**
     * Set the value of idHemoglobina
     *
     * @return  self
     */ 
    public function setIdHemoglobina($idHemoglobina)
    {
        $this->idHemoglobina = $idHemoglobina;

        return $this;
    }

    /**
     * Get the value of idPaciente
     */ 
    public function getIdPaciente()
    {
        return $this->idPaciente;
    }

    /**
     * Set the value of idPaciente
     *
     * @return  self
     */ 
    public function setIdPaciente($idPaciente)
    {
        $this->idPaciente = $idPaciente;

        return $this;
    }

    /**
     * Get the value of fechaInicial
     */ 
    public function getFechaInicial()
    {
        return $this->fechaInicial;
    }

    /**
     * Set the value of fechaInicial
     *
     * @return  self
     */ 
    public function setFechaInicial($fechaInicial)
    {
        $this->fechaInicial = $fechaInicial;

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
}
