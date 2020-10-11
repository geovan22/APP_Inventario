<?php

class Director
{
public $smarty;
public $usuasrio;
public $educativo;
public $library;
public function __construct()
{
$this->smarty=new Smarty();
//$this->smarty->caching = true;
//$this->smarty->compile_check = true;
$this->usuasrio=new Usuario();
$this->educativo=new Educativo();
$this->library=new Library();
}

public function CrearUsuario()
{
$dpi=$_POST['dpi'];
$usuario=$this->usuasrio->BuscarAlumno($dpi);

if(count($usuario)==1)
{
$puesto= $this->usuasrio->BuscarPuesto($dpi[0]['Pro_Puesto_id_Por_Puesto']);
$pass=$this->library->GeneraPassword();
echo "puesto: ".$puesto[0]['Puesto'],"<br>";
if($puesto[0]['Puesto']=='Alumno')
{
$dato=$this->usuasrio->BuscarInscrito($usuario[0]['id_Pro_Usuarios']);
$ciclo=$this->educativo->BuscarCiclo($dato[0]['Pro_Ciclo_id_Pro_Ciclo']);
$user=$ciclo[0]['Ciclo'].$dato[0]['Pro_Carrera_id_Pro_Carrera'].$dato[0]['Pro_grado_id_Pro_grado'].$dato[0]['Pro_Nivel_id_Pro_Nivel'].$usuario[0]['id_Pro_Usuarios'];
echo "user alumno: ".$user."<br>";
}
else if(count($usuario)==1)
{
$n1=$usuario[0]['Nombre1'];
$a1=$usuario[0]['Apellido1'];
$a2=$usuario[0]['Apellido1'];

$user=strtolower($n1[0].$a1.$a2[0]);
$carnet=  "2020".$usuario[0]['id_Pro_Usuarios'].$usuario[0]['Pro_Puesto_id_Pro_Puesto'];
}




$this->usuasrio->CrearUsuario($usuario[0]['id_Pro_Usuarios'],$user,$pass,$carnet);
$this->smarty->assign('carnet',$carnet);
$this->smarty->assign('user',$user);
$this->smarty->assign('pass',$pass);

}
else
{
$this->smarty->assign('user','Usuario no encontrado');
}
$this->smarty->assign('vista','Usuario');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function DireccionVistas() //Grados
{

$vista=$_GET['Vista'];
if($vista=="Tablero")
$vista="Default";
else if($vista=="Empleado")
{
$vista="Empleado";
$puesto=$this->usuasrio->VerPuestos();
$this->smarty->assign('puesto',$puesto);
}
else if($vista=="Maestro")
$vista="Maestro";
else if($vista=="Alumno")
{
$vista="Alumno";

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();


$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);
}
else if($vista=="Usuario")
$vista="Usuario";
else if($vista=="Grados")
$vista="Grados";
else if($vista=="Consultas")
{
$vista="Consultas";
$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();

$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);
}
else if($vista=="Curso")
{
$vista="Curso";

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();

$this->smarty->assign('ciclo',$ciclo);
$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

}
else if($vista=="Asignacion")
{
$vista="Asignacion";


}
else if($vista=="ConsultaMalla")
{
$vista="ConsultaMalla";

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$seccion=$this->educativo->VerSeccion();


$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
}
else if($vista=="ActualizarMalla")
{
$vista="ActualizarConsultaMalla";
}
else if($vista=="AsignarMaestro")
{
$vista="AsignarMaestro";
}
else if($vista=="AsignacionSalon")
{
$vista="AsignacionSalon";

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();



$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
}
else if($vista=="ConsultaNivel")
{
$vista="ConsultaNivel";
$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$seccion=$this->educativo->VerSeccion();
$ciclo=$this->educativo->VerCiclo();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('ciclo',$ciclo);
}


$this->smarty->assign('vista',$vista);
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function GuardarUsuario()
{
$puesto=$_GET['puesto'];

$n1=$_POST['n1'];
$n2=$_POST['n2'];
$n3=$_POST['n3'];
$a1=$_POST['a1'];
$a2=$_POST['a2'];
$cui=$_POST['cui'];
$fecha=$_POST['fechanac'];
$dir=$_POST['dir'];
$tel=$_POST['tel'];
$email=$_POST['email'];
$genero=$_POST['genero'];
$seccion=$_POST['seccion'];

$p=$this->educativo->BuscarPuesto2($puesto);
$s=$this->educativo->BuscarSeccion($seccion);


$this->usuasrio->CrearUsuarioColegio($p[0]['id_Pro_Puesto'],$n1,$n2,$n3,$a1,$a2,$fecha,$genero,$cui,$tel,$email,$dir);

if($puesto=="Alumno")
{
$idAlumno=$this->usuasrio->BuscarAlumno($cui);

$n1=$_POST['ne'];
$a1=$_POST['ae'];
$tel1=$_POST['tel1e'];
$tel2=$_POST['tel2e'];
$dir=$_POST['dire'];
$parentezco['pe'];

$nivel=$_POST['nivel'];
$grado=$_POST['grado'];
$carrera=$_POST['carrera'];
$ciclo=$_POST['ciclo'];

$ni=$this->educativo->BuscarNivel($nivel);
$gra=$this->educativo->BuscarGrado($grado);
$car=$this->educativo->BuscarCarrera($carrera);
$ci=$this->educativo->BuscarCiclo2($ciclo);

$this->usuasrio->CrearEncargado($n1,$a1,$tel1,$tel2,$dir,$parentezco);
$idEncargado=$this->usuasrio->BuscarEncargado($n1,$a1);

$dato=$this->usuasrio->CrearInscripcionAlumno($ci[0]['id_Pro_Ciclo'],$car[0]['id_Pro_Carrera'],$gra[0]['id_Pro_grado'],$ni[0]['id_Pro_Nivel'],$idEncargado[0]['id_Pro_Encargado'],$idAlumno[0]['id_Pro_Usuarios'],$s[0]['id_Pro_Seccion']);
}

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();

$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);

$this->smarty->assign('vista',$puesto);
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function BuscarUsuarios()   //crearusuario
{
if(isset($_POST['tipo']))
{
$tipo=$_POST['tipo'];
$seccion=$this->educativo->BuscarSeccion($_POST['seccion']);
$carrera=$this->educativo->BuscarPuesto2($tipo);
$car=$carrera[0]['id_Pro_Puesto'];
if($tipo=="Maestro")
{
$datos=$this->usuasrio->BuscarListarUsuarios($tipo,$carrera[0]['id_Pro_Puesto'],0,0,0,0,0);
}
else
{
$nivel=$this->educativo->BuscarNivel($_POST['nivel']);
$grado=$this->educativo->BuscarGrado($_POST['grado']);
$carrera=$this->educativo->BuscarCarrera($_POST['carrera']);
$ciclo=$this->educativo->BuscarCiclo2($_POST['ciclo']);
$seccion=$this->educativo->BuscarSeccion($_POST['seccion']);


$datos=$this->usuasrio->BuscarListarUsuarios($tipo,$car,$nivel[0]['id_Pro_Nivel'],$grado[0]['id_Pro_grado'],$carrera[0]['id_Pro_Carrera'],$ciclo[0]['id_Pro_Ciclo'],$seccion[0]['id_Pro_Seccion']);
$this->smarty->assign('n',$nivel[0]['Nivel']);
$this->smarty->assign('g',$grado[0]['Grado']);
$this->smarty->assign('c',$carrera[0]['Carrera']);
}


$this->smarty->assign('tipo',$tipo);
$this->smarty->assign('usuarios',$datos);
}

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();

$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);

$this->smarty->assign('vista','Consultas');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function EliminarUsuario()
{
$id=$_GET['id'];
$this->usuasrio->EliminarUsuario($id);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);

$this->smarty->assign('vista','Consultas');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function ActualizarUsuario()
{


if(isset($_GET['tipo']))
{

$tipo=$_GET['tipo'];
$id=$_GET['id'];

$usuario=$this->usuasrio->BuscarUs($id);

//var_dump($usuario);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();
$seccion=$this->educativo->VerSeccion();


$this->smarty->assign('n1',$usuario[0]['Nombre1']);
$this->smarty->assign('n2',$usuario[0]['Nombre2']);
$this->smarty->assign('n3',$usuario[0]['Nombre3']);
$this->smarty->assign('a1',$usuario[0]['Apellido1']);
$this->smarty->assign('a2',$usuario[0]['Apellido2']);
$this->smarty->assign('cui',$usuario[0]['DPI']);
$this->smarty->assign('dir',$usuario[0]['Direccion']);
$this->smarty->assign('tel',$usuario[0]['Telefono']);
$this->smarty->assign('email',$usuario[0]['Correo']);

$this->smarty->assign('tipo',$tipo);
$this->smarty->assign('id',$id);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);
$this->smarty->assign('seccion',$seccion);

$this->smarty->assign('vista','Actualizar');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');

}
else
{
$id=$_GET['idUs'];

$n1=$_POST['n1'];
$n2=$_POST['n2'];
$n3=$_POST['n3'];
$a1=$_POST['a1'];
$a2=$_POST['a2'];
$cui=$_POST['cui'];
$fecha=$_POST['fechanac'];
$dir=$_POST['dir'];
$tel=$_POST['tel'];
$email=$_POST['email'];
$genero=$_POST['genero'];


//var_dump($_POST);
//die();
//echo "---id: ".$id."<br>";
$this->usuasrio->ActualizarUsuario($id,$n1,$n2,$n3,$a1,$a2,$cui,$fecha,$dir,$tel,$email);

//die();

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$ciclo=$this->educativo->VerCiclo();

$this->smarty->assign('tipo',$tipo);
$this->smarty->assign('id',$id);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('ciclo',$ciclo);

$this->smarty->assign('vista','Consultas');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
}


public function GuardarCurso()
{
$curso=$_POST['curso'];
$carrera=$_POST['carrera'];
$grado=$_POST['grado'];
$nivel=$_POST['nivel'];
$seccion=$_POST['seccion'];
$ciclo=$_POST['ciclo'];

$idG=$this->educativo->BuscarGrado($grado);
$idC=$this->educativo->BuscarCarrera($carrera);
$idN=$this->educativo->BuscarNivel($nivel);
$idS=$this->educativo->BuscarSeccion($seccion);
$idCi=$this->educativo->BuscarCiclo2($ciclo);


$this->educativo->CrearMalla($idC[0]['id_Pro_Carrera'],$idG[0]['id_Pro_grado'],$idN[0]['id_Pro_Nivel'],$curso,$idS[0]['id_Pro_Seccion'],$idCi[0]['id_Pro_Ciclo']);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$seccion=$this->educativo->VerSeccion();
$ciclo=$this->educativo->VerCiclo();

$this->smarty->assign('seccion',$seccion);
$this->smarty->assign('ciclo',$ciclo);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','Curso');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function ConsultaMalla()
{

$nivel=$_POST['nivel'];
$grado=$_POST['grado'];
$carrera=$_POST['carrera'];
$seccion=$_POST['seccion'];

$idN=$this->educativo->BuscarNivel($nivel);
$idG=$this->educativo->BuscarGrado($grado);
$idC=$this->educativo->BuscarCarrera($carrera);
$idS=$this->educativo->BuscarSeccion($seccion);


$datos=$this->educativo->BuscarMalla($idN[0]['id_Pro_Nivel'],$idG[0]['id_Pro_grado'],$idC[0]['id_Pro_Carrera'],$idS[0]['id_Pro_Seccion']);
$maestro=$this->usuasrio->VerMaestro();

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();
$seccion=$this->educativo->VerSeccion();

$this->smarty->assign('maestro',$maestro);
$this->smarty->assign('malla',$datos);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);
$this->smarty->assign('seccion',$seccion);

$this->smarty->assign('vista','ConsultaMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');

}

public function EliminarMalla()
{
$id=$_GET['id'];

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$this->educativo->EliminarMalla($id);

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','ConsultaMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}

public function ActualizarMalla()
{
if(isset($_GET['idM']))
{
$id=$_GET['idM'];

$curso=$_POST['curso'];
$carrera=$_POST['carrera'];
$grado=$_POST['grado'];
$nivel=$_POST['nivel'];

$idG=$this->educativo->BuscarGrado($grado);
$idC=$this->educativo->BuscarCarrera($carrera);
$idN=$this->educativo->BuscarNivel($nivel);

$this->educativo->ActualizarMalla($id,$idC[0]['id_Pro_Carrera'],$idG[0]['id_Pro_grado'],$idN[0]['id_Pro_Nivel'],$curso);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','ConsultaMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
else
{
$id=$_GET['id'];


$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$curso=$this->educativo->BuscarMallaCurso($id);

$this->smarty->assign('id',$id);
$this->smarty->assign('curso',$curso[0]['Curso']);
$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','ActualizarMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
}

public function BorrarMaestro()
{
$idCurso=$_GET['idCurso'];
$this->usuasrio->ActualizarAgregarMaestro($idCurso,0);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','ConsultaMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}



public function AgregarMaestro()
{
if(isset($_GET['idCurso']))
{
$idCurso=$_GET['idCurso'];
$Curso=$_GET['curso'];

$maestro=$this->usuasrio->VerMaestro();


$this->smarty->assign('id',$idCurso);
$this->smarty->assign('maestros',$maestro);
$this->smarty->assign('curso',$Curso);

$this->smarty->assign('vista','AsignarMaestro');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
else
{
$idMaestro=$_POST['maestro'];
$idCurso=$_GET['idCursoMaestro'];

$this->usuasrio->ActualizarAgregarMaestro($idCurso,$idMaestro);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','ConsultaMalla');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
}

public function CrearSalon()
{
$nivel=$_POST['nivel'];
$grado=$_POST['grado'];
$carrera=$_POST['carrera'];
$aula=$_POST['nombreAula'];

$this->educativo->CrearAula($carrera,$grado,$nivel,$aula);

$nivel=$this->educativo->VerNivel();
$grado=$this->educativo->VerGrado();
$carrera=$this->educativo->VerCarrera();

$this->smarty->assign('nivel',$nivel);
$this->smarty->assign('grado',$grado);
$this->smarty->assign('carrera',$carrera);

$this->smarty->assign('vista','AsignacionSalon');
$this->smarty->assign('title','Director');
$this->smarty->display('Default.tpl');
}
}
?>