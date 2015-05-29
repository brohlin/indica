<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=empresa_nueva");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%	
	DynStringArray parameters = new DynStringArray();
	DbResults db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
	DbResults db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_naturaleza_juridica_lkup", parameters);
%>

	<section class="fondo-gris ">
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Administración general</h3>
					<h1 class="text-white">CREAR EMPRESA</h1>
				</div>
			</div>
		</header>
		<div class=" container ">

			<div class="col-xs-12 col-md-8 cuadrado separador-top separador-bottom col-centered ">
			<fieldset>	
				<form role="form" action="validate_empresa_nueva.jsp" method="post">				
					<h5><label class="label label-primary">INFORMACIÓN GENERAL DE LA EMPRESA</label></h5>
						<div class="form-group">
						<label for="organization_name">Nombre de la empresa</label>
						<input maxlength="45" type="text" name="nm" value="" class="form-control" id="organization_nm" placeholder="P. ej.  UNDP">
					</div>					
					
						<div class="form-group">
						<label for="denominacion-social">Denominación social de la empresa - organización</label>
						<input maxlength="45" type="text" name="denominacion_social" value="" class="form-control" id="denominacion-social" placeholder="P. ej.  Importadora A&amp;A">
					</div>
					<div class="form-group">
						<label for="cedula-fiscal">Cédula de identificación fiscal (CIF)</label>
						<input maxlength="20" type="text" class="form-control" id="cedula-fiscal" placeholder="P. ej.  800095-52220-3" name="cif" value="">
					</div>
					<div class="form-group">
						<label for="domicilio-social">Domicilio social</label>
						<input maxlength="45" type="text" class="form-control" id="domicilio-social" placeholder="P. ej.  Calle 23 D # 86 -28" name="domicilio_social" value="">
					</div>
					<div class="form-group">
						<label for="naturaleza_juridica_lkup">Naturaleza Jurídica</label>
						<select id="naturaleza_juridica_lkup" name="naturaleza_juridica_lkup"  class="form-control">
							<option disabled selected>Seleccione una opción</option>
							<%= db_p_get_naturaleza_juridica_lkup.generateSelectOptions() %>
						</select>
					</div>
					<div class="form-group">
						<label for="pais_de_ubicacion_lkup">País de ubicación</label>
						<select name="pais_de_ubicacion_lkup" class="form-control">
							<option disabled selected>Seleccione una opción</option>
							<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
						</select>
					</div>

					<button type="submit" class="btn btn-info btn-block separador-top">GRABAR Y CONTINUAR</button>
					</form>
				</fieldset>
		</div> <!-- end col-8 -->
		</div> <!-- end container -->
	</section>

<%
	}
%>
	