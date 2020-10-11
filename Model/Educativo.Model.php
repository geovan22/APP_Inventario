<?php
	Class Educativo                   
    {
        public $medoo;
        public $conexion;
        
        public function __construct()
        {
          
            $this->conexion=new Conexion();
            $this->medoo=$this->conexion->ConexionDB();    
        }
        
        /**
         *  Actualizar
         */
         
         public function ActualizarMalla($id,$carrera,$grado,$nivle,$curso)
         {
            return $this->medoo->update("Pro_Malla",[
                    "Pro_Carrera_id_Pro_Carrera"=>$carrera,
                    "Pro_grado_id_Pro_grado"=>$grado,
                    "Pro_Nivel_id_Pro_Nivel"=>$nivle,
                    "Curso"=>$curso
                ],
                [
                    "id_Pro_Malla"=>$id
                ]
            );
         }
        
        /**
         *  Crear
         */
         
          public function CrearAula($carrera,$grado,$nivle,$aula)
          {
            return $this->medoo->insert("Pro_Asignacion",[
                    "Carrera"=>$carrera,
                    "Grado"=>$grado,
                    "Nivel"=>$nivle,
                    "Aula"=>$aula
                ]
            );
          }
         
         public function CrearMalla($carrera,$grado,$nivle,$curso,$seccion,$ciclo)
         {
            return $this->medoo->insert("Pro_Malla",[
                    "Pro_Carrera_id_Pro_Carrera"=>$carrera,
                    "Pro_grado_id_Pro_grado"=>$grado,
                    "Pro_Nivel_id_Pro_Nivel"=>$nivle,
                    "Curso"=>$curso,
                    "Pro_Seccion_id_Pro_Seccion"=>$seccion,
                    "Pro_Ciclo_id_Pro_Ciclo"=>$ciclo
                    
                ]
            );    
         }
        public function CrearPuesto($id)
        {
            return $this->medoo->insert("Pro_Puesto",[
                "id_Pro_Puesto"=>$id
            ]);
        }
        
        public function CrearNivel($nivel)
        {
            return $this->medoo->insert("Pro_Nivel",[
                "Nivel"=>$nivel
            ]);
        }
        
        public function CrearGrado($grado)
        {
            return $this->medoo->insert("Pro_grado",[
                "Grado"=>$grado
            ]);
        }
        
        public function CrearCarrera($carrera)
        {
            return $this->medoo->insert("Pro_Carrera",[
                "Carrera"=>$carrera
            ]);
        }
         
        public function CrearCiclo($ciclo) 
        {
              return $this->medoo->insert(
                    "Pro_Ciclo",
                    [
                         "Ciclo"=>$ciclo
                    ]
              );
        }
        
        public function CrearSeccion($seccion) 
        {
              return $this->medoo->insert(
                    "Pro_Seccion",
                    [
                         "Seccion"=>$seccion
                    ]
              );
        }  
         
         /**
          * Buscar
          */
        public function BuscarPuesto($id)
        {
            return $this->medoo->select("Pro_Puesto",
                "*",
                [
                    "id_Pro_Puesto"=>$id
                ]
            );
            
        }
        
        
            
        public function BuscarPuesto2($puesto)
        {
            return $this->medoo->select("Pro_Puesto",
                "*",
                [
                    "Puesto"=>$puesto
                ]
            );
            
        }
        
        public function BuscarGrado($grado)
         {
            return $this->medoo->select("Pro_grado",
                "*",
                [
                    "Grado"=>$grado
                ]
            );
         }
         
         public function BuscarCarrera($carrera)
         {
            return $this->medoo->select("Pro_Carrera",
                "*",
                [
                    "Carrera"=>$carrera
                ]
            );
         }
         
         public function BuscarNivel($nivel)
         {
            return $this->medoo->select("Pro_Nivel",
                "*",
                [
                    "Nivel"=>$nivel
                ]
            );
         }
         
         public function BuscarNivel2($nivel)
         {
            return $this->medoo->select("Pro_Nivel",
                "*",
                [
                    "Nivel"=>$nivel
                ]
            );
         }
         
         public function BuscarCiclo($id)
         {
            return $this->medoo->select("Pro_Ciclo",
                "*",
                [
                    "id_Pro_Ciclo"=>$id
                ]
            );
         }
         
         public function BuscarCiclo2($ciclo)
         {
            return $this->medoo->select("Pro_Ciclo",
                "*",
                [
                    "Ciclo"=>$ciclo
                ]
            );
         }
         
         public function BuscarSeccion($seccion)
         {
            return $this->medoo->select("Pro_Seccion",
                "*",
                [
                    "Seccion"=>$seccion
                ]
            );
         }
         
         
         
         public function BuscarMalla($nivel, $grado, $carrera,$seccion)
         {
            return $this->medoo->select("Pro_Malla","*",
                [
                    "Pro_Carrera_id_Pro_Carrera"=>$carrera,
                    "Pro_grado_id_Pro_grado"=>$grado,
                    "Pro_Nivel_id_Pro_Nivel"=>$nivel,
                    "Pro_Seccion_id_Pro_Seccion" =>$seccion
                ]
            );
         }
         
         public function BuscarMallaCurso($id)
         {
            return $this->medoo->select("Pro_Malla","*",
                [
                    "id_Pro_Malla"=>$id
                    
                ]
            );
         }
          
          /**
           *  Ver
           */
           
         
         
         public function VerGrado()
         {
            return $this->medoo->select("Pro_grado",
                "Grado"
            );
         }
         
         public function VerCarrera()
         {
            return $this->medoo->select("Pro_Carrera",
                
                    "Carrera"
            );
         }
         
         public function VerNivel()
         {
            return $this->medoo->select("Pro_Nivel",
                "Nivel"
            );
         }
         
         public function VerCiclo()
         {
            return $this->medoo->select("Pro_Ciclo",
                "Ciclo"
            );
         }
         
         public function VerSeccion()
         {
            return $this->medoo->select("Pro_Seccion",
                "Seccion"
            );
         }
         /**
         * Eliminar
         */ 
           
           
         public function EliminarMalla($id)
         {
            return $this->medoo->delete("Pro_Malla",
                [
                    "id_Pro_Malla"=>$id
                ]
            );
         }
         
          /**
         * Actualizar
         */ 
    }
?>