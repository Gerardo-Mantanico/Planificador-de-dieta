<?php
    class Comida{
        private $tipoComida;
        private $horaInicial;
        private $horafinal;
        private $totalKcal;
        private $tipo;
        private $arrayDeAlimentos = []; 
        private $img;
        private $calificacion;

        
        /**
         * Get the value of tipoComida
         */ 
        public function getTipoComida()
        {
                return $this->tipoComida;
        }

        /**
         * Set the value of tipoComida
         *
         * @return  self
         */ 
        public function setTipoComida($tipoComida)
        {
                $this->tipoComida = $tipoComida;

                return $this;
        }

        /**
         * Get the value of horaInicial
         */ 
        public function getHoraInicial()
        {
                return $this->horaInicial;
        }

        /**
         * Set the value of horaInicial
         *
         * @return  self
         */ 
        public function setHoraInicial($horaInicial)
        {
                $this->horaInicial = $horaInicial;

                return $this;
        }

        /**
         * Get the value of horafinal
         */ 
        public function getHorafinal()
        {
                return $this->horafinal;
        }

        /**
         * Set the value of horafinal
         *
         * @return  self
         */ 
        public function setHorafinal($horafinal)
        {
                $this->horafinal = $horafinal;

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

        /**
         * Get the value of tipo
         */ 
        public function getTipo()
        {
                return $this->tipo;
        }

        /**
         * Set the value of tipo
         *
         * @return  self
         */ 
        public function setTipo($tipo)
        {
                $this->tipo = $tipo;

                return $this;
        }

        /**
         * Get the value of arrayDeAlimentos
         */ 
        public function getArrayDeAlimentos()
        {
                return $this->arrayDeAlimentos;
        }

        /**
         * Set the value of arrayDeAlimentos
         *
         * @return  self
         */ 
        public function setArrayDeAlimentos($arrayDeAlimentos)
        {
                $this->arrayDeAlimentos = $arrayDeAlimentos;

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