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

	
	if (session.getAttribute("temp_admin_organization_id") != null) { 
		parameters.add(session.getAttribute("temp_admin_organization_id").toString());
		parameters.add("table1");
	} 

	db = Database.callProcResults("p_get_organization_dynamic_rows_table5", parameters);

%>
				<form role="form" action="validate_empresa_condiciones_laborales.jsp" method="post" class="form-plantilla">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
				
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos4"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_condiciones_laborales.element1" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_condiciones_laborales.element2" /></h3>
						</div>
						<div class="table-responsive">
							<table class="table">
							<tbody> 
								<tr>
									<th class="col-xs-4  " >
										<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element3" /></label></h6>
									</th>
									<th class="col-xs-4 ">
										<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element4" /></label></h6>
									</th>
									<th class="col-xs-2 ">
										<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element5" /></label></h6>
									</th>
									<th class="col-xs-2 ">
										<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element6" /></label></h6>
									</th>	
								</tr>
								<tr>
									<th rowspan="3">
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element7" /></label>
									</th>
									<td >
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element8" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_completa_contrato_indefinido_mujeres" name="num_jornada_completa_contrato_indefinido_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_mujeres").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_completa_contrato_indefinido_hombres" name="num_jornada_completa_contrato_indefinido_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_hombres").toString() %><% } %>">
									</td>	
								</tr>
								<tr>

									<td >
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element9" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_completa_contrato_temporal_mujeres" name="num_jornada_completa_contrato_temporal_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_mujeres").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_completa_contrato_temporal_hombres" name="num_jornada_completa_contrato_temporal_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_hombres").toString() %><% } %>">
									</td>	
								</tr>
								<tr>

									<td >
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element10" /> </label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_jornada_completa_mujeres" name="num_subtotal_jornada_completa_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_jornada_completa_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_jornada_completa_mujeres").toString() %><% } %>" readonly>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_jornada_completa_hombres" name="num_subtotal_jornada_completa_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_jornada_completa_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_jornada_completa_hombres").toString() %><% } %>" readonly>
									</td>	
								</tr>
								<!-- fila 2 -->
								<tr>
									<th rowspan="3">
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element11" /></label>
									</th>
									<td >
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element12" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_partial_contrato_indefinido_mujeres" name="num_jornada_partial_contrato_indefinido_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_mujeres").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_partial_contrato_indefinido_hombres" name="num_jornada_partial_contrato_indefinido_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_hombres").toString() %><% } %>">
									</td>	
								</tr>
								<tr>

									<td >
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element13" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_partial_contrato_temporal_mujeres" name="num_jornada_partial_contrato_temporal_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_mujeres").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornada_partial_contrato_temporal_hombres" name="num_jornada_partial_contrato_temporal_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_hombres").toString() %><% } %>">
									</td>	
								</tr>
								<tr>
									<td>
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element14" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_jornada_partial_mujeres" name="num_subtotal_jornada_partial_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_jornada_partial_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_jornada_partial_mujeres").toString() %><% } %>" readonly>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_jornada_partial_hombres" name="num_subtotal_jornada_partial_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_jornada_partial_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_jornada_partial_hombres").toString() %><% } %>" readonly>
									</td>	
								</tr>
								<tr class="fila-subtotal">
									
									<td  colspan="2">

										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element15" /></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_jornada_contracto_mujeres" name="num_total_jornada_contracto_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_jornada_contracto_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_jornada_contracto_mujeres").toString() %><% } %>" readonly>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_jornada_contracto_hombres" name="num_total_jornada_contracto_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_jornada_contracto_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_jornada_contracto_hombres").toString() %><% } %>" readonly>
									</td>	
									
								</tr>
								<tr class="fila-coincide " > 
									<td  colspan="2">
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element16" /></label>
									</td>
									<td  >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="tabla4_coinicide_con_tabla1_mujeres" name="tabla4_coinicide_con_tabla1_mujeres" value="<% if (session.getAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_mujeres").toString() %><% } %>" readonly>																										
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="tabla4_coinicide_con_tabla1_hombres" name="tabla4_coinicide_con_tabla1_hombres" value="<% if (session.getAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_hombres").toString() %><% } %>" readonly>
									</td>	
								</tr>

							</tbody>
							</table>
						</div>
					</fieldset>
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos5"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_condiciones_laborales.element17" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_condiciones_laborales.element18" /></h3></div>
							<div class="table">
								<div class="row">
									<div class="col-xs-6 col-md-8 padding-label">
										<h6>
												<label class="label label-subtitulo "><fmt:message key="empresa_condiciones_laborales.element19" /><a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element20" />"  class="fa fa-question-circle"></a>
												</label>
										</h6>
									</div>
									<div class="col-xs-3 col-md-2 padding-label ">
										<h6>
											<label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element21" />
											</label>
										</h6>
									</div>
									<div class="col-xs-3 col-md-2 padding-label">
										<h6>
											<label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element22" />
											</label>
										</h6>
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 ">
										<label class="titulo-input" ><fmt:message key="empresa_condiciones_laborales.element23" /></label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_direccion_general_o_maximo_cargo_mujeres" name="salario_direccion_general_o_maximo_cargo_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="salario_direccion_general_o_maximo_cargo_hombres" id="salario_direccion_general_o_maximo_cargo_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element24" />
											<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element25" />"  class="fa fa-question-circle"></a>
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_directivos_como_gerencias_mujeres" name="salario_puestos_directivos_como_gerencias_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_directivos_como_gerencias_hombres" name="salario_puestos_directivos_como_gerencias_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 col-lg-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element26" />
											<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element27" />" class="fa fa-question-circle"></a>
										</label>
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element28" />
											<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element29" />" class="fa fa-question-circle"></a>
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element30" />
											<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element31" />" class="fa fa-question-circle"></a>
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
										<div class="col-xs-6 col-md-8">
											<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element32" />
												<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element33" />" class="fa fa-question-circle"></a>
											</label>
										</div>
										<div class="col-xs-3 col-md-2">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").toString() %><% } %>">
										</div>
										<div class="col-xs-3 col-md-2">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" name="salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").toString() %><% } %>">
										</div>	
									</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element34" />
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_tecnicos_mujeres" name="salario_puestos_tecnicos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_tecnicos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_tecnicos_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_tecnicos_hombres" name="salario_puestos_tecnicos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_tecnicos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_tecnicos_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element35" />
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_administrativos_mujeres" name="salario_puestos_administrativos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_administrativos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_administrativos_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_administrativos_hombres" name="salario_puestos_administrativos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_administrativos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_administrativos_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element36" />
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_auxiliares_mujeres" name="salario_puestos_auxiliares_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_auxiliares_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_auxiliares_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_auxiliares_hombres" name="salario_puestos_auxiliares_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_auxiliares_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_auxiliares_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element37" />
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_operarios_mujeres" name="salario_puestos_operarios_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_operarios_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_operarios_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_operarios_hombres" name="salario_puestos_operarios_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_operarios_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_operarios_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="puestos_a" name="puestos_a" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_puestos_a") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_a").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_a_mujeres" name="salario_puestos_a_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_a_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_a_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_a_hombres" name="salario_puestos_a_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_a_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_a_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="puestos_b" name="puestos_b" placeholder="Ingrese otros tipos de puestos"  value="<% if (session.getAttribute("temp_admin_organization_puestos_b") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_b").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_b_mujeres" name="salario_puestos_b_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_b_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_b_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_b_hombres" name="salario_puestos_b_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_b_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_b_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="puestos_c" name="puestos_c" placeholder="Ingrese otros tipos de puestos"  value="<% if (session.getAttribute("temp_admin_organization_puestos_c") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_c").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_c_mujeres" name="salario_puestos_c_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_c_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_c_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_c_hombres" name="salario_puestos_c_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_c_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_c_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="puestos_d" name="puestos_d" placeholder="Ingrese otros tipos de puestos" value="<% if (session.getAttribute("temp_admin_organization_puestos_d") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_d").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_d_mujeres" name="salario_puestos_d_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_d_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_d_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="salario_puestos_d_hombres" name="salario_puestos_d_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_salario_puestos_d_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_salario_puestos_d_hombres").toString() %><% } %>">
									</div>	
								</div>
								
								<%= db.generateHtml() %>
								
							</div> <!-- fin de table -->
					</fieldset>
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos6"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_condiciones_laborales.element38" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_condiciones_laborales.element39" />
								<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element80" />" class="fa fa-question-circle"></a>
							</h3>
						</div>
							<div class="table-responsive">
								<table class="table">
										<tbody>
											<tr>
												<th class="col-xs-4">
												</th>
												<th class="col-xs-4" colspan="2">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element40" /></label></h6>
												</th>
												<th class="col-xs-4" colspan="2">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element41" /></label></h6>
												</th>
											</tr>
											<tr>
												<th class="col-xs-4" >
													<h6 class="reset-margin">
														<label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element42" />
														</label>
													</h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element43" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element44" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element45" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element46" /></label></h6>
												</th>		
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element47" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_paternidad_en_sit_de_acogerse" name="num_licencia_de_paternidad_en_sit_de_acogerse" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_paternidad_en_sit_de_acogerse") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_paternidad_en_sit_de_acogerse").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_paternidad_en_efect_se_acogen" name="num_licencia_de_paternidad_en_efect_se_acogen" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_paternidad_en_efect_se_acogen") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_paternidad_en_efect_se_acogen").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element48" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_maternidad_en_sit_de_acogerse" name="num_licencia_de_maternidad_en_sit_de_acogerse" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_maternidad_en_sit_de_acogerse") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_maternidad_en_sit_de_acogerse").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_maternidad_en_efect_se_acogen" name="num_licencia_de_maternidad_en_efect_se_acogen" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_maternidad_en_efect_se_acogen") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_maternidad_en_efect_se_acogen").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element49" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_lactancia_en_sit_de_acogerse_mujeres" name="num_licencia_de_lactancia_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_lactancia_en_sit_de_acogerse_hombres" name="num_licencia_de_lactancia_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_lactancia_en_efect_se_acogen_mujeres" name="num_licencia_de_lactancia_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_licencia_de_lactancia_en_efect_se_acogen_hombres" name="num_licencia_de_lactancia_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element50" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres" name="num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_guardar_en_sit_de_acogerse_hombres" name="num_reduc_jornada_guardar_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_guardar_en_efect_se_acogen_mujeres" name="num_reduc_jornada_guardar_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_guardar_en_efect_se_acogen_hombres" name="num_reduc_jornada_guardar_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element51" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres" name="num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_por_cuidado_en_sit_de_acogerse_hombres" name="num_excedencia_por_cuidado_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_por_cuidado_en_efect_se_acogen_mujeres" name="num_excedencia_por_cuidado_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_por_cuidado_en_efect_se_acogen_hombres" name="num_excedencia_por_cuidado_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
										</tbody>
								</table>
						</div>	
					</fieldset><!-- fin de tabla 6 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos7"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_condiciones_laborales.element52" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_condiciones_laborales.element53" /></h3>
						</div>
							<div class="table-responsive">
								<table class="table">
										<tbody>
											<tr>
												<th class="col-xs-4">
												</th>
												<th class="col-xs-4" colspan="2">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element54" /> 
													<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element55" />"  class="fa fa-question-circle"></a>
															</label></h6>
												</th>
												<th class="col-xs-4" colspan="2">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element56" /></label></h6>
												</th>
											</tr>
											<tr>
												<th class="col-xs-4" >
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element57" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element58" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element59" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element60" /></label></h6>
												</th>
												<th class="col-xs-2 ">
													<h6 class="reset-margin"><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element61" /></label></h6>
												</th>		
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element62" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_entrada_salida_en_sit_de_acogerse_mujeres" name="num_flex_entrada_salida_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_entrada_salida_en_sit_de_acogerse_hombres" name="num_flex_entrada_salida_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_entrada_salida_en_efect_se_acogen_mujeres" name="num_flex_entrada_salida_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_entrada_salida_en_efect_se_acogen_hombres" name="num_flex_entrada_salida_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element63" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_horario_en_sit_de_acogerse_mujeres" name="num_flex_horario_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_horario_en_sit_de_acogerse_hombres" name="num_flex_horario_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_horario_en_efect_se_acogen_mujeres" name="num_flex_horario_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_flex_horario_en_efect_se_acogen_hombres" name="num_flex_horario_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element64" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres" name="num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres" name="num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres").toString() %><% } %>">												
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres" name="num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres" name="num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element65" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres" name="num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres" name="num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres" name="num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres" name="num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element66" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres" name="num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres" name="num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres" name="num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres" name="num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element67" />
														<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element81" />" class="fa fa-question-circle"></a>
													</label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_teletrabajo_en_sit_de_acogerse_mujeres" name="num_teletrabajo_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_teletrabajo_en_sit_de_acogerse_hombres" name="num_teletrabajo_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_teletrabajo_en_efect_se_acogen_mujeres" name="num_teletrabajo_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_teletrabajo_en_efect_se_acogen_hombres" name="num_teletrabajo_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element68" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres" name="num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_acerc_lugar_residencia_en_sit_de_acogerse_hombres" name="num_acerc_lugar_residencia_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_acerc_lugar_residencia_en_efect_se_acogen_mujeres" name="num_acerc_lugar_residencia_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_acerc_lugar_residencia_en_efect_se_acogen_hombres" name="num_acerc_lugar_residencia_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element69" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_guaderia_ambito_en_sit_de_acogerse_mujeres" name="num_guaderia_ambito_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_guaderia_ambito_en_sit_de_acogerse_hombres" name="num_guaderia_ambito_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_guaderia_ambito_en_efect_se_acogen_mujeres" name="num_guaderia_ambito_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_guaderia_ambito_en_efect_se_acogen_hombres" name="num_guaderia_ambito_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="col-xs-4" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element70" /></label>
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres" name="num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres" name="num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres" name="num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres").toString() %><% } %>">
												</td>
												<td class="col-xs-2">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres" name="num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres").toString() %><% } %>">
												</td>
											</tr>
										</tbody>
								</table>
						</div>	
					</fieldset> <!-- fin de tabla 7 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos8"></a>
							</div>
							<h2 class="text-gray "><fmt:message key="empresa_condiciones_laborales.element71" /></h2>
							<h3 class="text-orange reset-margin" ><fmt:message key="empresa_condiciones_laborales.element72" /></h3>
						</div>
							<div class="table-responsive">
								<table class="table tabla-fija">
										<tbody>
											<tr>
												<td  >
												</td>
												<td >
													<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element73" /></label></h6>
												</td>
												<td >
													<h6><label class="label label-subtitulo"><fmt:message key="empresa_condiciones_laborales.element74" /></label></h6>
												</td>
											</tr>
											<tr>
												<td class="" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element75" />
														<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="<fmt:message key="empresa_condiciones_laborales.element82" />" class="fa fa-question-circle"></a>
													</label>
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_quejas_recibidas_acoso_sexual_mujeres" name="num_quejas_recibidas_acoso_sexual_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_mujeres").toString() %><% } %>">
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_quejas_recibidas_acoso_sexual_hombres" name="num_quejas_recibidas_acoso_sexual_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element76" /></label>
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_quejas_atendidas_acoso_sexual_mujeres" name="num_quejas_atendidas_acoso_sexual_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_mujeres").toString() %><% } %>">
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_quejas_atendidas_acoso_sexual_hombres" name="num_quejas_atendidas_acoso_sexual_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element77" /></label>
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres" name="num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres").toString() %><% } %>">
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres" name="num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres").toString() %><% } %>">
												</td>
											</tr>
											<tr>
												<td class="" >
													<label class="titulo-input"><fmt:message key="empresa_condiciones_laborales.element78" /></label>
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres" name="num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres").toString() %><% } %>">
												</td>
												<td class="">
													<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres" name="num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres").toString() %><% } %>">
												</td>
											</tr>
										</tbody>
								</table>
						</div>	
					</fieldset> <!-- fin de tabla 8 -->

<% 
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { 
		// do nothing
	}  else {
%>
					<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa_condiciones_laborales.element79" /></button>
<%
	}
%>

				</form>