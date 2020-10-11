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
    <section class="container py-5 ">
      <div class="col-md-10">
        <div class="card">
          <div class="card-body">
            <div class="card-header card-header-info">
              <center>
                <h2 class="card-title">
                  Creacion de Empleado
                </h2>
                <p class="card-category">
                  Complete lo que acontinuacion se solicita:
                </p>
              </center>
            </div>
            <div class="card-body">
            
              <form method="post" action="?controller=Director&action=GuardarUsuario&puesto=Empleado" class="needs-validation" novalidate>
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
                      CUI
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
                  
                  <!--
                  <div class="form-group col-md-6 py-3">
                    <label for="pwd">
                      Contraseña
                    </label>
                    <input type="password" class="form-control" id="pwd">
                  </div>
                  -->
                  
                  <div class="col-md-6 py-3">
                    <label for="validationCustom02">
                      Genero:
                    </label>
                    <div id="masc">
                      <label class="form-check-label">
                        <input class="form-check-input" name="genero" type="radio" name="exampleRadios" id="Masc" value="Masculino">
                        Masculino
                        <span class="circle">
                          <span class="check">
                          </span>
                        </span>
                      </label>
                    </div>
                    <div id="fem">
                      <label class="form-check-label">
                        <input class="form-check-input" name="genero" type="radio" name="exampleRadios" id="Fem" value="Femenino" checked="">
                        Femenino
                        <span class="circle">
                          <span class="check">
                          </span>
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
                <!-- <div class="form-group col-md-6 py-3">
                <label for="exampleFormControlSelect1">Puesto:</label>
                <select class="form-control" id="exampleFormControlSelect1">
                {if isset($puesto)}
                {foreach from=$puesto item=$p }
                <option value="{$p}">{$p}</option>
                {/foreach}
                {/if}
                </select>
                </div>
                -->
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <!-- Button trigger modal -->
                  <!--
                  <button type="button" class="btn btn-primary" id="Enviar" data-toggle="modal" data-target="#exampleModal">
                    Guardar
                  </button>
                  -->
              <!-- Modal -->
              
              <input type="submit" value="GUARDAR" type="button" class="btn btn-primary" id="Enviar" data-toggle="modal" data-target="#exampleModal"  />
              
              <div class="modal fade" id="exampleModal" tabindex="-3" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">
                        Confirmación
                      </h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">
                          &times;
                        </span>
                      </button>
                    </div>
                    <div class="modal-body">
                      ¿Desea guardar?
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        Cerrar
                      </button>
                      <button type="button" class="btn btn-primary">
                        Sí, guardar
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </form>
          
        </div>
      </div>
</div>
</div>
</section>
</center>
</div>
</div>
</div>


<script>
  let boton1 = document.getElementById('Enviar');
  boton1.addEventListener('click', confirmacion);

  function confirmacion() {
    let fecha = document.getElementById('datepicker')
    console.log(fecha.value);
  }

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
  $(document).ready(function() {
    // El cuerpo del método Javascript se puede encontrar en assets / js / demos.js
    md.initDashboardPageCharts();

  });
</script>