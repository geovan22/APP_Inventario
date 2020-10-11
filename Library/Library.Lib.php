<?php
	Class Library
    {
        
        public $medoo;
        public $conexion;
        
        public function __construct()
        {
            $this->conexion=new Conexion();
            $this->medoo=$this->conexion->ConexionDB();    
        }
        
        public function GeneraPassword()
        {
            do
            {
                $pass=$this->CreaPassword(); 
            }
            while(count($this->BuscarPassword($pass)));
            return $pass;
        }
        
        private function CreaPassword()
        {
            $cadena_base =  'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
            $cadena_base .= '0123456789' ;
            $cadena_base .= '@.';
        
            $password = '';
            $limite = strlen($cadena_base) - 1;
        
            for ($i=0; $i < 8; $i++)
                $password .= $cadena_base[rand(0, $limite)];
        
            return $password;
        }
        
        private function BuscarPassword($pass)
        {
            return $this->medoo->select("Pro_UsuarioColegio",
                "*",
                [
                    "Pass"=>$pass
                ]
            
            );
        }
    }
?>