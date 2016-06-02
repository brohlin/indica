<%	
	DynStringArray parameters = new DynStringArray();
	DbResults db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
	DbResults db_p_get_sector_de_actividad_lkup = Database.callProcResults("p_get_sector_de_actividad_lkup", parameters);
	DbResults db_p_get_num_de_personas_trabajadores = Database.callProcResults("p_get_num_de_personas_trabajadores", parameters);

%>
	

<section role="dialog" class="borde-superior fondo-gris">
	<header>
		<div class="well">
			<h1 class="text-center text-white"><fmt:message key="resultados.element1" /></h1>
		</div>
		<div class="well-2 bc-purple">
			<h3 class="text-center text-white">&nbsp;</h3>
		</div>
	</header>
<div class="container">
<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">
	
	
	<fieldset>	
		<form class="form-plantilla" role="form" action="#" method="post">
			<h5><label class="label label-primary">&nbsp;</label></h5>
				
			<div class="form-group">
				<label for="pais_de_ubicacion_lkup"><fmt:message key="resultados.element2" /></label>
				<select id="pais_de_ubicacion_lkup" name="pais_de_ubicacion_lkup" class="form-control" required="required" >
					<option disabled><fmt:message key="resultados.element3" /></option>
					<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
				</select>
			</div>

			<div class="form-group">
				<label for="sector_de_actividad_lkup"><fmt:message key="resultados.element4" /></label>
				<select id="sector_de_actividad_lkup" name="sector_de_actividad_lkup" class="form-control" required="required" >
					<option disabled><fmt:message key="resultados.element3" /></option>
					<%= db_p_get_sector_de_actividad_lkup.generateSelectOptions() %>  
				</select>
			</div>

			<div class="form-group">
				<label for="num_de_personas_trabajadores"><fmt:message key="resultados.element5" /></label>
				<select id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
					<option disabled><fmt:message key="resultados.element3" /></option>
					<%= db_p_get_num_de_personas_trabajadores.generateSelectOptions() %>  
				</select>
			</div>	
			
			<div class="form-group">
				<label for="num_de_personas_trabajadores"><fmt:message key="resultados.element6" /></label>
				<select id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
					<option disabled><fmt:message key="resultados.element3" /></option>
					<option value="ge"><fmt:message key="resultados.element7" /></option>  
					<option value="cp"><fmt:message key="resultados.element8" /></option>  
					<option value="rs"><fmt:message key="resultados.element9" /></option>  
					<option value="dp"><fmt:message key="resultados.element10" /></option> 
					<option value="r"><fmt:message key="resultados.element11" /></option> 
					<option value="pv"><fmt:message key="resultados.element12" /></option> 
					
				</select>
			</div>				


			<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="resultados.element13" /></button>
			</form>
		</fieldset>	
	
</div>
</div>

</section>
