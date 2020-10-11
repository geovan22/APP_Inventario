


 <div id="content ">
  <section class="py-3 ">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 ">
          
        </div>    
      </div>
    </div>
  </section>


  
 <!--**************************INICIO FORMULARIO DE ALUMNO/SALÓN*********************************-->
  <center>
    <section class="container py-5 " >
    <div class="col-md-10" >
      <div class="card">
          <div class="card-body" >
            <div class="card-header card-header-info">
              <center>
                <h2 class="card-title">Asignación de Alumno/Salón</h2>
                <p class="card-category"></p>
              </center>  
            </div>
            <div class="card-body">
            
            
            
            <form class="needs-validation " novalidate method="post" action="?controller=Director&action=CrearSalon">
             
                <div class="form-row"> 
                   
                    <div class="form-group col-md-6 py-3">
                        <label for="exampleFormControlSelect1">Seleccione Nivel:</label>
                        <select class="form-control" name="nivel" id="exampleFormControlSelect1">
                          {foreach from=$nivel item=$n}
                            <option value="{$n}">{$n}</option>
                          {/foreach}
                        </select>
                      </div>
                      
                       <div class="form-group col-md-6 py-3">
                        <label for="exampleFormControlSelect1">Seleccione Grado:</label>
                        <select class="form-control" name="grado" id="exampleFormControlSelect1">
                          {foreach from=$grado item=$g}
                            <option value="{$g}">{$g}</option>
                          {/foreach}
                        </select>
                      </div>
                </div>
                <div class="form-row"> 
                     
                      <div class="form-group col-md-6 py-3">
                        <label for="exampleFormControlSelect1">Seleccione Carrera:</label>
                        <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                          {foreach from=$carrera item=$c}
                            <option value="{$c}">{$c}</option>
                          {/foreach}
                        </select>
                        <div class="form-group col-md-30 py-3">                      
                            <label for="exampleFormControlSelect1">Ingrese el aula:</label>
                            <input class="form-control" name="nombreAula" type="text"/>                          
                        </div>
                      </div>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-6">
                        <!-- Button
                        <button type="button" class="btn btn-primary">Asignar</button>
                        -->
                        <input type="submit" value="ASIGNAR" class="btn btn-primary />
                    </div>
                </div>              
            </form>
          </div>  
          </div>
      </div>
    </div>
  </section>
</center>

<!--**************************FIN FORMULARIO DE ALUMNO/SALÓN*********************************-->

</div>


    </div>
</div>

