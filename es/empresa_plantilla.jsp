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
	DynStringArray parameters = new DynStringArray();
	DbResults db = null;
	
	DynStringArray parameters2 = new DynStringArray();
	DbResults db2 = null;
	
	if (session.getAttribute("temp_admin_organization_id") != null) { 
		parameters.add(session.getAttribute("temp_admin_organization_id").toString());
		parameters.add("table1");
		
		parameters2.add(session.getAttribute("temp_admin_organization_id").toString());
		parameters2.add("table2");
	} 

	db = Database.callProcResults("p_get_organization_dynamic_rows", parameters);
	db2 = Database.callProcResults("p_get_organization_dynamic_rows2", parameters2);

%>


				<form role="form" action="validate_empresa_plantilla.jsp" method="post" class="form-plantilla">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
					<input id="tabla4_coinicide_con_tabla1_mujeres" name="tabla4_coinicide_con_tabla1_mujeres" value="" type="hidden">
					<input id="tabla4_coinicide_con_tabla1_hombres" name="tabla4_coinicide_con_tabla1_hombres" value="" type="hidden">
				
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos1"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_plantilla.element1" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_plantilla.element2" /></h3>
						</div>
						<h6>
							<label class="label label-primary padding-small"><fmt:message key="empresa_plantilla.element3" /> 
								<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element4" />"  class="fa fa-question-circle"></a>
							</label>
						</h6>
						<div id="table0" class="table">
							<div class="row">
								<div class="col-xs-6 col-md-8 ">
									<h6>
										<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element5" />
										</label>
									</h6>
								</div>
								<div class="col-xs-3 col-md-2  ">
									<h6>
										<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element6" />
										</label>
									</h6>
								</div>
								<div class="col-xs-3 col-md-2 ">
									<h6>
										<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element7" />
										</label>
									</h6>
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8 ">
									<label class="titulo-input" ><fmt:message key="empresa_plantilla.element8" /></label>
								</div>
								<div class="col-xs-3 col-md-2 ">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_direccion_general_o_maximo_cargo_mujeres" name="num_direccion_general_o_maximo_cargo_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_direccion_general_o_maximo_cargo_hombres" name="num_direccion_general_o_maximo_cargo_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_hombres").toString() %><% } %>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element9" />
										<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element10" />"  class="fa fa-question-circle"></a>
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_directivos_como_gerencias_mujeres" name="num_puestos_directivos_como_gerencias_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_directivos_como_gerencias_hombres" name="num_puestos_directivos_como_gerencias_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_hombres").toString() %><% } %>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8 col-lg-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element11" />
										<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element12" />" class="fa fa-question-circle"></a>
									</label>
								</div>
							<div class="col-xs-3 col-md-2 col-lg-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2 col-lg-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input"><fmt:message key="empresa_plantilla.element13" />
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element14" />" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input"><fmt:message key="empresa_plantilla.element15" />
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element16" />" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input"><fmt:message key="empresa_plantilla.element17" />
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element18" />" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group fila-subtotal">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input"><fmt:message key="empresa_plantilla.element19" />
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_cargos_responsabilidad_mujeres" name="num_subtotal_cargos_responsabilidad_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_mujeres").toString() %><% } %>" readonly>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_cargos_responsabilidad_hombres" name="num_subtotal_cargos_responsabilidad_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_hombres").toString() %><% } %>" readonly>
								</div>	
							</div>
						</div>
					
					<h6>
						<label class="label label-primary padding-small"><fmt:message key="empresa_plantilla.element20" />
							<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element21" />"  class="fa fa-question-circle"></a>
						</label>
					</h6>
					<div id="table1" class="table">
	
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element22" />
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_tecnicos_mujeres" name="num_puestos_tecnicos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_tecnicos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_tecnicos_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_tecnicos_hombres" name="num_puestos_tecnicos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_tecnicos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_tecnicos_hombres").toString() %><% } %>">
								</div>	
							</div>


							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element23" />
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_administrativos_mujeres" name="num_puestos_administrativos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_administrativos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_administrativos_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_administrativos_hombres" name="num_puestos_administrativos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_administrativos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_administrativos_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element24" />
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_auxiliares_mujeres" name="num_puestos_auxiliares_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_auxiliares_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_auxiliares_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_auxiliares_hombres" name="num_puestos_auxiliares_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_auxiliares_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_auxiliares_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><fmt:message key="empresa_plantilla.element25" />
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_operarios_mujeres" name="num_puestos_operarios_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_operarios_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_operarios_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_operarios_hombres" name="num_puestos_operarios_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_operarios_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_operarios_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_a" placeholder="<fmt:message key="empresa_plantilla.element26" />"  value="<% if (session.getAttribute("temp_admin_organization_puestos_a") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_a").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_a_mujeres" name="num_puestos_a_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_a_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_a_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_a_hombres" name="num_puestos_a_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_a_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_a_hombres").toString() %><% } %>">
								</div>	
							</div>

							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_b" placeholder="<fmt:message key="empresa_plantilla.element26" />"  value="<% if (session.getAttribute("temp_admin_organization_puestos_b") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_b").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_b_mujeres" name="num_puestos_b_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_b_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_b_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_b_hombres" name="num_puestos_b_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_b_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_b_hombres").toString() %><% } %>">
								</div>	
							</div>
							
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_c" placeholder="<fmt:message key="empresa_plantilla.element26" />"  value="<% if (session.getAttribute("temp_admin_organization_puestos_c") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_c").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_c_mujeres" name="num_puestos_c_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_c_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_c_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_c_hombres" name="num_puestos_c_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_c_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_c_hombres").toString() %><% } %>">
								</div>	
							</div>							
	
							<div id="row_puestos_d" class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="puestos_d" placeholder="<fmt:message key="empresa_plantilla.element26" />"  value="<% if (session.getAttribute("temp_admin_organization_puestos_d") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_d").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_d_mujeres" name="num_puestos_d_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_d_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_d_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_d_hombres" name="num_puestos_d_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_d_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_d_hombres").toString() %><% } %>">
								</div>
							</div>
								
							<%= db.generateHtml() %>
								
							<div id="dynamic_row"></div>
							
							<div class="row form-group">
								<div class="col-xs-6 col-md-6">
									<a id="add_row" class="btn btn-default pull-left" ><fmt:message key="empresa_plantilla.element27" /></a>
									
								</div>
								<div class="col-xs-3 col-md-6"></div>
								<div class="col-xs-6 col-md-6">
									<a id="delete_row" class="btn btn-default pull-right disabled"><fmt:message key="empresa_plantilla.element28" /></a>
								</div>
								
							</div>
							
								<div class="row form-group fila-subtotal">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element29" />
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_resto_plantilla_mujeres" name="num_subtotal_resto_plantilla_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_resto_plantilla_hombres" name="num_subtotal_resto_plantilla_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
	
							<div class="row form-group fila-subtotal">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><b><fmt:message key="empresa_plantilla.element30" /></b>
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_mujeres" name="num_total_de_la_plantilla_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>" readonly>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_hombres" name="num_total_de_la_plantilla_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>" readonly>
								</div>	
							</div>							
					</div>
					</fieldset> 
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos2"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_plantilla.element31" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_plantilla.element32" /></h3>
						</div>
							<div id="table2"  class="table">
								<div class="row">
										<div class="col-xs-6 col-md-8 ">
											<h6>
												<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element33" />
												<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element34" />"  class="fa fa-question-circle"></a></label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<h6>
												<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element35" />
												</label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<h6>
												<label class="label label-subtitulo"><fmt:message key="empresa_plantilla.element36" />
												</label>
											</h6>
										</div>	
								</div>
								<div class="row form-group">
										<div class="col-xs-6 col-md-8 ">
											<label class="titulo-input" ><fmt:message key="empresa_plantilla.element37" /></label>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_administracion_mujeres" name="num_dept_administracion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_administracion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_administracion_mujeres").toString() %><% } %>">
										</div>
										<div class="col-xs-3 col-md-2">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_administracion_hombres" name="num_dept_administracion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_administracion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_administracion_hombres").toString() %><% } %>">
										</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element38" /></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_comercial_y_ventas_mujeres" name="num_dept_comercial_y_ventas_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_comercial_y_ventas_hombres" name="num_dept_comercial_y_ventas_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 col-lg-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element39" /></label>
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_logistica_mujeres" name="num_dept_logistica_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_logistica_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_logistica_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_logistica_hombres" name="num_dept_logistica_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_logistica_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_logistica_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element40" /></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_produccion_mujeres" name="num_dept_produccion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_produccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_produccion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_produccion_hombres" name="num_dept_produccion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_produccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_produccion_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element41" /></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_financiero_mujeres" name="num_dept_financiero_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_financiero_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_financiero_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_financiero_hombres" name="num_dept_financiero_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_financiero_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_financiero_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element42" /></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_recursos_humanos_mujeres" name="num_dept_recursos_humanos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_recursos_humanos_hombres" name="num_dept_recursos_humanos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_a" placeholder="<fmt:message key="empresa_plantilla.element43" />"  value="<% if (session.getAttribute("temp_admin_organization_dept_a") != null) { %><%= session.getAttribute("temp_admin_organization_dept_a").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_a_mujeres" name="num_dept_a_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_a_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_a_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_a_hombres" name="num_dept_a_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_a_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_a_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_b" placeholder="<fmt:message key="empresa_plantilla.element43" />"  value="<% if (session.getAttribute("temp_admin_organization_dept_b") != null) { %><%= session.getAttribute("temp_admin_organization_dept_b").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_b_mujeres" name="num_dept_b_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_b_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_b_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_b_hombres" name="num_dept_b_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_b_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_b_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="dept_c" placeholder="<fmt:message key="empresa_plantilla.element43" />"  value="<% if (session.getAttribute("temp_admin_organization_dept_c") != null) { %><%= session.getAttribute("temp_admin_organization_dept_c").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_c_mujeres" name="num_dept_c_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_c_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_c_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_c_hombres" name="num_dept_c_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_c_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_c_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_d" placeholder="<fmt:message key="empresa_plantilla.element43" />"  value="<% if (session.getAttribute("temp_admin_organization_dept_d") != null) { %><%= session.getAttribute("temp_admin_organization_dept_d").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_d_mujeres" name="num_dept_d_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_d_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_d_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_d_hombres" name="num_dept_d_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_d_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_d_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_e" placeholder="<fmt:message key="empresa_plantilla.element43" />"  value="<% if (session.getAttribute("temp_admin_organization_dept_e") != null) { %><%= session.getAttribute("temp_admin_organization_dept_e").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_e_mujeres" name="num_dept_e_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_e_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_e_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_e_hombres" name="num_dept_e_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_e_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_e_hombres").toString() %><% } %>">
									</div>	
								</div>
								
								<%= db2.generateHtml() %>
									
								<div id="dynamic_row2"></div>
								
								<div class="row form-group">
									<div class="col-xs-6 col-md-6">
										<a id="add_row2" class="btn btn-default pull-left" ><fmt:message key="empresa_plantilla.element27" /></a>
										
									</div>
									<div class="col-xs-3 col-md-6"></div>
									<div class="col-xs-6 col-md-6">
										<a id="delete_row2" class="btn btn-default pull-right disabled"><fmt:message key="empresa_plantilla.element28" /></a>
									</div>
									
								</div>	
								
								
								
								<div class="row form-group fila-subtotal">
									<div class="col-xs-6 col-md-8">
											<label class="titulo-input"><b><fmt:message key="empresa_plantilla.element44" /></b></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_total_mujeres" name="num_dept_total_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_total_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_total_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_total_hombres" name="num_dept_total_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_total_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_total_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
				
								<div class="row form-group fila-subtotal bc-orange">
									<div class="col-xs-6 col-md-8 ">
										<label class="titulo-input"><fmt:message key="empresa_plantilla.element45" />
											<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element54" />" class="fa fa-question-circle"></a>
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="coinicide_con_tabla1_mujeres" name="coinicide_con_tabla1_mujeres" value="<% if (session.getAttribute("temp_admin_organization_coinicide_con_tabla1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_coinicide_con_tabla1_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="coinicide_con_tabla1_hombres" name="coinicide_con_tabla1_hombres" value="<% if (session.getAttribute("temp_admin_organization_coinicide_con_tabla1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_coinicide_con_tabla1_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
							</div> <!-- fin de table  -->
					</fieldset>
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos3"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_plantilla.element46" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_plantilla.element47" /></h3>
						</div>
						<div class="table">
								<div class="row">
										<div class="col-xs-6 col-md-8 padding-label ">
											<h6>
												<label class="label label-subtitulo "><fmt:message key="empresa_plantilla.element48" /><a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_plantilla.element49" />"  class="fa fa-question-circle"></a>
												</label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 padding-label">
											<h6>
												<label class="label label-subtitulo "><fmt:message key="empresa_plantilla.element50" /></label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 padding-label">
											<h6>	
												<label class="label label-subtitulo "><fmt:message key="empresa_plantilla.element51" /></label>
											</h6>
										</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 ">
										<label class="titulo-input" ><fmt:message key="empresa_plantilla.element52" /> </label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_integrantes_consejo_de_direccion_mujeres" name="num_total_integrantes_consejo_de_direccion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_integrantes_consejo_de_direccion_hombres" name="num_total_integrantes_consejo_de_direccion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_hombres").toString() %><% } %>">
									</div>
								</div>
							</div>	
					</fieldset>
				
<% 
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { 
		// do nothing
	} else {
%>
					<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa_plantilla.element53" /></button>
<%
	}
%>
					
				</form>
				
