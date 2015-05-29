<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%
	response.setCharacterEncoding("UTF-8");
%>

			<fieldset>	
				<form class="form-plantilla" role="form" action="validate_empresa_caracterizacion_basica.jsp" method="post">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
				
					<h5><label class="label label-primary">INFORMACIÓN GENERAL DE LA EMPRESA</label></h5>
						<div class="form-group">
						<label for="organization_name">Nombre de la empresa</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" id="nm" name="nm" value="<% if (session.getAttribute("temp_admin_organization_nm") != null) { %><%= session.getAttribute("temp_admin_organization_nm").toString() %><% } %>" class="form-control" placeholder="P. ej.  UNDP">
					</div>					
					<div class="form-group">
						<label for="domicilio-social">Domicilio social</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="domicilio_social" placeholder="P. ej.  Calle 23 D # 86 -28" name="domicilio_social" value="<% if (session.getAttribute("temp_admin_organization_domicilio_social") != null) { %><%= session.getAttribute("temp_admin_organization_domicilio_social").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="naturaleza_juridica_lkup">Naturaleza Jurídica</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="naturaleza_juridica_lkup" name="naturaleza_juridica_lkup"  class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_naturaleza_juridica_lkup") == null || session.getAttribute("temp_admin_organization_naturaleza_juridica_lkup").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_naturaleza_juridica_lkup.generateSelectOptions() %>
						</select>
					</div>
					<div class="form-group">
						<label for="pais_de_ubicacion_lkup">País de ubicación</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="pais_de_ubicacion_lkup" name="pais_de_ubicacion_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_pais_de_ubicacion_lkup") == null || session.getAttribute("temp_admin_organization_pais_de_ubicacion_lkup").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
						</select>
					</div>
					
					<h5><label class="label label-primary">DESCRIPCIÓN DE LA ACTIVIDAD DE LA EMPRESA</label></h5>
					<div class="form-group">
						<label for="sector_de_actividad_lkup">Sector de la actividad</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="sector_de_actividad_lkup" name="sector_de_actividad_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_sector_de_actividad_lkup") == null || session.getAttribute("temp_admin_organization_sector_de_actividad_lkup").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_sector_de_actividad_lkup.generateSelectOptions() %>  
						</select>
					</div>
					
					<div class="form-group">
						<label for="mercado">Mercado</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="mercado_lkup" name="mercado_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_mercado_lkup") == null || session.getAttribute("temp_admin_organization_mercado_lkup").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_mercado_lkup.generateSelectOptions() %>  
						</select>
					</div>			
					
					<h5><label class="label label-primary">TAMAÑO DE LA EMPRESA</label></h5>
					
					<div class="form-group">
						<label for="num_de_personas_trabajadores">Tamaño</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_num_de_personas_trabajadores") == null || session.getAttribute("temp_admin_organization_num_de_personas_trabajadores").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_num_de_personas_trabajadores.generateSelectOptions() %>  
						</select>
					</div>						
					
					<div class="form-group">
						<label for="facturacion_anual_lkup">Facturación anual (USD)</label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="facturacion_anual_lkup" name="facturacion_anual_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_facturacion_anual_lkup") == null || session.getAttribute("temp_admin_organization_facturacion_anual_lkup").toString().equals("")) { %> selected <% } %>>Seleccione una opción</option>
							<%= db_p_get_facturacion_anual_lkup.generateSelectOptions() %>  
						</select>
					</div>						
					
    					
					<h5><label class="label label-primary">PERSONA DE CONTACTO</label></h5>
					<div class="form-group">
						<label for="nombre">Nombre y apellidos</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="contacto_nombre" placeholder="Ingrese su nombre - organización" name="contacto_nombre" value="<% if (session.getAttribute("temp_admin_organization_contacto_nombre") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_nombre").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="cargo">Cargo</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="contacto_cargo" placeholder="Ingrese su cargo" name="contacto_cargo" value="<% if (session.getAttribute("temp_admin_organization_contacto_cargo") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_cargo").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="telefono">Teléfono</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="15" type="text" class="form-control" id="contacto_tel" placeholder="Ingrese su número de teléfono" name="contacto_tel" value="<% if (session.getAttribute("temp_admin_organization_contacto_tel") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_tel").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="fax">Fax</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="15" type="text" class="form-control" id="contacto_fax" placeholder="Ingrese su número de fax" name="contacto_fax" value="<% if (session.getAttribute("temp_admin_organization_contacto_fax") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_fax").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="30" type="email" class="form-control" id="contacto_email" placeholder="Ingrese su correo electrónico" name="contacto_email" value="<% if (session.getAttribute("temp_admin_organization_contacto_email") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_email").toString() %><% } %>">
					</div>

<% 
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { 
		// do nothing
	} else {
%>
					<button type="submit" class="btn btn-info btn-block separador-top">GRABAR Y CONTINUAR</button>
<%
	}
%>

					</form>
				</fieldset>
				
