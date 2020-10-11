<?php
	class Alumno
    {
        public $smarty;
        public $usuario;
        public $estudiante;
        public $consulta;
        
        public function __construct()
        {
            $this->smarty =new Smarty();
            $this->usuario= new Usuario();
            $this->estudiante=new Estudiante();
            $this->consulta=new Maestros();
            session_start();
        }
       
        
        public function DireccionVista()
        {
            
            $vista=$_GET['vista'];
            if($vista=='Tareas')
            {
                $datos=$this->usuario->BuscarUs($_SESSION['id']);
                $alumno=$this->estudiante->BuscarEstudiante($_SESSION['id']);
                $cursos=$this->estudiante->BuscarMaya($alumno[0]['Pro_Carrera_id_Pro_Carrera'],$alumno[0]['Pro_grado_id_Pro_grado'],$alumno[0]['Pro_Nivel_id_Pro_Nivel']);
                
                $this->smarty->assign('cursos',$cursos);
                $this->smarty->assign('user',$datos);
            }
            if($vista=='TareaCurso')
            {
                $vista='TareaCurso';
            }
            if($vista=='SubirTarea')
            {
                $vista='SubirTarea';
            }
            $this->smarty->assign('title','Alumno');
            $this->smarty->assign('vista',$vista);
            $this->smarty->display('Default.tpl');
        }
        
        public function ListarActividad()
        {

            $tareas=$this->estudiante->BuscarActividad($_GET['idMalla']);
            
            
            $this->smarty->assign('curso',$_GET['curso']);
            $this->smarty->assign('tareas',$tareas);
            
            $this->smarty->assign('title','Alumno');
            $this->smarty->assign('vista','TareaCurso');
            $this->smarty->display('Default.tpl');
        }
        
        Public function SubirTarea()
        {
            $this->smarty->assign('idActividad',$_GET['IdActividad']);
            $this->smarty->assign('idCurso',$_GET['actividad']);
            
            $this->smarty->assign('title','Alumno');
            $this->smarty->assign('vista','SubirTarea');
            $this->smarty->display('Default.tpl');
        }
        
        public function SubirEnlace()
        {
            $actividad=$this->estudiante->BuscarCurso($_GET['idCurso']);
            
            $this->estudiante->GuardarActividad($_GET['idActividad'],$_GET['idCurso'],$actividad[0]['Maestro'],$_SESSION['id'],$actividad[0]['Pro_Nivel_id_Pro_Nivel'],$actividad[0]['Pro_grado_id_Pro_grado'],$actividad[0]['Pro_Carrera_id_Pro_Carrera'],$_POST['enlace']);
            
            $datos=$this->usuario->BuscarUs($_SESSION['id']);
            $alumno=$this->estudiante->BuscarEstudiante($_SESSION['id']);
            $cursos=$this->estudiante->BuscarMaya($alumno[0]['Pro_Carrera_id_Pro_Carrera'],$alumno[0]['Pro_grado_id_Pro_grado'],$alumno[0]['Pro_Nivel_id_Pro_Nivel']);
            
            $this->smarty->assign('cursos',$cursos);
            $this->smarty->assign('user',$datos);
            
            $this->smarty->assign('title','Alumno');
            $this->smarty->assign('vista','Tareas');
            $this->smarty->display('Default.tpl');
        }
    }
?>

















