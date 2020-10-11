 <body class="">
  
 {include file="Navs/NavMaestros.tpl"}  
 {include file="Navs/NavCabecera.tpl"}
 
 {if $vista=="CrearTarea"}
    {include file="Maestro/Creacion_tareas.tpl"}
 {else if $vista=="AsignarTarea"}
    {include file="Maestro/Asignar_tarea.tpl"}
 {else if $vista=="ListarCursos"}
    {include file="Maestro/Actividades_curso.tpl"}
 {else if $vista=="ModoficarTarea"}
    {include file="Maestro/ModificarTarea.tpl"}
 
 {/if}
 
 
 
 
 
 
 
 
 
 
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
  