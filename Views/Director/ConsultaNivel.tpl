<center>
    <section class="container py-5">
      <div class="col-md-10 py-5">
        <div class="card">
          <div class="card-body">
            <div class="card-header card-header-info">
              <center>
                <h2 class="card-title">
                  Consulta de Niveles 
                </h2>
                
              </center>
            </div>
            <div class="card-body">
              
              <div class="py-3 container">
                <div class="row">
                  <div class="col">
                    <hr /> <h3 class="display-4">Primaria</h3><hr/>
                    <table class="table table-striped table-bordered table-hover table-active ">
                      <thead>
                        <tr>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Grado</center></font></th>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Sección</center></font></th>             
                        </tr>
                      </thead>
                      <tbody>
                          {foreach from=$nivel item=$n}
                            {if $n['Nivel']=="Primaria"}
                                {foreach from=$grado item=$g}
                                    {foreach from=$malla item=$m}
                                        {if $m['Pro_grado_id_Pro_grado']==$g['id_Pro_grado'] and $m['Pro_Nivel_id_Pro_Nivel']==$n['id_Pro_Nivel']}
                                            <tr>
                                              <td>{$g['Grado']}</td>
                                              {if $m['Pro_Seccion_id_Pro_Seccion']==1}
                                                <td>A</td>
                                              {else}
                                                <td>B</td>
                                              {/if}
                                            </tr>
                                        {/if}
                                    {/foreach}
                                {/foreach}                          
                            {/if}                            
                          {/foreach}	
                      </tbody>
                    </table>
                    <hr /> <h3 class="display-4">Básico</h3><hr/>
                    <table class="table table-striped table-bordered table-hover table-active ">
                      <thead>
                        <tr>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Grado</center></font></th>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Sección</center></font></th>             
                        </tr>
                      </thead>
                      <tbody>
                        {foreach from=$nivel item=$n}
                            {if $n['Nivel']=="Basicos"}
                                {foreach from=$grado item=$g}
                                    {foreach from=$malla item=$m}
                                        {if $m['Pro_grado_id_Pro_grado']==$g['id_Pro_grado'] and $m['Pro_Nivel_id_Pro_Nivel']==$n['id_Pro_Nivel']}
                                            <tr>
                                              <td>{$g['Grado']}</td>
                                              {if $m['Pro_Seccion_id_Pro_Seccion']==1}
                                                <td>A</td>
                                              {else}
                                                <td>B</td>
                                              {/if}
                                            </tr>
                                        {/if}
                                    {/foreach}
                                {/foreach}                          
                            {/if}                            
                          {/foreach}	
                      </tbody>
                    </table>
                    <hr /> <h3 class="display-4">Diversificado</h3><hr/>
                    <table class="table table-striped table-bordered table-hover table-active ">
                      <thead>
                        <tr>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Grado</center></font></th>
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Carrera</center></font></th> 
                          <th><font color="Navy" face="Comic Sans MS,arial"><center>Sección</center></font></th>             
                        </tr>
                      </thead>
                      <tbody>
                        {foreach from=$nivel item=$n}
                            {if $n['Nivel']=="Diversificado"}
                                {foreach from=$grado item=$g}
                                    {foreach from=$malla item=$m}
                                        {if $m['Pro_grado_id_Pro_grado']==$g['id_Pro_grado'] and $m['Pro_Nivel_id_Pro_Nivel']==$n['id_Pro_Nivel']}
                                            {foreach from=$carrera item=$c}
                                                {if $c['id_Pro_Carrera']==$m['Pro_Carrera_id_Pro_Carrera']}
                                                    <tr>
                                                      <td>{$g['Grado']}</td>
                                                      <td>{$c['Carrera']}</td>
                                                      {if $m['Pro_Seccion_id_Pro_Seccion']==1}
                                                        <td>A</td>
                                                      {else}
                                                        <td>B</td>
                                                      {/if}
                                                    </tr>
                                                {/if}
                                            {/foreach}
                                        {/if}
                                    {/foreach}
                                {/foreach}                          
                            {/if}                            
                          {/foreach}
                    </table>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
  </center>