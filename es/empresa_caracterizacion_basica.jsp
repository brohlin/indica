<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="java.util.Enumeration" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="org.undp.i18n.text" />

<%
	response.setCharacterEncoding("UTF-8");

	DynStringArray parameters = new DynStringArray();
	DbResults db_p_get_pais_de_ubicacion_lkup = null;
	DbResults db_p_get_naturaleza_juridica_lkup = null;
	DbResults db_p_get_sector_de_actividad_lkup = null;
	DbResults db_p_get_mercado_lkup = null;
	DbResults db_p_get_num_de_personas_trabajadores = null;
	DbResults db_p_get_facturacion_anual_lkup = null;
	
	parameters.add(session.getAttribute("language").toString().substring(0, 2));
	
	String organization_id = "";
	
	try {
		organization_id = session.getAttribute("temp_admin_organization_id").toString();
	} catch (Exception e) {
		organization_id = "";
	}
		
	if (organization_id != null && !organization_id.equals("")) {
		

		parameters.add(organization_id);
		db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_existing_pais_de_ubicacion_lkup", parameters);
		db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_existing_naturaleza_juridica_lkup", parameters);
			
		db_p_get_sector_de_actividad_lkup = Database.callProcResults("p_get_existing_sector_de_actividad_lkup", parameters);
		db_p_get_mercado_lkup = Database.callProcResults("p_get_existing_mercado_lkup", parameters);
		db_p_get_num_de_personas_trabajadores = Database.callProcResults("p_get_existing_num_de_personas_trabajadores", parameters);
		db_p_get_facturacion_anual_lkup = Database.callProcResults("p_get_existing_facturacion_anual_lkup", parameters);
	} else {
		db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
		db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_naturaleza_juridica_lkup", parameters);	
	}
%>

			<fieldset>	
				<form class="form-plantilla" role="form" action="validate_empresa_caracterizacion_basica.jsp" method="post">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
				
					<h5><label class="label label-primary"><fmt:message key="empresa_caracterizacion_basica.label.element1" /></label></h5>
						<div class="form-group">
						<label for="organization_name"><fmt:message key="empresa_caracterizacion_basica.label.element2" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" id="nm" name="nm" value="<% if (session.getAttribute("temp_admin_organization_nm") != null) { %><%= session.getAttribute("temp_admin_organization_nm").toString() %><% } %>" class="form-control" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element3" />">
					</div>					
					<div class="form-group">
						<label for="domicilio-social"><fmt:message key="empresa_caracterizacion_basica.label.element4" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="domicilio_social" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element5" />" name="domicilio_social" value="<% if (session.getAttribute("temp_admin_organization_domicilio_social") != null) { %><%= session.getAttribute("temp_admin_organization_domicilio_social").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="naturaleza_juridica_lkup"><fmt:message key="empresa_caracterizacion_basica.label.element6" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="naturaleza_juridica_lkup" name="naturaleza_juridica_lkup"  class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_naturaleza_juridica_lkup") == null || session.getAttribute("temp_admin_organization_naturaleza_juridica_lkup").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_naturaleza_juridica_lkup.generateSelectOptions() %>
							
						</select>
					</div>
					<div class="form-group">
						<label for="pais_de_ubicacion_lkup"><fmt:message key="empresa_caracterizacion_basica.label.element7" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="pais_de_ubicacion_lkup" name="pais_de_ubicacion_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_pais_de_ubicacion_lkup") == null || session.getAttribute("temp_admin_organization_pais_de_ubicacion_lkup").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_pais_de_ubicacion_lkup.generateSelectOptions() %>  
						</select>
					</div>
					
					<h5><label class="label label-primary"><fmt:message key="empresa_caracterizacion_basica.label.element8" /></label></h5>
					<div class="form-group">
						<label for="sector_de_actividad_lkup"><fmt:message key="empresa_caracterizacion_basica.label.element9" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="sector_de_actividad_lkup" name="sector_de_actividad_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_sector_de_actividad_lkup") == null || session.getAttribute("temp_admin_organization_sector_de_actividad_lkup").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_sector_de_actividad_lkup.generateSelectOptions() %>  
						</select>
					</div>
					
					<div class="form-group">
						<label for="mercado"><fmt:message key="empresa_caracterizacion_basica.label.element10" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="mercado_lkup" name="mercado_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_mercado_lkup") == null || session.getAttribute("temp_admin_organization_mercado_lkup").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_mercado_lkup.generateSelectOptions() %>  
						</select>
					</div>			
					
					<h5><label class="label label-primary"><fmt:message key="empresa_caracterizacion_basica.label.element11" /></label></h5>
					
					<div class="form-group">
						<label for="num_de_personas_trabajadores"><fmt:message key="empresa_caracterizacion_basica.label.element12" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_num_de_personas_trabajadores") == null || session.getAttribute("temp_admin_organization_num_de_personas_trabajadores").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_num_de_personas_trabajadores.generateSelectOptions() %>  
						</select>
					</div>						
					
					<div class="form-group">
						<label for="facturacion_anual_lkup"><fmt:message key="empresa_caracterizacion_basica.label.element13" /></label>
						<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="facturacion_anual_lkup" name="facturacion_anual_lkup" class="form-control" required="required" >
							<option disabled <% if (session.getAttribute("temp_admin_organization_facturacion_anual_lkup") == null || session.getAttribute("temp_admin_organization_facturacion_anual_lkup").toString().equals("")) { %> selected <% } %>><fmt:message key="empresa_caracterizacion_basica.label.element26" /></option>
							<%= db_p_get_facturacion_anual_lkup.generateSelectOptions() %>  
						</select>
					</div>						
					
    					
					<h5><label class="label label-primary"><fmt:message key="empresa_caracterizacion_basica.label.element14" /></label></h5>
					<div class="form-group">
						<label for="nombre"><fmt:message key="empresa_caracterizacion_basica.label.element15" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="contacto_nombre" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element16" />" name="contacto_nombre" value="<% if (session.getAttribute("temp_admin_organization_contacto_nombre") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_nombre").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="cargo"><fmt:message key="empresa_caracterizacion_basica.label.element17" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="45" type="text" class="form-control" id="contacto_cargo" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element18" />" name="contacto_cargo" value="<% if (session.getAttribute("temp_admin_organization_contacto_cargo") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_cargo").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="telefono"><fmt:message key="empresa_caracterizacion_basica.label.element19" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> required="required" maxlength="15" type="text" class="form-control" id="contacto_tel" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element21" />" name="contacto_tel" value="<% if (session.getAttribute("temp_admin_organization_contacto_tel") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_tel").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="fax"><fmt:message key="empresa_caracterizacion_basica.label.element22" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="15" type="text" class="form-control" id="contacto_fax" placeholder="<fmt:message key="empresa_caracterizacion_basica.label.element23" />" name="contacto_fax" value="<% if (session.getAttribute("temp_admin_organization_contacto_fax") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_fax").toString() %><% } %>">
					</div>
					<div class="form-group">
						<label for="email"><fmt:message key="empresa_caracterizacion_basica.label.element24" /></label>
						<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="30" type="email" class="form-control" id="contacto_email" placeholder="Ingrese su correo electrónico" name="contacto_email" value="<% if (session.getAttribute("temp_admin_organization_contacto_email") != null) { %><%= session.getAttribute("temp_admin_organization_contacto_email").toString() %><% } %>">
					</div>

<% 
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { 
		// do nothing
	} else {
%>
					<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa_caracterizacion_basica.label.element25" /></button>
<%
	}
%>

					</form>
				</fieldset>
				
