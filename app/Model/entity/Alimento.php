<?php
class Alimento implements JsonSerializable {
    private $nombre;
    private $indiceGlusemico;
    private $cantidad;
    private $idCategoria;

    public function __construct(
        $nombre,
        $indiceGlusemico,
        $cantidad,
        $idCategoria
    ) {
        $this->nombre = $nombre;
        $this->indiceGlusemico = $indiceGlusemico;
        $this->cantidad = $cantidad;
        $this->idCategoria = $idCategoria;
    }

 
    public function jsonSerialize(): mixed {
        return [
            'nombre' => $this->nombre,
            'indice glusemico' => $this->indiceGlusemico,
            'cantidad' => $this->cantidad,
            'categorioa' => $this->idCategoria,
        ];
    }


    /**
     * Get the value of nombre
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set the value of nombre
     *
     * @return  self
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get the value of indiceGlusemico
     */
    public function getIndiceGlusemico()
    {
        return $this->indiceGlusemico;
    }

    /**
     * Set the value of indiceGlusemico
     *
     * @return  self
     */
    public function setIndiceGlusemico($indiceGlusemico)
    {
        $this->indiceGlusemico = $indiceGlusemico;

        return $this;
    }

    /**
     * Get the value of idCategoria
     */
    public function getIdCategoria()
    {
        return $this->idCategoria;
    }

    /**
     * Set the value of idCategoria
     *
     * @return  self
     */
    public function setIdCategoria($idCategoria)
    {
        $this->idCategoria = $idCategoria;

        return $this;
    }

    /**
     * Get the value of cantidad
     */ 
    public function getCantidad()
    {
        return $this->cantidad;
    }

    /**
     * Set the value of cantidad
     *
     * @return  self
     */ 
    public function setCantidad($cantidad)
    {
        $this->cantidad = $cantidad;

        return $this;
    }
}
