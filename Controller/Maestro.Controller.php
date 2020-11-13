<?php
	class Maestro
    {
        public $smarty;
        public $library;
        public $consulta;
        public function __construct()
        {
            session_start();
            $this->smarty=new Smarty();
            //$this->smarty->caching = true;
            //$this->smarty->compile_check = true;
            $this->consulta=new Maestros();
            $this->library=new Library();
        }
        
        public function DireccionVistas()
        {
            $vista=$_GET['Vista'];
            if ($vista=='CrearTarea')
            {
              $vista='CrearTarea';
            }
            else if ($vista=='AsignarTarea')
            {
                $cursos=$this->consulta->ObtenerCursos($_SESSION['id']);
                
                $datos=array();
                
                foreach($cursos as $c) 
                {
                   array_push($datos,array(
                        "IdMalla"=>$c['id_Pro_Malla'],
                        "Curso"=>$c['Curso'],
                        "Grado"=>$this->consulta->BuscarGrado($c['Pro_grado_id_Pro_grado']),
                        "Nivel"=>$this->consulta->BuscarNivel($c['Pro_Nivel_id_Pro_Nivel']),
                        "Carrera"=>$this->consulta->BuscarCarrera($c['Pro_Carrera_id_Pro_Carrera']),
                        "Seccion"=>$this->consulta->BuscarSeccion($c['Pro_Seccion_id_Pro_Seccion'])
                   ));
                }
                $vista='AsignarTarea';
                $this->smarty->assign('datos',$datos);
            }
            else if($vista=='ListarActividad')
            {
                $vista='ListarActividad';
            }
            else if($vista=='ModoficarTarea')
            {
                $vista='ModoficarTarea';
            }
            else if($vista=='NotasMaestro')
            {
                $vista='NotasMaestro';
            }
                       
            
            $this->smarty->assign('vista',$vista);
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
        }
        
        public function CrearTarea()
        {
            //var_dump($_GET);
            
            if(isset($_GET['idMalla']))
            {
                $this->smarty->assign('datos',$_GET['datos']);
                $this->smarty->assign('idMalla',$_GET['idMalla']);
                
                $vista='CrearTarea';
            }
            else
            {
                //var_dump($_GET);
                //var_dump($_POST);
                
                $this->consulta->CrearActividad($_GET['id'],$_POST['nombre'],$_POST['descripcion'],$_POST['punteo'],$_POST['fechaCreacion'],$_POST['fechaEntrega']);
                //die();
                $cursos=$this->consulta->ObtenerCursos($_SESSION['id']);
                
                $datos=array();
                
                foreach($cursos as $c) 
                {
                   array_push($datos,array(
                                            "IdMalla"=>$c['id_Pro_Malla'],
                                            "Curso"=>$c['Curso'],
                                            "Grado"=>$this->consulta->BuscarGrado($c['Pro_grado_id_Pro_grado']),
                                            "Nivel"=>$this->consulta->BuscarNivel($c['Pro_Nivel_id_Pro_Nivel']),
                                            "Carrera"=>$this->consulta->BuscarCarrera($c['Pro_Carrera_id_Pro_Carrera']),
                                            "Seccion"=>$this->consulta->BuscarSeccion($c['Pro_Seccion_id_Pro_Seccion'])
                                    ));
                }
                $vista='AsignarTarea';
                $this->smarty->assign('datos',$datos);
            }
            
            $this->smarty->assign('vista',$vista);
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
        }
        
        public function ConsultarTarea()
        {
            $actividad=$this->consulta->MostrarActividadCurso($_GET['idMalla']);
            //var_dump($actividad);
            //die();
            $this->smarty->assign('actividad',$actividad);
            $this->smarty->assign('vista','ListarCursos');
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
            
        }
        
        public function ModificarTarea()//VerModificar
        {
            if(isset($_GET['idMalla']))
            {
                
                $tarea =$this->consulta->VerTarea($_GET['idMalla']);
                //var_dump($tarea);
                //die();
                $this->smarty->assign('tarea',$tarea);
                $vista='ModoficarTarea';
            }
            else
            {
                //var_dump($_GET);
                //echo "<br />";
                //var_dump($_POST);
                $this->consulta->ModificarTarea($_GET['id'],$_POST['nombre'], $_POST['descripcion'], $_POST['punteo'], $_POST['fechaCreacion'], $_POST['fechaEntrega']);
                
                
                //die();
                
                $cursos=$this->consulta->ObtenerCursos($_SESSION['id']);
                    
                $datos=array();
                
                foreach($cursos as $c) 
                {
                   array_push($datos,array(
                                            "IdMalla"=>$c['id_Pro_Malla'],
                                            "Curso"=>$c['Curso'],
                                            "Grado"=>$this->consulta->BuscarGrado($c['Pro_grado_id_Pro_grado']),
                                            "Nivel"=>$this->consulta->BuscarNivel($c['Pro_Nivel_id_Pro_Nivel']),
                                            "Carrera"=>$this->consulta->BuscarCarrera($c['Pro_Carrera_id_Pro_Carrera']),
                                            
                                    ));
                } 
                $vista='AsignarTarea';
                $this->smarty->assign('datos',$datos);
            }
            
            
            $this->smarty->assign('vista',$vista);
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
        }
        
        public function EliminarTarea()
        {
            //var_dump($_GET['idMalla']); 
            $this->consulta->EliminarTarea($_GET['idMalla']);
            
            $cursos=$this->consulta->ObtenerCursos($_SESSION['id']);
                
            $datos=array();
            
            foreach($cursos as $c) 
            {
               array_push($datos,array(
                                        "IdMalla"=>$c['id_Pro_Malla'],
                                        "Curso"=>$c['Curso'],
                                        "Grado"=>$this->consulta->BuscarGrado($c['Pro_grado_id_Pro_grado']),
                                        "Nivel"=>$this->consulta->BuscarNivel($c['Pro_Nivel_id_Pro_Nivel']),
                                        "Carrera"=>$this->consulta->BuscarCarrera($c['Pro_Carrera_id_Pro_Carrera'])
                                ));
            }
            $vista='AsignarTarea';
            $this->smarty->assign('datos',$datos);
            
            $this->smarty->assign('vista',$vista);
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
        }
        
        public function CalificarTarea()
        {
            $tareas=$this->consulta->BuscarTarea($_GET['idMalla'],$_SESSION['id']);
            $actividad=$this->consulta->BuscarActividad($_GET['idMalla']);
            $datos=array();
            
            foreach ($tareas as $t) 
            {
                $alumno=$this->consulta->BuscarAlumno($t['idPro_Alumno']);
                array_push($datos,array(
                        "idCalificar"=>$t['id_Pro_Tareas'],
                        "Carnet"=>$alumno[0]['Carnet'],
                        "Alumno"=>$alumno[0]['Nombre1'].", ".$alumno[0]['Apellido1'],
                        "Enlace"=>$t['Enlace']
                    )
                );
            }
            
            
            $this->smarty->assign('datos',$datos);
            $this->smarty->assign('actividad',$actividad);
            
            $this->smarty->assign('vista',"NotasMaestro");
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
            
        }
        
        public function CargarPunteo()
        {
            $cont=0;
            $id=0;
            $nota=0;
            foreach ($_POST as $p) 
            {
                //echo "valor P: ".$p."---Valor cont: ".$cont."<br />";
                if ($cont==0) 
                {
                    $nota=$p;
                    $cont++;
                }
                else
                {
                    $cont=0;
                    $id=$p;
                    
                    //echo "NoActividad: ".$id."   Nota: ".$nota."<br />";
                    
                    $this->consulta->CalificarTarea($id,$nota);
                }
                
            }
            
            $cursos=$this->consulta->ObtenerCursos($_SESSION['id']);
            
            
            $datos=array();
            
            foreach($cursos as $c) 
            {
               array_push($datos,array(
                    "IdMalla"=>$c['id_Pro_Malla'],
                    "Curso"=>$c['Curso'],
                    "Grado"=>$this->consulta->BuscarGrado($c['Pro_grado_id_Pro_grado']),
                    "Nivel"=>$this->consulta->BuscarNivel($c['Pro_Nivel_id_Pro_Nivel']),
                    "Carrera"=>$this->consulta->BuscarCarrera($c['Pro_Carrera_id_Pro_Carrera']),
                    "Seccion"=>$this->consulta->BuscarSeccion($c['Pro_Seccion_id_Pro_Seccion'])
                ));
            }
            $vista='AsignarTarea';
            $this->smarty->assign('vista',$vista);
            $this->smarty->assign('datos',$datos);
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl');  
        }
        
        public function VerNotas()
        {
            $notas=$this->consulta->VerNotas($_GET['Curso']);
            
            $datos=array();
            $actividad=array();
            $temp=array();
            $punteo=array();
                
            foreach($notas as $n) 
            {
               $estudiante=$this->consulta->BuscarAlumno($n['idPro_Alumno']); 
               $nom=$estudiante[0]['Nombre1'].", ".$estudiante[0]['Apellido1'];
               $acti=$this->consulta->VerTarea($n['idPro_Actividad']);
               array_push($datos,array
                    (
                        "alumno"=>$nom,
                        "tarea"=> $acti[0]['Nombre'],
                        "punteo"=>$n['Punteo']
                        
                    )
               );
               
               array_push($actividad,array
                    (
                        "tarea"=> $acti[0]['Nombre']
                    )
               );
               
        
            }
           
            $i=0;
            $arraySinDuplicados = [];
            foreach($actividad as $elemento) {
                if (!in_array($elemento, $arraySinDuplicados)) {
                    $arraySinDuplicados[] = $elemento;
                }
            }
            //echo"<br /><br />";
            //print_r($arraySinDuplicados);
            //echo "<br /><br />";
            //print_r($datos);
            //die();
            $this->smarty->assign('tareas',$arraySinDuplicados);
            $this->smarty->assign('datos',$datos);
            $this->smarty->assign('vista','VerNotas');
            $this->smarty->assign('title','Maestro');
            $this->smarty->display('Default.tpl'); 
    }
    
    /*
    *   manejo de secciones
    *   manejo de carnet
        ver grados
        separar carreras aparte
        ciclo escolar
        codigo de grado y curso
        ver parte contable por ciclos que sea independiente
    */
    }
?>



