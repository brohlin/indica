<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>

<%	
	request.setCharacterEncoding("UTF-8");
	// String p_organization_id = request.getParameter("id");

	DynStringArray params_ = new DynStringArray();
	DbResults db_insert = null;
	DbResults db_insert2 = null;
	
	if (session.getAttribute("temp_admin_organization_id") != null) { 
		params_.add(session.getAttribute("temp_admin_organization_id").toString());
		params_.add("table1");
	} 

	db_insert = Database.callProcResults("p_get_organization_dynamic_rows_for_js1", params_);
	params_.clear();
	
	if (session.getAttribute("temp_admin_organization_id") != null) { 
		params_.add(session.getAttribute("temp_admin_organization_id").toString());
		params_.add("table2");
	} 	
	
	db_insert2 = Database.callProcResults("p_get_organization_dynamic_rows_for_js2", params_);
	
%>
<script language="Javascript">

function updateTableFields()
{
	// Empresa Gestion del Personal calculated fields
    var v_num_total_jornadas_anuales_pactadas_convenio_mujeres = 0;
  	var v_num_total_jornadas_anuales_pactadas_convenio_hombres = 0;
    var v_num_jornadas_anuales_pactadas_convenio_por_trab = parseFloat($('#num_jornadas_anuales_pactadas_convenio_por_trab').val());
    var v_num_total_de_la_plantilla_mujeres = parseFloat($('#num_total_de_la_plantilla_mujeres').val());
  	var v_num_total_de_la_plantilla_hombres  = parseFloat($('#num_total_de_la_plantilla_hombres').val());
    var v_num_total_de_la_plantilla_mujeres2 = parseFloat($('#num_total_de_la_plantilla_mujeres2').val());
  	var v_num_total_de_la_plantilla_hombres2  = parseFloat($('#num_total_de_la_plantilla_hombres2').val());
  	
  	if (isNaN(v_num_jornadas_anuales_pactadas_convenio_por_trab)) { v_num_jornadas_anuales_pactadas_convenio_por_trab = 0; }
  	if (isNaN(v_num_total_de_la_plantilla_mujeres)) { v_num_total_de_la_plantilla_mujeres = 0; }
  	if (isNaN(v_num_total_de_la_plantilla_hombres)) { v_num_total_de_la_plantilla_hombres = 0; }
  	if (isNaN(v_num_total_de_la_plantilla_mujeres2)) { v_num_total_de_la_plantilla_mujeres2 = 0; }
  	if (isNaN(v_num_total_de_la_plantilla_hombres2)) { v_num_total_de_la_plantilla_hombres2 = 0; }
  	
 	v_num_total_jornadas_anuales_pactadas_convenio_mujeres = (v_num_jornadas_anuales_pactadas_convenio_por_trab) * v_num_total_de_la_plantilla_mujeres2;
 	v_num_total_jornadas_anuales_pactadas_convenio_hombres = (v_num_jornadas_anuales_pactadas_convenio_por_trab) * v_num_total_de_la_plantilla_hombres2;

 	$('#num_total_jornadas_anuales_pactadas_convenio_mujeres').val( v_num_total_jornadas_anuales_pactadas_convenio_mujeres);
 	$('#num_total_jornadas_anuales_pactadas_convenio_hombres').val( v_num_total_jornadas_anuales_pactadas_convenio_hombres);
 	
 	// Empresa Plantilla calculated fields
 	// Cargos de responsabilidad mujeres
 	var v_num_subtotal_cargos_responsabilidad_mujeres = 0;
 	var v_num_direccion_general_o_maximo_cargo_mujeres  = parseFloat($('#num_direccion_general_o_maximo_cargo_mujeres').val());
 	var v_num_puestos_directivos_como_gerencias_mujeres  = parseFloat($('#num_puestos_directivos_como_gerencias_mujeres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres').val());
 	
 	if (isNaN(v_num_direccion_general_o_maximo_cargo_mujeres)) { v_num_direccion_general_o_maximo_cargo_mujeres = 0; }
 	if (isNaN(v_num_puestos_directivos_como_gerencias_mujeres)) { v_num_puestos_directivos_como_gerencias_mujeres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres = 0; }
 	
 	v_num_subtotal_cargos_responsabilidad_mujeres = v_num_direccion_general_o_maximo_cargo_mujeres +
						  	     	v_num_puestos_directivos_como_gerencias_mujeres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres;  	
						  	     	
 	$('#num_subtotal_cargos_responsabilidad_mujeres').val( v_num_subtotal_cargos_responsabilidad_mujeres);
 	
 	
 	// Cargos de responsabilidad hombres
 	var v_num_subtotal_cargos_responsabilidad_hombres = 0;
 	var v_num_direccion_general_o_maximo_cargo_hombres  = parseFloat($('#num_direccion_general_o_maximo_cargo_hombres').val());
 	var v_num_puestos_directivos_como_gerencias_hombres  = parseFloat($('#num_puestos_directivos_como_gerencias_hombres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres').val());
 	var v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres').val());
 	
 	if (isNaN(v_num_direccion_general_o_maximo_cargo_hombres)) { v_num_direccion_general_o_maximo_cargo_hombres = 0; }
 	if (isNaN(v_num_puestos_directivos_como_gerencias_hombres)) { v_num_puestos_directivos_como_gerencias_hombres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres = 0; }
 	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres = 0; }
 	v_num_subtotal_cargos_responsabilidad_hombres = v_num_direccion_general_o_maximo_cargo_hombres +
						  	     	v_num_puestos_directivos_como_gerencias_hombres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres +
						  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres;  	
						  	     	
 	$('#num_subtotal_cargos_responsabilidad_hombres').val( v_num_subtotal_cargos_responsabilidad_hombres);
 	
 	// Otros cargos de responsabilidad mujeres
 	var v_num_subtotal_resto_plantilla_mujeres = 0;
 	var v_num_total_de_la_plantilla_mujeres = 0;
 	var v_num_puestos_tecnicos_mujeres  = parseFloat($('#num_puestos_tecnicos_mujeres').val());
 	var v_num_puestos_administrativos_mujeres  = parseFloat($('#num_puestos_administrativos_mujeres').val());
 	var v_num_puestos_auxiliares_mujeres  = parseFloat($('#num_puestos_auxiliares_mujeres').val());
 	var v_num_puestos_operarios_mujeres  = parseFloat($('#num_puestos_operarios_mujeres').val());
 	var v_num_puestos_a_mujeres  = parseFloat($('#num_puestos_a_mujeres').val());
 	var v_num_puestos_b_mujeres  = parseFloat($('#num_puestos_b_mujeres').val());
 	var v_num_puestos_c_mujeres  = parseFloat($('#num_puestos_c_mujeres').val());
 	var v_num_puestos_d_mujeres  = parseFloat($('#num_puestos_d_mujeres').val());
 	
 	
 	if (isNaN(v_num_puestos_tecnicos_mujeres)) { v_num_puestos_tecnicos_mujeres = 0; }
 	if (isNaN(v_num_puestos_administrativos_mujeres)) { v_num_puestos_administrativos_mujeres = 0; }
 	if (isNaN(v_num_puestos_auxiliares_mujeres)) { v_num_puestos_auxiliares_mujeres = 0; }
 	if (isNaN(v_num_puestos_operarios_mujeres)) { v_num_puestos_operarios_mujeres = 0; }
	     	
	if (isNaN(v_num_puestos_a_mujeres)) { v_num_puestos_a_mujeres = 0; }			
	if (isNaN(v_num_puestos_b_mujeres)) { v_num_puestos_b_mujeres = 0; }
	if (isNaN(v_num_puestos_c_mujeres)) { v_num_puestos_c_mujeres = 0; }
	if (isNaN(v_num_puestos_d_mujeres)) { v_num_puestos_d_mujeres = 0; }   	     	
	     	
   	v_num_subtotal_resto_plantilla_mujeres = v_num_puestos_tecnicos_mujeres +
						  	     	v_num_puestos_administrativos_mujeres +
						  	     	v_num_puestos_auxiliares_mujeres +
						  	     	v_num_puestos_operarios_mujeres +
						  	     	v_num_puestos_a_mujeres +
						  	     	v_num_puestos_b_mujeres +
						  	     	v_num_puestos_c_mujeres +
						  	     	v_num_puestos_d_mujeres;
 
	// Otros cargos de responsabilidad hombres
   	var v_num_subtotal_resto_plantilla_hombres = 0;
   	var v_num_total_de_la_plantilla_hombres = 0;
   	var v_num_puestos_tecnicos_hombres  = parseFloat($('#num_puestos_tecnicos_hombres').val());
   	var v_num_puestos_administrativos_hombres  = parseFloat($('#num_puestos_administrativos_hombres').val());
   	var v_num_puestos_auxiliares_hombres  = parseFloat($('#num_puestos_auxiliares_hombres').val());
   	var v_num_puestos_operarios_hombres  = parseFloat($('#num_puestos_operarios_hombres').val());
   	var v_num_puestos_a_hombres  = parseFloat($('#num_puestos_a_hombres').val());
   	var v_num_puestos_b_hombres  = parseFloat($('#num_puestos_b_hombres').val());
   	var v_num_puestos_c_hombres  = parseFloat($('#num_puestos_c_hombres').val());
   	var v_num_puestos_d_hombres  = parseFloat($('#num_puestos_d_hombres').val());
   	
   	
   	if (isNaN(v_num_puestos_tecnicos_hombres)) { v_num_puestos_tecnicos_hombres = 0; }
   	if (isNaN(v_num_puestos_administrativos_hombres)) { v_num_puestos_administrativos_hombres = 0; }
   	if (isNaN(v_num_puestos_auxiliares_hombres)) { v_num_puestos_auxiliares_hombres = 0; }
   	if (isNaN(v_num_puestos_operarios_hombres)) { v_num_puestos_operarios_hombres = 0; }
	     	
	if (isNaN(v_num_puestos_a_hombres)) { v_num_puestos_a_hombres = 0; }			
	if (isNaN(v_num_puestos_b_hombres)) { v_num_puestos_b_hombres = 0; }
	if (isNaN(v_num_puestos_c_hombres)) { v_num_puestos_c_hombres = 0; }
	if (isNaN(v_num_puestos_d_hombres)) { v_num_puestos_d_hombres = 0; }  	     	
	     	
   	v_num_subtotal_resto_plantilla_hombres = v_num_puestos_tecnicos_hombres +
						  	     	v_num_puestos_administrativos_hombres +
						  	     	v_num_puestos_auxiliares_hombres +
						  	     	v_num_puestos_operarios_hombres +
						  	     	v_num_puestos_a_hombres +
						  	     	v_num_puestos_b_hombres +
						  	     	v_num_puestos_c_hombres +
						  	     	v_num_puestos_d_hombres;
	     	
   	<%= db_insert.generateHtml() %>
   	
   	v_num_total_de_la_plantilla_mujeres = v_num_subtotal_resto_plantilla_mujeres + v_num_subtotal_cargos_responsabilidad_mujeres;
   	v_num_total_de_la_plantilla_hombres = v_num_subtotal_resto_plantilla_hombres + v_num_subtotal_cargos_responsabilidad_hombres;
   	
	$('#num_subtotal_resto_plantilla_mujeres').val( v_num_subtotal_resto_plantilla_mujeres);
	$('#num_total_de_la_plantilla_mujeres').val( v_num_total_de_la_plantilla_mujeres);	     	
	$('#num_subtotal_resto_plantilla_hombres').val( v_num_subtotal_resto_plantilla_hombres);
	$('#num_total_de_la_plantilla_hombres').val( v_num_total_de_la_plantilla_hombres);
	
	// Departamentos mujeres
	var v_num_dept_total_mujeres = 0;
	var v_num_dept_administracion_mujeres  = parseFloat($('#num_dept_administracion_mujeres').val());
	var v_num_dept_comercial_y_ventas_mujeres  = parseFloat($('#num_dept_comercial_y_ventas_mujeres').val());
	var v_num_dept_logistica_mujeres  = parseFloat($('#num_dept_logistica_mujeres').val());
	var v_num_dept_produccion_mujeres  = parseFloat($('#num_dept_produccion_mujeres').val());
	var v_num_dept_financiero_mujeres  = parseFloat($('#num_dept_financiero_mujeres').val());
	var v_num_dept_recursos_humanos_mujeres  = parseFloat($('#num_dept_recursos_humanos_mujeres').val());
	var v_num_dept_a_mujeres  = parseFloat($('#num_dept_a_mujeres').val());
	var v_num_dept_b_mujeres  = parseFloat($('#num_dept_b_mujeres').val());
	var v_num_dept_c_mujeres  = parseFloat($('#num_dept_c_mujeres').val());
	var v_num_dept_d_mujeres  = parseFloat($('#num_dept_d_mujeres').val());
	var v_num_dept_e_mujeres  = parseFloat($('#num_dept_e_mujeres').val());
	
	if (isNaN(v_num_dept_administracion_mujeres)) { v_num_dept_administracion_mujeres = 0; }
	if (isNaN(v_num_dept_comercial_y_ventas_mujeres)) { v_num_dept_comercial_y_ventas_mujeres = 0; }
	if (isNaN(v_num_dept_logistica_mujeres)) { v_num_dept_logistica_mujeres = 0; }
	if (isNaN(v_num_dept_produccion_mujeres)) { v_num_dept_produccion_mujeres = 0; }
	if (isNaN(v_num_dept_financiero_mujeres)) { v_num_dept_financiero_mujeres = 0; }
	if (isNaN(v_num_dept_recursos_humanos_mujeres)) { v_num_dept_recursos_humanos_mujeres = 0; }
	
	if (isNaN(v_num_dept_a_mujeres)) { v_num_dept_a_mujeres = 0; }			
	if (isNaN(v_num_dept_b_mujeres)) { v_num_dept_b_mujeres = 0; }
	if (isNaN(v_num_dept_c_mujeres)) { v_num_dept_c_mujeres = 0; }
	if (isNaN(v_num_dept_d_mujeres)) { v_num_dept_d_mujeres = 0; }
	if (isNaN(v_num_dept_e_mujeres)) { v_num_dept_e_mujeres = 0; }			
	
	v_num_dept_total_mujeres = v_num_dept_administracion_mujeres +
								v_num_dept_comercial_y_ventas_mujeres +
								v_num_dept_logistica_mujeres +
								v_num_dept_produccion_mujeres +
								v_num_dept_financiero_mujeres +
								v_num_dept_recursos_humanos_mujeres +
								v_num_dept_a_mujeres +
								v_num_dept_b_mujeres +
								v_num_dept_c_mujeres +
								v_num_dept_d_mujeres +
								v_num_dept_e_mujeres;
	
	
	
	// Departamentos hombres
	var v_num_dept_total_hombres = 0;
	var v_num_dept_administracion_hombres  = parseFloat($('#num_dept_administracion_hombres').val());
	var v_num_dept_comercial_y_ventas_hombres  = parseFloat($('#num_dept_comercial_y_ventas_hombres').val());
	var v_num_dept_logistica_hombres  = parseFloat($('#num_dept_logistica_hombres').val());
	var v_num_dept_produccion_hombres  = parseFloat($('#num_dept_produccion_hombres').val());
	var v_num_dept_financiero_hombres  = parseFloat($('#num_dept_financiero_hombres').val());
	var v_num_dept_recursos_humanos_hombres  = parseFloat($('#num_dept_recursos_humanos_hombres').val());
	var v_num_dept_a_hombres  = parseFloat($('#num_dept_a_hombres').val());
	var v_num_dept_b_hombres  = parseFloat($('#num_dept_b_hombres').val());
	var v_num_dept_c_hombres  = parseFloat($('#num_dept_c_hombres').val());
	var v_num_dept_d_hombres  = parseFloat($('#num_dept_d_hombres').val());
	var v_num_dept_e_hombres  = parseFloat($('#num_dept_e_hombres').val());
	
	
	if (isNaN(v_num_dept_administracion_hombres)) { v_num_dept_administracion_hombres = 0; }
	if (isNaN(v_num_dept_comercial_y_ventas_hombres)) { v_num_dept_comercial_y_ventas_hombres = 0; }
	if (isNaN(v_num_dept_logistica_hombres)) { v_num_dept_logistica_hombres = 0; }
	if (isNaN(v_num_dept_produccion_hombres)) { v_num_dept_produccion_hombres = 0; }
	if (isNaN(v_num_dept_financiero_hombres)) { v_num_dept_financiero_hombres = 0; }
	if (isNaN(v_num_dept_recursos_humanos_hombres)) { v_num_dept_recursos_humanos_hombres = 0; }
	
	if (isNaN(v_num_dept_a_hombres)) { v_num_dept_a_hombres = 0; }			
	if (isNaN(v_num_dept_b_hombres)) { v_num_dept_b_hombres = 0; }
	if (isNaN(v_num_dept_c_hombres)) { v_num_dept_c_hombres = 0; }
	if (isNaN(v_num_dept_d_hombres)) { v_num_dept_d_hombres = 0; }
	if (isNaN(v_num_dept_e_hombres)) { v_num_dept_e_hombres = 0; }
	
	v_num_dept_total_hombres = v_num_dept_administracion_hombres +
								v_num_dept_comercial_y_ventas_hombres +
								v_num_dept_logistica_hombres +
								v_num_dept_produccion_hombres +
								v_num_dept_financiero_hombres +
								v_num_dept_recursos_humanos_hombres +
								v_num_dept_a_hombres +
								v_num_dept_b_hombres +
								v_num_dept_c_hombres +
								v_num_dept_d_hombres +
								v_num_dept_e_hombres;
	
	
	
	
	
	
	
	<%= db_insert2.generateHtml() %>
	
	$('#num_dept_total_mujeres').val( v_num_dept_total_mujeres);
	$('#num_dept_total_hombres').val( v_num_dept_total_hombres);
	     	
	// Does the "Total de la Plantilla" match between table1 and table 2 mujeres
	if (v_num_dept_total_mujeres == v_num_total_de_la_plantilla_mujeres) {
		$('#coinicide_con_tabla1_mujeres').val('SÍ');	
	} else {
		$('#coinicide_con_tabla1_mujeres').val('NO');
	}
	     	
	// Does the "Total de la Plantilla" match between table1 and table 2 hombres
	if (v_num_dept_total_hombres == v_num_total_de_la_plantilla_hombres) {
		$('#coinicide_con_tabla1_hombres').val('SÍ');
		
	} else {
		$('#coinicide_con_tabla1_hombres').val('NO');
	}  	     	
	     	
	     	
   	// Table 4 Tipo de Contrato Jornada subtotals and totals mujerers
   	var v_num_subtotal_jornada_completa_mujeres = 0;
   	var v_num_subtotal_jornada_partial_mujeres = 0;
   	var v_num_total_jornada_contracto_mujeres = 0;
   	var v_num_jornada_completa_contrato_indefinido_mujeres  = parseFloat($('#num_jornada_completa_contrato_indefinido_mujeres').val());
   	var v_num_jornada_completa_contrato_temporal_mujeres  = parseFloat($('#num_jornada_completa_contrato_temporal_mujeres').val());
   	var v_num_jornada_partial_contrato_indefinido_mujeres  = parseFloat($('#num_jornada_partial_contrato_indefinido_mujeres').val());
   	var v_num_jornada_partial_contrato_temporal_mujeres  = parseFloat($('#num_jornada_partial_contrato_temporal_mujeres').val());
   	
   	if (isNaN(v_num_jornada_completa_contrato_indefinido_mujeres)) { v_num_jornada_completa_contrato_indefinido_mujeres = 0; }
   	if (isNaN(v_num_jornada_completa_contrato_temporal_mujeres)) { v_num_jornada_completa_contrato_temporal_mujeres = 0; }
   	if (isNaN(v_num_jornada_partial_contrato_indefinido_mujeres)) { v_num_jornada_partial_contrato_indefinido_mujeres = 0; }
   	if (isNaN(v_num_jornada_partial_contrato_temporal_mujeres)) { v_num_jornada_partial_contrato_temporal_mujeres = 0; }
   	
   	v_num_subtotal_jornada_completa_mujeres = v_num_jornada_completa_contrato_indefinido_mujeres + v_num_jornada_completa_contrato_temporal_mujeres;
   	v_num_subtotal_jornada_partial_mujeres = v_num_jornada_partial_contrato_indefinido_mujeres + v_num_jornada_partial_contrato_temporal_mujeres;
   	v_num_total_jornada_contracto_mujeres = v_num_subtotal_jornada_completa_mujeres + v_num_subtotal_jornada_partial_mujeres;
   	
   	$('#num_subtotal_jornada_completa_mujeres').val( v_num_subtotal_jornada_completa_mujeres);
   	$('#num_subtotal_jornada_partial_mujeres').val( v_num_subtotal_jornada_partial_mujeres);
   	$('#num_total_jornada_contracto_mujeres').val( v_num_total_jornada_contracto_mujeres);
	     	
	     	
	// Does table1 MATCH table 4 mujeres
	if (v_num_total_jornada_contracto_mujeres == <% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>) {
		$('#tabla4_coinicide_con_tabla1_mujeres').val('<fmt:message key="footer.select.value.yes" />');	
	} else {
		$('#tabla4_coinicide_con_tabla1_mujeres').val('<fmt:message key="footer.select.value.no" />');
	}
	
	     	// Table 4 Tipo de Contrato Jornada subtotals and totals hombres
	     	var v_num_subtotal_jornada_completa_hombres = 0;
	     	var v_num_subtotal_jornada_partial_hombres = 0;
	     	var v_num_total_jornada_contracto_hombres = 0;
	     	var v_num_jornada_completa_contrato_indefinido_hombres  = parseFloat($('#num_jornada_completa_contrato_indefinido_hombres').val());
	     	var v_num_jornada_completa_contrato_temporal_hombres  = parseFloat($('#num_jornada_completa_contrato_temporal_hombres').val());
	     	var v_num_jornada_partial_contrato_indefinido_hombres  = parseFloat($('#num_jornada_partial_contrato_indefinido_hombres').val());
	     	var v_num_jornada_partial_contrato_temporal_hombres  = parseFloat($('#num_jornada_partial_contrato_temporal_hombres').val());
	     	
	     	if (isNaN(v_num_jornada_completa_contrato_indefinido_hombres)) { v_num_jornada_completa_contrato_indefinido_hombres = 0; }
	     	if (isNaN(v_num_jornada_completa_contrato_temporal_hombres)) { v_num_jornada_completa_contrato_temporal_hombres = 0; }
	     	if (isNaN(v_num_jornada_partial_contrato_indefinido_hombres)) { v_num_jornada_partial_contrato_indefinido_hombres = 0; }
	     	if (isNaN(v_num_jornada_partial_contrato_temporal_hombres)) { v_num_jornada_partial_contrato_temporal_hombres = 0; }
	     	
	     	v_num_subtotal_jornada_completa_hombres = v_num_jornada_completa_contrato_indefinido_hombres + v_num_jornada_completa_contrato_temporal_hombres;
	     	v_num_subtotal_jornada_partial_hombres = v_num_jornada_partial_contrato_indefinido_hombres + v_num_jornada_partial_contrato_temporal_hombres;
	     	v_num_total_jornada_contracto_hombres = v_num_subtotal_jornada_completa_hombres + v_num_subtotal_jornada_partial_hombres;
	     	
	     	$('#num_subtotal_jornada_completa_hombres').val( v_num_subtotal_jornada_completa_hombres);
	     	$('#num_subtotal_jornada_partial_hombres').val( v_num_subtotal_jornada_partial_hombres);
	     	$('#num_total_jornada_contracto_hombres').val( v_num_total_jornada_contracto_hombres);
	     	
	     	
	// Does table1 MATCH table 4 hombres
	if (v_num_total_jornada_contracto_hombres == <% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>) {
		$('#tabla4_coinicide_con_tabla1_hombres').val('<fmt:message key="footer.select.value.yes" />');	
	} else {
		$('#tabla4_coinicide_con_tabla1_hombres').val('<fmt:message key="footer.select.value.no" />');
	}  	     	
};

</script>
	    
