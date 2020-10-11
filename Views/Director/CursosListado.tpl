<!--MALLA -->

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
  
      <div class="col-md-10" >
        <div class="card">
            <div class="card-body" >
              <div class="card-header card-header-info">
                <center>
                  <h2 class="card-title">Malla Curricular</h2>
                </center>  
              </div>
  
             <!-- TABLA -->
  <div class="py-5">
  
     
      
      <center>
          <form method="post" action="?controller=Director&action=ConsultaMalla" class="needs-validation " novalidate>
              
                    
              <div class="form-row py-6">
                  <div class="form-group col-md-4">
                    <label for="exampleFormControlSelect1">
                      Nivel:
                    </label>
                    <select class="form-control" name="nivel" id="exampleFormControlSelect1">
                      {foreach from=$nivel item=$n }
                          <option value="{$n}">{$n}</option>
                      {/foreach}
                    </select>
                  </div>
                  
                  <div class="form-group col-md-4 ">
                    <label for="exampleFormControlSelect1">
                      Grado:
                    </label>
                    <select class="form-control" name="grado" id="exampleFormControlSelect1">
                      {foreach from=$grado item=$g }
                          <option value="{$g}">{$g}</option>
                      {/foreach}
                    </select>
                  </div>
                  
                  <div class="form-group col-md-4 ">
                    <label for="exampleFormControlSelect1">
                      Carrera:
                    </label>
                    <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                      {foreach from=$carrera item=$c }
                          <option value="{$c}">{$c}</option>
                      {/foreach}
                    </select>
                  </div>

                </div>
                 <div class="form-group col-md-3 py-3">
                <label for="exampleFormControlSelect1">
                  Sección:
                </label>
                <select class="form-control" name="seccion" id="exampleFormControlSelect1">
                  {foreach from=$seccion item=$s }
                     <option value="{$s}">{$s}</option>
                 {/foreach}
                  
                </select>
            </div>
                    
                  <input type="submit" value="BUSCAR" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>
          </form>
      </center>
      
  {if isset($malla)}
  
  <div class="py-5 container">
      <div class="row">
          <div class="col">
              <table class="table table-striped table-bordered table-hover table-active">
                  <thead>
                      <tr>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>CURSOS</center></font></th>
                          <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Acciones</center></font></th>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>MAESTROS</center></font></th>
                          <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Acciones</center></font></th>
                      </tr>
                      
                  </thead>
                  <tbody>
                      
                      {foreach from=$malla item=$us}
                          <tr>
                              <td>{$us['Curso']}</td>
                              
                              <td>
                           
                                  <a href="?controller=Director&action=EliminarMalla&id={$us['id_Pro_Malla']}" ><i class="material-icons">delete_sweep</i></a>
                                  <a href="?controller=Director&action=ActualizarMalla&id={$us['id_Pro_Malla']}" ><i class="material-icons">create</i></a>
                            
                              </td>
                              <td>
                                  {foreach from=$maestro item=$m}
                                      {if $m['id_Pro_Usuarios']==$us['Maestro']}
                                          {$m['Nombre1']} {$m['Nombre2']}, {$m['Apellido1']} {$m['Apellido2']}
                                      {/if}
                                  {/foreach}
                              </td>
                              <td>
                                <a href="?controller=Director&action=BorrarMaestro&idCurso={$us['id_Pro_Malla']}" ><i class="material-icons">delete_sweep</i></a>
                                
                                <a href="?controller=Director&action=AgregarMaestro&idCurso={$us['id_Pro_Malla']}&curso={$us['Curso']}" ><i class="material-icons">person_add</i></a>
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
      </div>
    </section>
  </center>
  
  {/if}
  <!-- /TABLA -->
  
  <!--MALLA -->