<?php
 class menu {
    private $idMenu;
    private $idPlan;
    private $img;
    private $subTotalKcal;
    private $calificacion;

    public function __construct(
        $idMenu,
        $idPlan,
        $img,
        $subTotalKcal,
        $calificacion
    )
    {
        $this->idMenu = $idMenu;
        $this->idPlan = $idPlan;
        $this->img = $img;
        $this->subTotalKcal = $subTotalKcal;
        $this->calificacion = $calificacion;
    }

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
     * Get the value of idPlan
     */ 
    public function getIdPlan()
    {
        return $this->idPlan;
    }

    /**
     * Set the value of idPlan
     *
     * @return  self
     */ 
    public function setIdPlan($idPlan)
    {
        $this->idPlan = $idPlan;

        return $this;
    }

    /**
     * Get the value of img
     */ 
    public function getImg()
    {
        return $this->img;
    }

    /**
     * Set the value of img
     *
     * @return  self
     */ 
    public function setImg($img)
    {
        $this->img = $img;

        return $this;
    }

    /**
     * Get the value of subTotalKcal
     */ 
    public function getSubTotalKcal()
    {
        return $this->subTotalKcal;
    }

    /**
     * Set the value of subTotalKcal
     *
     * @return  self
     */ 
    public function setSubTotalKcal($subTotalKcal)
    {
        $this->subTotalKcal = $subTotalKcal;

        return $this;
    }

    /**
     * Get the value of calificacion
     */ 
    public function getCalificacion()
    {
        return $this->calificacion;
    }

    /**
     * Set the value of calificacion
     *
     * @return  self
     */ 
    public function setCalificacion($calificacion)
    {
        $this->calificacion = $calificacion;

        return $this;
    }

 }
?>