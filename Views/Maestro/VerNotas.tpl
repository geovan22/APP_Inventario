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
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Alumno</center></font></th>                 {$cont=0}
                            {foreach from=$tareas item=$t }
                            {$cont++}
                                <th><font color="Navy" face="Comic Sans MS,arial">
                                    <center>{$t['tarea']}</center></font>
                                </th>    
                            {/foreach}
                            
						</tr>
					</thead>
					<tbody>	
                        {foreach from=$datos item=$d }
                        {$var=0}
                            <tr>
                                 <td>
                                    {$d['alumno']}
                                 </td> 
                                 {foreach from=$datos item=$p }
                                    {if $var<$cont}
                                         <td>
                                            {$p['punteo']}
                                         </td> 
                                         {$var++}
                                    {/if}
                                 {/foreach}                      
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