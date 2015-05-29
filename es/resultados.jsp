<%	
	DynStringArray parameters = new DynStringArray();
	DbResults db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
	DbResults db_p_get_sector_de_actividad_lkup = Database.callProcResults("p_get_sector_de_actividad_lkup", parameters);
	DbResults db_p_get_num_de_personas_trabajadores = Database.callProcResults("p_get_num_de_personas_trabajadores", parameters);

%>
	

<section role="dialog" class="borde-superior fondo-gris">
	<header>
		<div class="well">
			<h1 class="text-center text-white">RESULTADOS</h1>
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
				<label for="pais_de_ubicacion_lkup">Pa�s</label>
				<select id="pais_de_ubicacion_lkup" name="pais_de_ubicacion_lkup" class="form-control" required="required" >
					<option disabled>Seleccione una opci�n</option>
					<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
				</select>
			</div>

			<div class="form-group">
				<label for="sector_de_actividad_lkup">Sector</label>
				<select id="sector_de_actividad_lkup" name="sector_de_actividad_lkup" class="form-control" required="required" >
					<option disabled>Seleccione una opci�n</option>
					<%= db_p_get_sector_de_actividad_lkup.generateSelectOptions() %>  
				</select>
			</div>

			<div class="form-group">
				<label for="num_de_personas_trabajadores">Tama�o</label>
				<select id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
					<option disabled>Seleccione una opci�n</option>
					<%= db_p_get_num_de_personas_trabajadores.generateSelectOptions() %>  
				</select>
			</div>	
			
			<div class="form-group">
				<label for="num_de_personas_trabajadores">Pilar</label>
				<select id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
					<option disabled>Seleccione una opci�n</option>
					<option value="ge">�mbitos generales de empresas u organizaciones (GE)</option>  
					<option value="cp">Descripci�n del personal (CP)</option>  
					<option value="rs">Reclutamiento y selecci�n y de contrataci�n (RS)</option>  
					<option value="dp">Desarrollo profesional y desempe�o (DP)</option> 
					<option value="r">Remuneraci�n (R)</option> 
					<option value="pv">Prevenci�n del acoso en el �mbito laboral (PV)</option> 
					
				</select>
			</div>				


			<button type="submit" class="btn btn-info btn-block separador-top">CONTINUAR</button>
			</form>
		</fieldset>	
	
</div>
</div>

</section>
