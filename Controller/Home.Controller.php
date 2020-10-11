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
            echo "en home controller";
            $this->smarty->assign('title','Colegio');
            $this->smarty->display('Default.tpl');
        }
        
        
    }
    
?>