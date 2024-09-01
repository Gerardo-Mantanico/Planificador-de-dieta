<?php
class Alimento
{
    private $id_alimento;
    private $nombre;
    private $indiceGlusemico;
    private $idCategoria;

    public function __construct(
        $id_alimento,
        $nombre,
        $indiceGlusemico,
        $idCategoria
    ) {
        $this->id_alimento = $id_alimento;
        $this->nombre = $nombre;
        $this->indiceGlusemico = $indiceGlusemico;
        $this->idCategoria = $idCategoria;
    }

    /**
     * Get the value of id_alimento
     */
    public function getId_alimento()
    {
        return $this->id_alimento;
    }

    /**
     * Set the value of id_alimento
     *
     * @return  self
     */
    public function setId_alimento($id_alimento)
    {
        $this->id_alimento = $id_alimento;

        return $this;
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
}
