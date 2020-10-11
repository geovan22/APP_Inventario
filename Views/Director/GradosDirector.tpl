<div id="content">
  <section class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 ">
        </div>
      </div>
    </div>
  </section>
  <center>
    <section class="container py-5">
      <div class="col-md-9">
        <div class="card">
          <div class="card-body">
            <div class="card-header card-header-info">
              <center>
                <h2 class="card-title">
                  Creacion de Nivel
                </h2>
                <p class="card-category">
                  Complete lo que acontinuacion se solicita:
                </p>
              </center>
            </div>
            <div class="card-body">
              <form method="post" action="?controller=ProEducativo&action=CrearDatos" class="needs-validation" novalidate>
                <div class="form-row">
                  <div class="form-group col-md-6 py-3 ">
                    <label for="validationCustom01">
                      Nivel:
                    </label>
                    <input type="text" name="nivel" class="form-control " id="Nombre_1" required>
                  </div>
                  <div class="form-group col-md-6 py-3 ">
                    <label for="validationCustom02">
                      Grado:
                    </label>
                    <input type="text" name="grado" class="form-control" id="Nombre_2">
                  </div>
                  <div class="form-group col-md-6 py-3 ">
                    <label for="validationCustom03">
                      Carrera:
                    </label>
                    <input type="text" name="carrera" class="form-control" id="Nombre_3">
                  </div>
                  <div class="form-group col-md-6 py-3 ">
                    <label for="validationCustom03">
                      Ciclo:
                    </label>
                    <input type="text" name="ciclo" class="form-control" id="Nombre_3">
                  </div>
                  
                  <div class="form-group col-md-6 py-0 ">
                  <label for="validationCustom03">
                    Seccion:
                  </label>
                  <input type="text" name="seccion" class="form-control" id="Nombre_3">
                </div>
                </div>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <!-- Button trigger modal -->
              
              
              <input type="submit" value="GUARDAR" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>
              <!-- Modal -->
           
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
  $(document).ready(function() {
    // El cuerpo del método Javascript se puede encontrar en assets / js / demos.js
    md.initDashboardPageCharts();

  });
</script>