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
            <h2 class="card-title">Ver Notas</h2>            
        </center>  
        </div>

    <div class="py-5 container">
		<div class="row">
			<div class="col">
                <table class="table table-striped table-bordered table-hover table-active">
					<thead class="thead-green">
						<tr>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>No</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Alumno</center></font></th>           
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Actividad</center></font></th>     
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Punteo</center></font></th> 
						</tr>
					</thead>
					<tbody>	
                        {$var=0}
                        {foreach key=key from=$datos item=d }
                            <tr>   
                                <td>
                                    {$key}
                                </td>   
                                <td>
                                    {$d['alumno']}
                                </td>  
                                <td>
                                    {$d['tarea']}
                                </td> 
                                <td>
                                    {$d['punteo']}
                                </td>       
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
                
                <hr />
                
				
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