<?php
    class Home
    {
        public $smarty;
        
        public function __construct()
        {
            $this->smarty = new Smarty();
            $this->caching = true;
            //$this->compile_check = true;
        }
        
        public function Inicio()
        {
            
            $this->smarty->display('Default.tpl');
        }
        
        
    }
    
?>