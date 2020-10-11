<?php
	class Estudiante
    {
        public $medoo;
        public $conexion;
        
        public function __construct()
        {
            $this->conexion=new Conexion();
            $this->medoo=$this->conexion->ConexionDB();    
        }
        
        public function BuscarEstudiante($id)
        {
            return $this->medoo->select(
                "Pro_InscripcionEstudiante",
                "*",
                [
                    "Pro_UsuarioColegio_id_Pro_Usuarios"=>$id
                ]
            );
        }
        
        public function BuscarMaya($idCarrera, $idGrado, $idNivel)
        {
            return $this->medoo->select(
                "Pro_Malla",
                "*",
                [
                    "Pro_Carrera_id_Pro_Carrera"=>$idCarrera,
                    "Pro_grado_id_Pro_grado"=>$idGrado,
                    "Pro_Nivel_id_Pro_Nivel"=>$idNivel
                ]            
            );
        }
        
        public function BuscarActividad($id)
        {
            return $this->medoo->select(
                "Pro_Actividad",
                "*",
                [
                    "Pro_Curso_idPro_Curso"=>$id
                ]
            );
        }
        
        public function BuscarCurso($curso)
        {
            return $this->medoo->select(
                "Pro_Malla",
                "*",
                [
                    "id_Pro_Malla"=>$curso
                ]
            );
        }
        
        public function GuardarActividad($actividad,$curso,$maestro,$alumno,$nivel,$grado,$carrera,$enlace)
        {
            return $this->medoo->insert(
                "Pro_Tareas",
                [
                    "idPro_Actividad"=>$actividad,
                    "idPro_Curso"=>$curso,
                    "idPro_Maestro"=>$maestro,
                    "idPro_Alumno"=>$alumno,
                    "idPro_Nivel"=>$nivel,
                    "idPro_Grado"=>$grado,
                    "idPro_Carrera"=>$carrera,
                    "Enlace"=>$enlace
                    
                ]
            );
        }
    }
 ?>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 