<?php
	class PruebaVista
    {
        public $smarty;
        
        public function __construct()
        {
            $this->smarty= new Smarty();    
        }
        
        public function RunVista()
        {
            $this->smarty->display('Director/alumno_salon.tpl');
        }
    }
?>