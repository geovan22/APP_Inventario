<?php
    include_once('Framework/Medoo/Medoo.php');
	use Medoo\Medoo;
    class Conexion
    {
       public function ConexionDB()
       {
            $conexion = new Medoo([
            	// required
            	'database_type' => 'mysql',
            	'database_name' => 'seminario',
            	'server' => 'localhost',
            	'username' => 'root',
            	'password' => '',
             
            	// [optional]
            	'charset' => 'utf8mb4',
            	'collation' => 'utf8mb4_general_ci'
            ]);
            
            return $conexion;
       }
    }
?>