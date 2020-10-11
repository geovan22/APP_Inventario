<!-- TABLA -->
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
            <h2 class="card-title">Registros de tareas</h2>            
        </center>  
        </div>

    <div class="py-5 container">
		<div class="row">
			<div class="col">
				<table class="table table-striped table-bordered table-hover table-active">
					<thead class="thead-green">
						<tr>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Curso</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Grado</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Nivel</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Carrera</center></font></th>
                            <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Crear tarea</center></font></th>
                            <th width="10%"><font color="Navy" face="Comic Sans MS,arial"><center>Consultar tarea</center></font></th>                  
						</tr>
					</thead>
					<tbody>						
                        
                            
                        {foreach from=$datos item=$d}
                            <tr>
                                <td>
                                    {$d['Curso']}
                                </td>
                                <td>
                                    {$d['Grado'][0]}
                                </td>
                                <td>
                                    {$d['Nivel'][0]}
                                </td>
                                <td>
                                    {$d['Carrera'][0]}
                                </td>
        						<td>
                                    <a href="?controller=Maestro&action=CrearTarea&idMalla={$d['IdMalla'][0]}&datos={$d['Curso']}--{$d['Grado'][0]}--{$d['Nivel'][0]}--{$d['Carrera'][0]}" ><i class="material-icons">sticky_note_2</i></a>
                                </td>
                                <td>                                                            
                                    <a href="?controller=Maestro&action=ConsultarTarea&idMalla={$d['IdMalla'][0]}&datos={$d['Curso']}--{$d['Grado'][0]}--{$d['Nivel'][0]}--{$d['Carrera'][0]}"" ><i class="material-icons">rate_review</i></a>                                                          
                                </td>
                            </tr>
                        {/foreach}
                            
					</tbody>
				</table>
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
</div>  
</section>
</center>