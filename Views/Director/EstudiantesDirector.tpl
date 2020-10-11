<center>
  <section class="container py-5">
    <div class="col-md-10 py-5">
      <div class="card">
        <div class="card-body">
          <div class="card-header card-header-info">
            <center>
              <h2 class="card-title">
                Creacion del Estudiante
              </h2>
              <p class="card-category">
                Complete lo que acontinuacion se solicita:
              </p>
            </center>
          </div>
          <div class="card-body">
            
            
            <form method="post" action="?controller=Director&action=GuardarUsuario&puesto=Alumno" class="needs-validation " novalidate>
              <hr />
              <h4 class="display-4">
                Datos del Alumno
              </h4>
              <hr/>
              <div class="form-row py-5">
                <div class="form-group col-md-6 py-3 ">
                  <label for="validationCustom01">
                    Primer Nombre
                  </label>
                  <input type="text" name="n1" class="form-control " id="Nombre_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="validationCustom02">
                    Segundo Nombre
                  </label>
                  <input type="text" name="n2" class="form-control" id="Nombre_2">
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="validationCustom03">
                    Tercer Nombre (Opcional)
                  </label>
                  <input type="text" name="n3" class="form-control" id="Nombre_3">
                </div>
                
              </div>
              
              <div class="form-row  ">
              
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword4">
                    Primer Apellido
                  </label>
                  <input type="text" name="a1" class="form-control" id="Apellido_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword5">
                    Segundo Apellido
                  </label>
                  <input type="text" name="a2" class="form-control" id="Apellido_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword5">
                    DPI
                  </label>
                  <input type="text" name="cui" class="form-control" id="Apellido_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword5">
                    Fecha de Nacimiento
                  </label>
                  <input type="date" name="fecha" class="form-control" id="DateTimePicker" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword5">
                    Dirección
                  </label>
                  <input type="text" name="dir" class="form-control" id="Apellido_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3 ">
                  <label for="inputPassword5">
                    Telefono
                  </label>
                  <input type="text" name="tel" class="form-control" id="Apellido_1" required>
                </div>
                
                <div class="form-group col-md-6 py-3">
                  <label for="email">
                    Email
                  </label>
                  <input type="email" name="email" class="form-control" id="email">
                </div>
                

                <div class="col-md-6 mb-6">
                  <label for="validationCustom02">
                    Genero:
                  </label>
                  <div id="masc">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="genero" id="Masc" value="Masculino">
                      Masculino
                      <span class="circle">
                        <span class="check">
                        </span>
                      </span>
                    </label>
                  </div>
                  <div id="fem">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="genero" id="Fem" value="Femenino" checked="">
                      Femenino
                      <span class="circle">
                        <span class="check">
                        </span>
                      </span>
                    </label>
                  </div>
                </div>
                
              </div>
              
              
              
              <div class="form-row py-5">
                <div class="form-group col-md-6 ">
                  <label for="exampleFormControlSelect1">
                    Nivel:
                  </label>
                  <select class="form-control" name="nivel" id="exampleFormControlSelect1">
                    {foreach from=$nivel item=$n }
                        <option value="{$n}">{$n}</option>
                    {/foreach}
                  </select>
                </div>

                <div class="form-group col-md-6 ">
                  <label for="exampleFormControlSelect1">
                    Sección:
                  </label>
                  <select class="form-control" name="seccion" id="exampleFormControlSelect1">
                    {foreach from=$seccion item=$s }
                        <option value="{$s}">{$s}</option>
                    {/foreach}
                  </select>
                </div>


                <div class="form-group col-md-6 ">
                  <label for="exampleFormControlSelect1">
                    Grado:
                  </label>
                  <select class="form-control" name="grado" id="exampleFormControlSelect1">
                    {foreach from=$grado item=$g }
                        <option value="{$g}">{$g}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-6 ">
                  <label for="exampleFormControlSelect1">
                    Carrera:
                  </label>
                  <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                    {foreach from=$carrera item=$c }
                        <option value="{$c}">{$c}</option>
                    {/foreach}
                  </select>
                </div>
                <div class="form-group col-md-6 ">
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
          </div>
          <hr />
          
          <h4 class="display-4">
            Datos del Encargado
          </h4>
          <hr/>
          <div class="form-row py-5">
          
            <div class="form-group col-md-6 py-3 ">
              <label for="validationCustom01">
                Nombre
              </label>
              <input type="text" name="ne" class="form-control " id="Nombre_1" required>
            </div>
            
            <div class="form-group col-md-6 py-3 ">
              <label for="inputPassword4">
                Apellido
              </label>
              <input type="text" name="ae" class="form-control" id="Apellido_1" required>
            </div>
            
            <div class="form-group col-md-6 py-3 ">
              <label for="inputPassword5">
                Telefono 1
              </label>
              <input type="text" name="tel1e" class="form-control" id="telefono1" required>
            </div>
            
            <div class="form-group col-md-6 py-3 ">
              <label for="inputPassword5">
                telefono 2
              </label>
              <input type="text" name="tel2e" class="form-control" id="telefono2" required>
            </div>
            
            <div class="form-group col-md-6 py-3 ">
              <label for="inputPassword5">
                Dirección
              </label>
              <input type="text" name="dire" class="form-control" id="direccion" required>
            </div>
            
            <div class="form-group col-md-6 py-3 ">
              <label for="inputPassword5">
                Parentezco
              </label>
              <input type="text" name="pe" class="form-control" id="parentezco" required>
            </div>
            
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <!-- Button trigger modal -->
              
              <input type="submit" value="GUARDAR" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>

            </div>
          </div>
        </div>
      </div>
    </div>
    </form> 
    </div>
    {if isset($alm)}
      <div class="alert alert-primary" style="max-width: 20rem;"  role="alert">
      El carnet del estudiante es: <strong>{$alm}</strong>
      </div>
    {/if}
  </section>
