<?php
	class ProEducativo
    {
        public $educativo;
        public $smarty;
                                                   
        
        public function __construct()              
        {
            $this->educativo=new Educativo();
            $this->smarty=new Smarty();
            $this->caching = true;
            $this->compile_check = true;
        }
        
        public function CrearDatos()
        {
            $nivel=$_POST['nivel'];
            $grado=$_POST['grado'];
            $carrera=$_POST['carrera'];
            $ciclo=$_POST['ciclo'];
            $seccion=$_POST['seccion'];
            
            if($nivel!="")
            {
                $this->educativo->CrearNivel($nivel);
            }
            if($grado!="")
            {
                $this->educativo->CrearGrado($grado);
            }
            if($carrera!="" && $seccion!="")
            {
               $this->educativo->CrearCarrera($carrera);
            }
            if($ciclo!="")
            {
               $this->educativo->CrearCiclo($ciclo);
            }
            if($seccion!="")
            {
               $this->educativo->CrearSeccion($seccion);
            }
  
            $this->smarty->assign('vista','Grados');
            $this->smarty->assign('title','Director');
            $this->smarty->display('Default.tpl');
        }
        
        
    }
?>