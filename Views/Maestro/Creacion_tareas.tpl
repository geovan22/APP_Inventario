



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
                  <h2 class="card-title">Crear tarea</h2>
                  <p class="card-category">Complete lo que acontinuacion se solicita:</p>
                  <br />
                  <p class="card-category">{$datos}</p>
                </center>  
              </div>
              <div class="card-body">
              <form class="needs-validation" method="post" action="?controller=Maestro&action=CrearTarea&id={$idMalla}" novalidate>
                  <div class="form-row">
                      <div class="form-group col-md-6 py-3 ">
                          <label for="validationCustom01">Nombre de la Tarea</label>
                          <input type="text" name="nombre" class="form-control " id="Nombre_1" required>
                      </div>
                      <div class="form-group col-md-6 py-3 ">
                          <label for="validationCustom02">Descripción</label>
                          <input type="text" name="descripcion" class="form-control" id="Descripcion" >
                      </div>
                      <div class="form-group col-md-6 py-3 ">
                          <label for="inputPassword5">Fecha de creación</label>
                          <input type="date" name="fechaCreacion" class="form-control" id="DateTimePicker" required>
                      </div>
                      <div class="form-group col-md-6 py-3 ">
                          <label for="inputPassword5">Fecha de entrega</label>
                          <input type="date" name="fechaEntrega" class="form-control" id="DateTimePicker" required>
                      </div>
                    </div>
                    <div class="form-group col-md-6 py-3 ">
                      <label for="validationCustom02">Punteo</label>
                      <input type="text" name="punteo" class="form-control" id="punteo" >
                  </div>
                  
                </div>
                
  
                  </div>
    
                  <div class="form-group row">
                      <div class="col-sm-6">

                       
  
                        <input type="submit" value="Crear Tarea" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" />

                      </div>
                  </div>
                  
              </form>
            </div>  
            </div>
        </div>
      </div>
    </section>
  </center>