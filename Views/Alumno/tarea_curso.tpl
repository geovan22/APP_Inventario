<!--TAREAS -->

<div id="content ">
<section class="py-3 ">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 ">
        
      </div>    
    </div>
  </div>
</section>

<center>

<section class="container py-5 " >
    

  <center>
  <div class="col-md-10" >
    <div class="card">
        <div class="card-body" >
          <div class="card-header card-header-info">
            <center>
              <h2 class="card-title">Tareas Asignadas</h2>
            </center>  
          </div>
          <center>



<!-- TABLA -->
<div class="py-5">

    <center class="py-2">
        

        
        <div class="form-group col-md-6 py-2 ">
            <label for="validationCustom01">Curso: {$curso}</label>
            
        </div>
        
    </center>  

<div class=" container">
    <div class="row">
        <div class="col">
            <table class="table table-striped table-bordered table-hover table-active">
                <thead>
                    <tr>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Nombre de Actividad</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Descripción de Actividad</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Fecha de Entrega</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Nota</center></font></th>
                        <th width="12%"><center>Acción</center></th>
                    </tr>
                </thead>
                <tbody>
                
                    {foreach from=$tareas item=$t}
                        <tr>
                            <td>{$t['Nombre']}</td>
                            <td>{$t['Descripcion']}</td>
                            <td>{$t['FechaEntrega']}</td>
                            <td>{$t['Punteo']}</td>
                            <td>
                                <center>
                                    
                                <a href="?controller=Alumno&action=SubirTarea&IdActividad={$t['id_Pro_Actividad']}&actividad={$t['Pro_Curso_idPro_Curso']}" ><i class="material-icons">upgrade</i>Subir Tarea</a>
                            </center>
                          
                            </td>
                        </tr>	
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<!-- /TABLA -->