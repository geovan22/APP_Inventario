<div id="content ">
  <section class="py-3 ">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          
        </div>    
      </div>
    </div>



<center>
    <section class="container py-5 " >
  
      <div class="col-md-10" >
        <div class="card">
            <div class="card-body" >
              <div class="card-header card-header-info">
                <center>
                  <h2 class="card-title">Consulta de Alumno/Maestro</h2>
                </center>  
              </div>



<!-- TABLA -->

    
    
    <center>
        <form method="post" action="?controller=Director&action=BuscarUsuarios" class="needs-validation " novalidate>
            <div class="form-group col-md-3 py-3">
                <label for="exampleFormControlSelect1">
                  Tipo
                </label>
                <select class="form-control" name="tipo" id="exampleFormControlSelect1">
                  <option>
                    Alumno
                  </option>
                  <option>
                    Maestro
                  </option>
                  
                </select>
            </div>
                  
            <div class="form-row py-6">
                <div class="form-group col-md-3">
                  <label for="exampleFormControlSelect1">
                    Nivel:
                  </label>
                  <select class="form-control" name="nivel" id="exampleFormControlSelect1">
                    {foreach from=$nivel item=$n }
                        <option value="{$n}">{$n}</option>
                    {/foreach}
                  </select>
                </div>
                
                <div class="form-group col-md-3 ">
                  <label for="exampleFormControlSelect1">
                    Grado:
                  </label>
                  <select class="form-control" name="grado" id="exampleFormControlSelect1">
                    {foreach from=$grado item=$g }
                        <option value="{$g}">{$g}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-3 ">
                  <label for="exampleFormControlSelect1">
                    Carrera:
                  </label>
                  <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                    {foreach from=$carrera item=$c }
                        <option value="{$c}">{$c}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-3">
                  <label for="exampleFormControlSelect1">
                    Ciclo:
                  </label>
                  <select class="form-control" name="ciclo" id="exampleFormControlSelect1">
                    {foreach from=$ciclo item=$c }
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
            <div class=" py-5">  
                <input type="submit" value="BUSCAR" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>
              </div>
              </form>
    </center>
    
{if isset($usuarios)}

<div class="py-5 container">
    <div class="row">
        <div class="col">
            <table class="table table-striped table-bordered table-hover table-active">
                <thead>
                    <tr>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>CUI</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Primer Nombre</center></font></th>
                        <th><font color="Navy" face="Comic Sans MS,arial"><center>Primer Apellido</center></font></th>
                        {if $tipo=='Alumno'}
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Nivel</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Grado</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Carrera</center></font></th>
                        {/if}
                        <th width="9%"><font color="Navy" face="Comic Sans MS,arial"><center>Acciones</center></font></th>
                    </tr>
                </thead>
                <tbody>
                    
                        {foreach from=$usuarios item=$us}
                            <tr>
                                <td>{$us['DPI']}</td>
                                <td>{$us['Nombre1']}</td>
                                <td>{$us['Apellido1']}</td>
                            
                            
                            
                                {if $tipo=='Alumno'}
                                    <td>{$n}</td>
                                    <td>{$g}</td>
                                    <td>{$c}</td>
                                {/if}
                                <td>
                             
                                    <a href="?controller=Director&action=EliminarUsuario&id={$us['id_Pro_Usuarios']}&tipo={$tipo}" class=" text-danger "><i class="material-icons">delete_sweep</i></a>
                            
                                    <a href="?controller=Director&action=ActualizarUsuario&id={$us['id_Pro_Usuarios']}&tipo={$tipo}" class="text-success "><i class="material-icons">create</i></a>
                              
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
