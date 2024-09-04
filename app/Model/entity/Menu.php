<?php
 class menu {
    private $idMenu;
    private $arrayDeComidas = []; 
    /**
     * Get the value of idMenu
     */ 
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
     * Get the value of arrayDeComidas
     */ 
    public function getArrayDeComidas()
    {
        return $this->arrayDeComidas;
    }

    /**
     * Set the value of arrayDeComidas
     *
     * @return  self
     */ 
    public function setArrayDeComidas($arrayDeComidas)
    {
        $this->arrayDeComidas = $arrayDeComidas;

        return $this;
    }
 }
?>