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
            <h2 class="card-title">Notas</h2>            
        </center>  
        </div>

    <div class="py-5 container">
		<div class="row">
			<div class="col">
				<table class="table table-striped table-bordered table-hover table-active">
					<thead class="thead-green">
						<tr>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Actividad</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Descripción</center></font></th>
                            <th><font color="Navy" face="Comic Sans MS,arial"><center>Punteo</center></font></th>
                            
                        
                                            
						</tr>
					</thead>
					<tbody>	
                    {foreach from=$notas item=n}
                        <tr>
                            <td>{$n['Actividad']}</td>
                            <td>{$n['Descripcion']}</td>
                            <td>{$n['Punteo']}</td>
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