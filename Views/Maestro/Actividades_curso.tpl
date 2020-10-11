<!-- TABLA -->
<div class="py-5">
<div id="content">
<section class="py-3 ">
      <div class="container">
        <div class="row">
          <div class="col-lg-9 ">
            
          </div>    
        </div>
      </div>
    </section>
    <center>
        <section class="container py-5">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-body" >
                        <div class="card-header card-header-info">
    <center class="py-5">
        <h2 class="card-title">Actividades del Curso:</h2>
        
    </center>  
                        </div>
<div class="py-5 container">
    <div class="row">
        <div class="col">
            <table class="table table-striped table-bordered table-hover table-active">
                <thead>
                    <tr>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Actividad</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Descripción</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Fecha de Creacion</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Fecha de Entrega</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Ponderación</center></font></th>
                        <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Calificar Tarea</center></font></th>
                        <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Modificar Tarea</center></font></th>
                        <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Eliminar Tarea</center></font></th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$actividad item=$a}
                        <tr>
                            <td>{$a['Nombre']}</td>
                            <td>{$a['Descripcion']}</td>
                            <td>{$a['FechaCreacion']}</td>
                            <td>{$a['FechaEntrega']}</td>
                            <td><font size="6"><center>{$a['Punteo']}</center></font></td>
                            
                            <td>
                                <a href="?controller=Maestro&action=CalificarTarea&idMalla={$a['id_Pro_Actividad']}" ><i class="material-icons">assignment_turned_in</i></a>
                          
                            </td>
                            <td>
                               
                                <a href="?controller=Maestro&action=ModificarTarea&idMalla={$a['id_Pro_Actividad']}" ><i class="material-icons">create</i></a>
                          
                            </td>
                            <td>
                                <a href="?controller=Maestro&action=EliminarTarea&idMalla={$a['id_Pro_Actividad']}" ><i class="material-icons">delete_sweep</i></a>
                            </td>
                            
                        </tr>	
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>
            </div>
        </section>
    </center>
</div>

<!-- /TABLA -->