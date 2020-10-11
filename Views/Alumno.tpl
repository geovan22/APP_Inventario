 <body class="">
  
 {include file="Navs/NavAlumno.tpl"}  
 {include file="Navs/NavCabecera.tpl"}
 
 {if $vista=='Tareas'}
    {include file='Alumno/principal_tarea_alumno.tpl'}
 {else if $vista=='TareaCurso'}
    {include file='Alumno/tarea_curso.tpl'}
 {else if $vista=='SubirTarea'}
    {include file='Alumno/subir_tarea.tpl'}


 {/if}
