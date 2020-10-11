{include file="Cabeceras/Header.tpl"}
    {if $title=="Colegio"}
        {include file="index.tpl"}
    {else if $title=="Director"}
        {include file="Director.tpl"}
    {else if $title=="Maestro"}
        {include file="Maestro.tpl"}
    {else if $title=="Alumno"}
        {include file="Alumno.tpl"}
    {/if}
{include file="Cabeceras/Footer.tpl"}