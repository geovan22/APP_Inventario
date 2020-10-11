<center>
  <section class="container py-5">
    <div class="col-md-10 py-5">
      <div class="card">
        <div class="card-body">
          <div class="card-header card-header-info">
            <center>
              <h2 class="card-title">
                Asignación de maestros a cursos
              </h2>
              <p class="card-category">
                Complete lo que acontinuacion se solicita:
              </p>
            </center>
          </div>
          <div class="card-body">
            
            
            <form method="post" action="?controller=Director&action=AgregarMaestro&idCursoMaestro={$id}" class="needs-validation " novalidate>
              
              <hr/>
              <div class="form-row py-5">
                <div class="form-group col-md-6 py-3 ">
                  <label for="validationCustom01">
                    Ingrese el Nombre del Curso
                  </label>
                  <input type="text" name="curso" class="form-control " value="{$curso}" id="Nombre_1" required readonly />
                </div>
                
               
                <div class="form-group col-md-6 ">
                  <label for="exampleFormControlSelect1">
                    Seleccione Maestro:
                  </label>
                  <select class="form-control" name="maestro" id="exampleFormControlSelect1">
                    {foreach from=$maestros item=$m }
                        <option value="{$m['id_Pro_Usuarios']}">{$m['Nombre1']} {$m['Nombre2']}, {$m['Apellido1']} {$m['Apellido2']}</option>
                    {/foreach}
                  </select>
                </div>
               
              
              
          </div>
          <input type="submit" value="ASIGNAR MAESTRO" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"/>
          <hr />
    </form>
    
    
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
  $(document).ready(function() { // El cuerpo del método Javascript se puede encontrar en assets / js / demos.js md.initDashboardPageCharts();