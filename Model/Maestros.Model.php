<?php
	class Maestros
    {
        public $medoo;
        public $conexion;
        
        public function __construct()
        {
            $this->conexion=new Conexion();
            $this->medoo=$this->conexion->ConexionDB();    
        }
        
        public function CrearActividad($idCurso, $nombre, $descripcion, $punteo, $fcreacion, $fentrega)
        {
            return $this->medoo->insert("Pro_Actividad",
                    [
                        "Pro_Curso_idPro_Curso"=>$idCurso,
                        "Nombre"=>$nombre,
                        "Descripcion"=>$descripcion,
                        "Punteo"=>$punteo,
                        "FechaCreacion"=>$fcreacion,
                        "FechaEntrega"=>$fentrega
                    ]
                );
        }
        
        public function MostrarActividadCurso($id)
        {
            return $this->medoo->select("Pro_Actividad","*",
                [
                    "Pro_Curso_idPro_Curso"=>$id
                ]
            
            );
        }
        
        public function ObtenerCursos($id)
        {
            return $this->medoo->select("Pro_Malla","*",
                [
                    "Maestro"=>$id
                ]
            
            );
        }
        
        public function BuscarNivel($id)
        {
            return $this->medoo->select("Pro_Nivel","Nivel",
                [
                    "id_Pro_Nivel"=>$id
                ]
            
            );
        }
        
        public function BuscarGrado($id)
        {
            return $this->medoo->select("Pro_grado","grado",
                [
                    "id_Pro_grado"=>$id
                ]
            
            );
        }
        
         public function BuscarCarrera($id)
        {
            return $this->medoo->select("Pro_Carrera","Carrera",
                [
                    "id_Pro_Carrera"=>$id
                ]
            
            );
        }
        
        public function BuscarTarea($idActividad,$idMaestro)
        {
            return $this->medoo->select("Pro_Tareas","*",
                [
                    "idPro_Actividad"=>$idActividad,
                    "idPro_Maestro"=>$idMaestro
                ]
            
            );
        }
        
        public function BuscarActividad($idActividad)
        {
            return $this->medoo->select("Pro_Actividad","*",
                [
                    "id_Pro_Actividad"=>$idActividad
                ]
            
            );
        }
        
        public function BuscarAlumno($idAlumno)
        {
            return $this->medoo->select("Pro_UsuarioColegio","*",
                [
                    "id_Pro_Usuarios"=>$idAlumno
                ]
            );
        }
        
        public function BuscarSeccion($id)
        {
            return $this->medoo->select("Pro_Seccion","Seccion",
                [
                    "id_Pro_Seccion"=>$id
                ]
            
            );
        }
        
        public function EliminarTarea($id)
        {
            return $this->medoo->delete("Pro_Actividad",
                [
                    "id_Pro_Actividad"=>$id
                ]
            );
        }
        
        public function VerTarea($id)
        {
            return $this->medoo->select("Pro_Actividad","*",
                [
                    "id_Pro_Actividad"=>$id
                ]
            );
        }
        
        public function ModificarTarea($id,$nombre, $descripcion, $punteo, $fcreacion, $fentrega)
        {
            return $this->medoo->update("Pro_Actividad",
                [
                    "Nombre"=>$nombre,
                    "Descripcion"=>$descripcion,
                    "Punteo"=>$punteo,
                    "FechaCreacion"=>$fcreacion,
                    "FechaEntrega"=>$fentrega
                ],
                [
                    "id_Pro_Actividad"=>$id
                ]
            );
        }
        
        public function CalificarTarea($tarea, $punteo)
        {
            return $this->medoo->update("Pro_Tareas",
                [
                    "Punteo"=>$punteo
                ],
                [
                    "id_Pro_Tareas"=>$tarea
                ]
            );
        }
        
        public function VerNotas($idCurso) 
        {
            return $this->medoo->select("Pro_Tareas","*",
                [
                    "idPro_Curso"=>$idCurso
                ]
            );
        }
        
    }
?>