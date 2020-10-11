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
Creacion de Usuario
</h2>
<p class="card-category">
Complete lo que acontinuacion se solicita:
</p>
</center>
</div>
<div class="card-body">

<form method="post" action="?controller=Director&action=CrearUsuario">
<div class="form-row">

<div class="form-group col-md-6">
<label for="validationCustom01">
Número de Carnet:
</label>
<input type="text" name="dpi" class="form-control" id="validationCustom01">
</div>
</div>
<center>
<div class="form-group ">
<div class="col-sm-6">
<input type="submit" value="CREAR USUARIO" class="btn btn-primary"/>
</div>
</div>
</center>

</form>
</div>
<hr />
<br />
{if isset($user)}
<div class="alert alert-primary" style="max-width: 20rem;"  role="alert">
USUARIO: <strong>{$user}</strong>
</div>
{if isset($pass)}
<div class="alert alert-primary" style="max-width: 20rem;"  role="alert">
PASSWORD: <strong>{$pass}</strong>
</div>
{/if}
{if isset($carnet)}
<div class="alert alert-primary" style="max-width: 20rem;"  role="alert">
CARNET: <strong>{$carnet}</strong>
</div>
{/if}
{/if}
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
$(document).ready(function() { // El cuerpo del método Javascript se puede encontrar en assets / js / demos.js md.initDashboardPageCharts(); });