</center>
</div>
</div>
<script>
  $('.fixed-plugin a').click(function(event) {
    // si hacemos clic en cambiar, detenemos la propagación del evento, por lo que el 
    //menú desplegable no se ocultará, de lo contrario, establecemos la sección activa
    if ($(this).hasClass('switch-trigger')) {
      if (event.stopPropagation) {
        event.stopPropagation();
      } else if (window.event) {
        window.event.cancelBubble = true;
      }
    }
  });

  $('.fixed-plugin .active-color span').click(function() {
    $full_page_background = $('.full-page-background');

    $(this).siblings().removeClass('active');
    $(this).addClass('active');

    var new_color = $(this).data('color');

    if ($sidebar.length != 0) {
      $sidebar.attr('data-color', new_color);
    }

    if ($full_page.length != 0) {
      $full_page.attr('filter-color', new_color);
    }

    if ($sidebar_responsive.length != 0) {
      $sidebar_responsive.attr('data-color', new_color);
    }
  });

  $('.fixed-plugin .background-color .badge').click(function() {
    $(this).siblings().removeClass('active');
    $(this).addClass('active');

    var new_color = $(this).data('background-color');

    if ($sidebar.length != 0) {
      $sidebar.attr('data-background-color', new_color);
    }
  });


  $('.switch-sidebar-mini input').change(function() {
    $body = $('body');

    $input = $(this);

    if (md.misc.sidebar_mini_active == true) {
      $('body').removeClass('sidebar-mini');
      md.misc.sidebar_mini_active = false;

      $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

    } else {

      $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

      setTimeout(function() {
        $('body').addClass('sidebar-mini');

        md.misc.sidebar_mini_active = true;
      }, 300);
    }

    // Simulamos la ventana Redimensionar para que los gráficos se actualicen en tiempo real.
    var simulateWindowResize = setInterval(function() {
      window.dispatchEvent(new Event('resize'));
    }, 180);


    // detenemos la simulación de Window Resize después de que se completan las animaciones
    setTimeout(function() {
      clearInterval(simulateWindowResize);
    }, 1000);

  });
</script>
<script>
  $(document).ready(function() { // El cuerpo del método Javascript se puede encontrar en assets / js / demos.js md.initDashboardPageCharts();