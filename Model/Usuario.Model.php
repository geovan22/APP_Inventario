<?php
class Usuario
{
public $medoo;
public $conexion;

public function __construct()
{
$this->conexion=new Conexion();
$this->medoo=$this->conexion->ConexionDB();
}


/**
* Actualizar
*/

public function ActualizarUsuario($id,$n1,$n2,$n3,$a1,$a2,$cui,$fecha,$dir,$tel,$email)
{
return $this->medoo->update("Pro_UsuarioColegio",
[
"Nombre1"=>$n1,
"Nombre2"=>$n2,
"Nombre3"=>$n3,
"Apellido1"=>$a1,
"Apellido2"=>$a2,
"fechaNac"=>$fecha,
"DPI"=>$cui,
"Telefono"=>$tel,
"Direccion"=>$dir,
"Correo"=>$email
],
[
"id_Pro_Usuarios"=>$id
]
);
}

public function ActualizarAgregarMaestro($idCurso, $idMaestro)
{
return $this->medoo->update("Pro_Malla",
[
"Maestro"=>$idMaestro
],
[
"id_Pro_Malla"=>$idCurso
]
);
}

/**
* crear
*/

public function CrearUsuario($id, $user, $pass,$carnet)
{
return $this->medoo->update("Pro_UsuarioColegio",
[
"Usuario"=>$user,
"Pass"=>$pass,
"Carnet"=>$carnet
],
[
"id_Pro_Usuarios"=>$id
]
);
}

public function CrearUsuarioColegio($puesto,$n1,$n2,$n3,$a1,$a2,$fecha,$genero,$cui,$tel,$email,$dir)
{
return $this->medoo->insert("Pro_UsuarioColegio",
[
"Pro_Puesto_id_Pro_Puesto"=>$puesto,
"Nombre1"=>$n1,
"Nombre2"=>$n2,
"Nombre3"=>$n3,
"Apellido1"=>$a1,
"Apellido2"=>$a2,
"FechaNac"=>$fecha,
"Genero"=>$genero,
"DPI"=>$cui,
"Telefono"=>$tel,
"Correo"=>$email,
"Direccion"=>$dir
]
);
}

public function CrearEncargado($n,$a,$t1,$t2,$d,$p)
{
return $this->medoo->insert("Pro_Encargado",[
"Nombre"=>$n,
"Apellido"=>$a,
"Telefono1"=>$t1,
"Telefono2"=>$t2,
"Direccion"=>$d,
"Parentezco"=>$p
]);
}

public function CrearInscripcionAlumno($ciclo,$carrera,$grado,$nivel,$encargado,$alumno,$s)
{
return $this->medoo->insert("Pro_InscripcionEstudiante",
[
"Pro_Ciclo_id_Pro_Ciclo"=>$ciclo,
"Pro_Carrera_id_Pro_Carrera"=>$carrera,
"Pro_grado_id_Pro_grado"=>$grado,
"Pro_Nivel_id_Pro_Nivel"=>$nivel,
"Pro_Encargado_id_Pro_Encargado"=>$encargado,
"Pro_UsuarioColegio_id_Pro_Usuarios"=>$alumno,
"Pro_Seccion_id_Pro_Seccion"=>$s
]
);
}


/**
* buscar
*/

public function BuscarUs($id)
{
return $this->medoo->select("Pro_UsuarioColegio","*",[
"id_Pro_Usuarios"=>$id
]);
}

public function BuscarPuesto($id)
{
return $this->medoo->select("Pro_Puesto",
"*",
[
"id_Pro_Puesto"=>$id
]
);
}

public function BuscarAlumno($dpi)
{
return $this->medoo->select("Pro_UsuarioColegio",
"*",
[
"DPI"=>$dpi
]
);
}

public function BuscarUsuario($user,$pass)
{
return $this->medoo->select("Pro_UsuarioColegio",
"*",
[
"Usuario"=>$user,
"Pass"=>$pass
]
);
}

public function BuscarInscrito($id)
{
return $this->medoo->select("Pro_InscripcionEstudiante",
"*",
[
"Pro_UsuarioColegio_id_Pro_Usuarios"=>$id
]
);
}

public function BuscarEncargado($n,$a)
{
return $this->medoo->select("Pro_Encargado","*",
[
"Nombre"=>$n,
"Apellido"=>$a
]
);
}

public function BuscarListarUsuarios($puesto,$tipo,$nivel,$grado,$carrera,$ciclo,$seccion)
{
if($puesto=="Maestro")
{
return $this->medoo->select('Pro_UsuarioColegio',"*",[
"Pro_Puesto_id_Pro_Puesto"=>$tipo
]);
}
else
{
$estudiante=$this->medoo->select('Pro_InscripcionEstudiante',"*",[
"Pro_Ciclo_id_Pro_Ciclo"=>$ciclo,
"Pro_Carrera_id_Pro_Carrera"=>$carrera,
"Pro_grado_id_Pro_grado"=>$grado,
"Pro_Nivel_id_Pro_Nivel"=>$nivel,
"Pro_Seccion_id_Pro_Seccion"=>$seccion
]
);

$ar=array();
foreach($estudiante as $es)
{
array_push($ar,$es['Pro_UsuarioColegio_id_Pro_Usuarios']);
}


return $this->medoo->select('Pro_UsuarioColegio',"*",[
"id_Pro_Usuarios"=>$ar
]);

}
}
/**
* ver
*/

public function VerPuestos()
{
return $this->medoo->select("Pro_Puesto",
"id_Pro_Puesto",
"Puesto"
);
}

public function VerMaestro()
{
return $this->medoo->select("Pro_UsuarioColegio","*",[
"Pro_Puesto_id_Pro_Puesto"=>"2"
]
);
}

/**
* Eliminar
*/

public function EliminarUsuario($id)
{
return $this->medoo->delete("Pro_UsuarioColegio",
[
"id_Pro_Usuarios"=>$id
]
);
}


}
?>