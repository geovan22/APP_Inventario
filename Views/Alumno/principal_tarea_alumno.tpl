<!--TAREAS -->

<div id="content ">
<section class="py-3 ">
  <div class="container">
    <div class="row">
      <div class="col-lg-9 ">
        
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

    <center class="py-5">
       

        <div class="form-group col-md-6 py-2 ">
            <label for="validationCustom01"><font size="6">Alumno:{$user[0]['Nombre1']}, {$user[0]['Apellido1']}</font></label>
           
        </div>
      

<div class="py-5 container">
    <div class="row">
        <div class="col">
            <table class="table table-striped table-bordered table-hover table-active">
                <thead>
                    <tr>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Curso</center></font></th>
                    
                        <th width="9%"><font color="Navy" face="Comic Sans MS,arial"><center>Ver Actividad</center></font></th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$cursos item=$c}
                        <tr>
                            <td>
                                {$c['Curso']}  
                            </td>
                            <td>
                                <center>
                                <a href="?controller=Alumno&action=ListarActividad&idMalla={$c['id_Pro_Malla']}&curso={$c['Curso']}" ><i class="material-icons">preview</i></a>
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