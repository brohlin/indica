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
	parameters.add(session.getAttribute("language").toString().substring(0, 2));
	DbResults db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
	DbResults db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_naturaleza_juridica_lkup", parameters);
%>

	<section class="fondo-gris ">
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"><fmt:message key="empresa_nueva.element1" /></h3>
					<h1 class="text-white"><fmt:message key="empresa_nueva.element2" /></h1>
				</div>
			</div>
		</header>
		<div class=" container ">

			<div class="col-xs-12 col-md-8 cuadrado separador-top separador-bottom col-centered ">
			<fieldset>	
				<form role="form" action="validate_empresa_nueva.jsp" method="post">				
					<h5><label class="label label-primary"><fmt:message key="empresa_nueva.element3" /></label></h5>
						<div class="form-group">
						<label for="organization_name"><fmt:message key="empresa_nueva.element4" /></label>
						<input maxlength="45" type="text" name="nm" value="" class="form-control" id="organization_nm" placeholder="<fmt:message key="empresa_nueva.element5" />">
					</div>					
					
						<div class="form-group">
						<label for="denominacion-social"><fmt:message key="empresa_nueva.element6" /></label>
						<input maxlength="45" type="text" name="denominacion_social" value="" class="form-control" id="denominacion-social" placeholder="<fmt:message key="empresa_nueva.element7" />">
					</div>
					<div class="form-group">
						<label for="cedula-fiscal"><fmt:message key="empresa_nueva.element8" /></label>
						<input maxlength="20" type="text" class="form-control" id="cedula-fiscal" placeholder="<fmt:message key="empresa_nueva.element9" />" name="cif" value="">
					</div>
					<div class="form-group">
						<label for="domicilio-social"><fmt:message key="empresa_nueva.element10" /></label>
						<input maxlength="45" type="text" class="form-control" id="domicilio-social" placeholder="<fmt:message key="empresa_nueva.element11" />" name="domicilio_social" value="">
					</div>
					<div class="form-group">
						<label for="naturaleza_juridica_lkup"><fmt:message key="empresa_nueva.element12" /></label>
						<select id="naturaleza_juridica_lkup" name="naturaleza_juridica_lkup"  class="form-control">
							<option disabled selected><fmt:message key="empresa_nueva.element15" /></option>
							<%= db_p_get_naturaleza_juridica_lkup.generateSelectOptions() %>
						</select>
					</div>
					<div class="form-group">
						<label for="pais_de_ubicacion_lkup"><fmt:message key="empresa_nueva.element13" /></label>
						<select name="pais_de_ubicacion_lkup" class="form-control">
							<option disabled selected><fmt:message key="empresa_nueva.element15" /></option>
							<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
						</select>
					</div>

					<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa_nueva.element14" /></button>
					</form>
				</fieldset>
		</div> <!-- end col-8 -->
		</div> <!-- end container -->
	</section>

<%
	}
%>
	