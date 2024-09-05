<?php
require_once('Comida.php');
 class menu  implements JsonSerializable   {
    private $idMenu;
    private $desayuno;
    private $almuerzo;
    private $cena;
    private $refaccionMotutina;
    private $refaccionDespertina;
    /**
     * Get the value of idMenu
     */ 
     public function __construct() {
        $this->desayuno = new Comida();
        $this->almuerzo = new Comida();
        $this->cena= new Comida();
        $this->refaccionMotutina = new Comida();
        $this->refaccionDespertina = new Comida();
    }

    public function jsonSerialize(): mixed {
        return [
            'id' => $this->idMenu,
            'desayuno' => $this->desayuno,
            'almuerzo' => $this->almuerzo,
            'cena' => $this->cena,
            'refaccionMatutina' => $this->refaccionMotutina,
            'refaccionDespertina' => $this->refaccionDespertina,
        ];
    }
    

    public function getIdMenu()
    {
        return $this->idMenu;
    }

    /**
     * Set the value of idMenu
     *
     * @return  self
     */ 
    public function setIdMenu($idMenu)
    {
        $this->idMenu = $idMenu;

        return $this;
    }

    /**
     * Get the value of desayuno
     */ 
    public function getDesayuno()
    {
        return $this->desayuno;
    }

    /**
     * Set the value of desayuno
     *
     * @return  self
     */ 
    public function setDesayuno($desayuno)
    {
        $this->desayuno = $desayuno;

        return $this;
    }

    /**
     * Get the value of almuerzo
     */ 
    public function getAlmuerzo()
    {
        return $this->almuerzo;
    }

    /**
     * Set the value of almuerzo
     *
     * @return  self
     */ 
    public function setAlmuerzo($almuerzo)
    {
        $this->almuerzo = $almuerzo;

        return $this;
    }

    /**
     * Get the value of cena
     */ 
    public function getCena()
    {
        return $this->cena;
    }

    /**
     * Set the value of cena
     *
     * @return  self
     */ 
    public function setCena($cena)
    {
        $this->cena = $cena;

        return $this;
    }

    /**
     * Get the value of refaccionMotutina
     */ 
    public function getRefaccionMotutina()
    {
        return $this->refaccionMotutina;
    }

    /**
     * Set the value of refaccionMotutina
     *
     * @return  self
     */ 
    public function setRefaccionMotutina($refaccionMotutina)
    {
        $this->refaccionMotutina = $refaccionMotutina;

        return $this;
    }

    /**
     * Get the value of refaccionDespertina
     */ 
    public function getRefaccionDespertina()
    {
        return $this->refaccionDespertina;
    }

    /**
     * Set the value of refaccionDespertina
     *
     * @return  self
     */ 
    public function setRefaccionDespertina($refaccionDespertina)
    {
        $this->refaccionDespertina = $refaccionDespertina;

        return $this;
    }
 }
?>