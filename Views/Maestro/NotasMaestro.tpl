<!-- TABLA -->
<form method="post" action="?controller=Maestro&action=CargarPunteo">
<div class="py-5">
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
        <section class="container py-5">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-body" >
                        <div class="card-header card-header-info">
        <center>
            <h2 class="card-title">Notas</h2>            
        </center>  
        </div>

    <div class="py-5 container">
		<div class="row">
			<div class="col">
                <table class="table table-striped table-bordered table-hover table-active">
					<thead class="thead-green">
						<tr>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Tarea</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Descripcion</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Punteo </center></font></th> 
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Fecha de Entrega </center></font></th>        
						</tr>
					</thead>
					<tbody>	
                        <tr>
                            <td>{$actividad[0]['Nombre']}</td>
                            <td>{$actividad[0]['Descripcion']}</td>
                            <td>{$actividad[0]['Punteo']}</td>
                            <td>{$actividad[0]['FechaEntrega']}</td>
                        </tr>
                    </tbody>
                </table>
                
                <hr />
                
				<table class="table table-striped table-bordered table-hover table-active">
					<thead class="thead-green">
						<tr>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Carnet</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Alumno</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Actividad </center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Punteo</center></font></th>               
						</tr>
					</thead>
					<tbody>	
                    {foreach from=$datos item=$d }					
                        <tr>
                            <td>
                                {$d['Carnet']}
                            </td>
                        
                            <td>
                                {$d['Alumno']}
                            </td>
                            
                            <td>
                                <a href="{$d['Enlace']}" target="_blank">Actividad</a>
                            </td>
                            
                            <td>
                                <input type="text" name="P{$d['idCalificar']}" />
                                <input type="hidden" name="{$d['idCalificar']}" value="{$d['idCalificar']}" />
                            </td>
                        </tr>
                      {/foreach}      
					</tbody>
				</table>
                <input type="submit" value="Cargar Notas" />
			</div>
		</div>
    </div>
</div>
<!-- /TABLA -->
<!--*************************************************fin Tabla*************************************************-->

</div>
</div>         
</div>
</div>
</form>
