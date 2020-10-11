
  <body class="">
                                                           
 {include file="Navs/NavLateral.tpl"}    
  {include file="Navs/NavCabecera.tpl"}  
   
  {if $vista=="Default"}
    {include file="Director/Default.tpl"}
  {else if $vista=="Empleado"}
    {include file="Director/EmpleadoDirector.tpl"}
  {else if $vista=="Maestro"}
    {include file="Director/MaestrosDirector.tpl"}
  {else if $vista=="Alumno"}
    {include file="Director/EstudiantesDirector.tpl"}
  {else if $vista=="Usuario"}
    {include file="Director/UsuarioDirector.tpl"}
  {else if $vista=="Grados"}
    {include file="Director/GradosDirector.tpl"}
  {else if $vista=="Consultas"}
    {include file="Director/MantenimientoDirector.tpl"}
  {else if $vista=="Actualizar"}
    {include file="Director/ActualizarDirector.tpl"}
  {else if $vista=="Curso"}
    {include file="Director/CursoDirector.tpl"}
  {else if $vista=="Asignacion"}
    {include file="Director/AsignacionDirector.tpl"}
  {else if $vista=="ConsultaMalla"}
    {include file="Director/CursosListado.tpl"}
  {else if $vista=="ActualizarMalla"}
    {include file="Director/ActualizarConsultaMalla.tpl"}
  {else if $vista=="AsignarMaestro"}
    {include file="Director/AsignarMaestro.tpl"}
  {else if $vista=="AsignacionSalon"}
    {include file="Director/alumno_salon.tpl"}
  {else if $vista=="ConsultaNivel"}
    {include file="Director/ConsultaNivel.tpl"}
 
  {else}
    <h1>VISTA NO DISPONIBLE</h1> 
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

        if ($sidebar.length != 0){
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

