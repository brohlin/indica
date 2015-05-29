<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		// response.sendRedirect("/indica/es/main.jsp?target=login&page=empresa_resultados_highcharts");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>


<!-- %= session.getAttribute("temp_user_organization_id").toString() % -->
<%	
	String p_organization_id2 = "";
	if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Empresa"))) {
		p_organization_id2 = session.getAttribute("temp_user_organization_id").toString();
	} else if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Admin"))) {
		p_organization_id2 = session.getAttribute("temp_admin_organization_id").toString();
	}
	String num_complete = "";
	String num_not_complete = "";
	String total = "";
	String pct_complete = "";
	String complete_month = "";
	String pct_not_complete = "";
	String ge1 = "";
	String ge2 = "";
	String ge3 = "";
	String ge4 = "";
	String ge5 = "";
	String ge6 = "";
	String ge7 = "";
	String ge8 = "";
	String cp1 = "";
	String cp2 = "";
	String cp3 = "";
	String cp4 = "";
	String cp5 = "";
	String cp6 = "";
	String cp7 = "";
	String cp8 = "";
	String cp9 = "";
	String cp10 = "";
	String rs1 = "";
	String rs2 = "";
	String rs3 = "";
	String rs4 = "";
	String rs5 = "";
	String dp1 = "";
	String dp2 = "";
	String dp3 = "";
	String dp4 = "";
	String dp5 = "";
	String dp6 = "";
	String dp7 = "";
	String dp8 = "";
	String dp9 = "";
	String r1 = "";
	String r2 = "";
	String r3 = "";
	String r4 = "";
	String r5 = "";
	String r6 = "";
	String pv1 = "";
	String pv2 = "";
	String pv3 = "";
	String pv4 = "";
	String pv5 = "";
	String pv6 = "";		
	String cfls1 = "";
	String cfls2 = "";
	String cfls3 = "";
	String cfls4 = "";
	String cfls5 = "";
	String cfls6 = "";
	String cfls7 = "";
	String cfls8 = "";	
	
	String v_id = "";
	String v_nm = "";
	String pct_complete_empresa_otros_datos = "";
	String pct_complete_empresa_cb = "";
	String pct_complete_empresa_plantilla = "";
	String pct_complete_empresa_cl = "";
	String pct_complete_empresa_gestion_del_personal = "";
	String pct_complete_empresa = "";
	String completed = "";
	String last_mod_tmstmp = "";
	
	String dp1_color = "";
	String dp2_color = "";
	String dp3_color = "";
	String dp4_color = "";
	String dp5_color = "";
	String dp6_color = "";
	String dp7_color = "";
	String dp8_color = "";
	String dp9_color = "";
	String r1_color = "";
	String r2_color = "";
	String r3_color = "";
	String r4_color = "";
	String r5_color = "";
	String r6_color = "";
	String pv1_color = "";
	String pv2_color = "";
	String pv3_color = "";
	String pv4_color = "";
	String pv5_color = "";
	String pv6_color = "";
	String rs1_color = "";
	String rs2_color = "";
	String rs3_color = "";
	String rs4_color = "";
	String rs5_color = "";
	String cp1_color = "";
	String cp2_color = "";
	String cp3_color = "";
	String cp4_color = "";
	String cp5_color = "";
	String cp6_color = "";
	String cp7_color = "";
	String cp8_color = "";
	String cp9_color = "";
	String cp10_color = "";
	String ge1_color = "";
	String ge2_color = "";
	String ge3_color = "";
	String ge4_color = "";
	String ge5_color = "";
	String ge6_color = "";
	String ge7_color = "";
	String ge8_color = "";	
	String cfls1_color = "";
	String cfls2_color = "";
	String cfls3_color = "";
	String cfls4_color = "";
	String cfls5_color = "";
	String cfls6_color = "";
	String cfls7_color = "";
	String cfls8_color = "";		
	
	String ge1_num_jornadas_perdidas = "";
	String ge1_num_total_jornadas_anuales_pactadas_convenio = "";
	String ge1_num_jornadas_asistidas = "";
	String ge2_tasa_ausentisom_mujeres = "";
	String ge2_tasa_ausentisom_hombres = "";
	String ge3_tasa_de_cese_de_actividades_mujeres = "";
	String ge3_tasa_de_cese_de_actividades_hombres = "";
	String ge4_respuesta_siempre = "";
	String ge4_respuesta_aveces = "";
	String ge4_respuesta_nunca = "";
	String ge5_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String ge5_respuesta_en_desacuerdo_mujeres = "";
	String ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String ge5_respuesta_de_acuerdo_mujeres = "";
	String ge5_respuesta_totalmente_en_acuerdo_mujeres = "";
	String ge5_respuesta_totalmente_en_desacuerdo_hombres = "";
	String ge5_respuesta_en_desacuerdo_hombres = "";
	String ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String ge5_respuesta_de_acuerdo_hombres = "";
	String ge5_respuesta_totalmente_en_acuerdo_hombres = "";
	String ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String ge6_pct_respuesta_en_desacuerdo_mujeres = "";
	String ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String ge6_pct_respuesta_de_acuerdo_mujeres = "";
	String ge6_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String ge6_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String ge6_pct_respuesta_en_desacuerdo_hombres = "";
	String ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String ge6_pct_respuesta_de_acuerdo_hombres = "";
	String ge6_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String ge7_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String ge7_respuesta_en_desacuerdo_mujeres = "";
	String ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String ge7_respuesta_de_acuerdo_mujeres = "";
	String ge7_respuesta_totalmente_en_acuerdo_mujeres = "";
	String ge7_respuesta_totalmente_en_desacuerdo_hombres = "";
	String ge7_respuesta_en_desacuerdo_hombres = "";
	String ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String ge7_respuesta_de_acuerdo_hombres = "";
	String ge7_respuesta_totalmente_en_acuerdo_hombres = "";
	String ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String ge8_pct_respuesta_en_desacuerdo_mujeres = "";
	String ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String ge8_pct_respuesta_de_acuerdo_mujeres = "";
	String ge8_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String ge8_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String ge8_pct_respuesta_en_desacuerdo_hombres = "";
	String ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String ge8_pct_respuesta_de_acuerdo_hombres = "";
	String ge8_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String cp1_total_mujeres = "";
	String cp1_total_hombres = "";
	String cp2_pct_num_direccion_general_o_maximo_cargo_mujeres = "";
	String cp2_pct_num_puestos_directivos_como_gerencias_mujeres = "";
	String cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = "";
	String cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = "";
	String cp2_pct_num_puestos_tecnicos_mujeres = "";
	String cp2_pct_num_puestos_administrativos_mujeres = "";
	String cp2_pct_num_puestos_auxiliares_mujeres = "";
	String cp2_pct_num_puestos_operarios_mujeres = "";
	String cp2_pct_num_direccion_general_o_maximo_cargo_hombres = "";
	String cp2_pct_num_puestos_directivos_como_gerencias_hombres = "";
	String cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = "";
	String cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = "";
	String cp2_pct_num_puestos_tecnicos_hombres = "";
	String cp2_pct_num_puestos_administrativos_hombres = "";
	String cp2_pct_num_puestos_auxiliares_hombres = "";
	String cp2_pct_num_puestos_operarios_hombres = "";
	String cp3_pct_num_direccion_general_o_maximo_cargo_mujeres = "";
	String cp3_pct_num_puestos_directivos_como_gerencias_mujeres = "";
	String cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = "";
	String cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = "";
	String cp3_pct_num_direccion_general_o_maximo_cargo_hombres = "";
	String cp3_pct_num_puestos_directivos_como_gerencias_hombres = "";
	String cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = "";
	String cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = "";
	String cp4_num_direccion_general_o_maximo_cargo_mujeres = "";
	String cp4_num_puestos_directivos_como_gerencias_mujeres = "";
	String cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = "";
	String cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = "";
	String cp4_num_direccion_general_o_maximo_cargo_hombres = "";
	String cp4_num_puestos_directivos_como_gerencias_hombres = "";
	String cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = "";
	String cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = "";
	String cp4_pct_mujeres = "";
	String cp4_pct_hombres = "";
	String cp5_pct_mujeres = "";
	String cp5_pct_hombres = "";
	String cp6_mujeres = "";
	String cp6_hombres = "";
	String cp7_num_jornada_completa_contrato_indefinido_mujeres = "";
	String cp7_num_jornada_partial_contrato_indefinido_mujeres = "";
	String cp7_num_jornada_completa_contrato_indefinido_hombres = "";
	String cp7_num_jornada_partial_contrato_indefinido_hombres = "";
	String cp8_mujeres = "";
	String cp8_hombres = "";
	// las lineas 238 a 241 creo que deberían ser así: De otra forma el valor de hombres y mujeres, temporal parcial queda vacío. 

	// String cp9_num_jornada_completa_contrato_temporal_mujeres = "";
	// String cp9_num_jornada_parcial_contrato_temporal_mujeres = "";
	// String cp9_num_jornada_completa_contrato_temporal_hombres = "";
	// String cp9_num_jornada_parcial_contrato_temporal_hombres = "";

	String cp9_num_jornada_completa_contrato_indefinido_mujeres = "";
	String cp9_num_jornada_completa_contrato_indefinido_hombres = "";
	String cp9_num_jornada_completa_contrato_temporal_mujeres = "";
	String cp9_num_jornada_completa_contrato_temporal_hombres = "";
	
	String cp10_pct_mujeres = "";
	String cp10_pct_hombres = "";
	String rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = "";
	String rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = "";
	String rs2_mujeres = "";
	String rs2_hombres = "";
	String rs3_respuesta_siempre = "";
	String rs3_respuesta_aveces = "";
	String rs3_respuesta_nunca = "";
	String rs4_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String rs4_num_respuesta_en_desacuerdo_mujeres = "";
	String rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String rs4_num_respuesta_de_acuerdo_mujeres = "";
	String rs4_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String rs4_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String rs4_num_respuesta_en_desacuerdo_hombres = "";
	String rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String rs4_num_respuesta_de_acuerdo_hombres = "";
	String rs4_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String rs5_pct_respuesta_en_desacuerdo_mujeres = "";
	String rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String rs5_pct_respuesta_de_acuerdo_mujeres = "";
	String rs5_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String rs5_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String rs5_pct_respuesta_en_desacuerdo_hombres = "";
	String rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String rs5_pct_respuesta_de_acuerdo_hombres = "";
	String rs5_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = "";
	String dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = "";
	String dp2_pct_mujeres = "";
	String dp2_pct_hombres = "";
	String dp3_respuesta_siempre = "";
	String dp3_respuesta_aveces = "";
	String dp3_respuesta_nunca = "";
	String dp4_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String dp4_num_respuesta_en_desacuerdo_mujeres = "";
	String dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String dp4_num_respuesta_de_acuerdo_mujeres = "";
	String dp4_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String dp4_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String dp4_num_respuesta_en_desacuerdo_hombres = "";
	String dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String dp4_num_respuesta_de_acuerdo_hombres = "";
	String dp4_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String dp5_pct_respuesta_en_desacuerdo_mujeres = "";
	String dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String dp5_pct_respuesta_de_acuerdo_mujeres = "";
	String dp5_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String dp5_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String dp5_pct_respuesta_en_desacuerdo_hombres = "";
	String dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String dp5_pct_respuesta_de_acuerdo_hombres = "";
	String dp5_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String dp6_mujeres = "";
	String dp6_hombres = "";
	String dp7_respuesta_siempre = "";
	String dp7_respuesta_aveces = "";
	String dp7_respuesta_nunca = "";
	String dp8_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String dp8_num_respuesta_en_desacuerdo_mujeres = "";
	String dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String dp8_num_respuesta_de_acuerdo_mujeres = "";
	String dp8_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String dp8_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String dp8_num_respuesta_en_desacuerdo_hombres = "";
	String dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String dp8_num_respuesta_de_acuerdo_hombres = "";
	String dp8_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String dp9_pct_respuesta_en_desacuerdo_mujeres = "";
	String dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String dp9_pct_respuesta_de_acuerdo_mujeres = "";
	String dp9_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String dp9_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String dp9_pct_respuesta_en_desacuerdo_hombres = "";
	String dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String dp9_pct_respuesta_de_acuerdo_hombres = "";
	String dp9_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String r1_num_total_de_la_plantilla_mujeres = "";
	String r1_num_total_de_la_plantilla_hombres = "";
	String r2_average_salario_mujeres = "";
	String r2_average_salario_hombres = "";
	String r2_salario_direccion_general_o_maximo_cargo_mujeres = "";
	String r2_salario_puestos_directivos_como_gerencias_mujeres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres = "";
	String r2_salario_direccion_general_o_maximo_cargo_hombres = "";
	String r2_salario_puestos_directivos_como_gerencias_hombres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres = "";
	String r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres = ""; 
	String r3_average_salario_mujeres = "";
	String r3_average_salario_hombres = "";
	String r3_salario_puestos_tecnicos_mujeres = "";
	String r3_salario_puestos_administrativos_mujeres = "";
	String r3_salario_puestos_auxiliares_mujeres = "";
	String r3_salario_puestos_operarios_mujeres = "";
	String r3_salario_puestos_a_mujeres = ""; 
	String r3_salario_puestos_b_mujeres = ""; 
	String r3_salario_puestos_c_mujeres = ""; 
	String r3_salario_puestos_d_mujeres = ""; 
	String r3_salario_puestos_e_mujeres = ""; 
	String r3_salario_puestos_f_mujeres = ""; 
	String r3_salario_puestos_g_mujeres = ""; 
	String r3_salario_puestos_h_mujeres = "";
	String r3_salario_puestos_tecnicos_hombres = "";
	String r3_salario_puestos_administrativos_hombres = "";
	String r3_salario_puestos_auxiliares_hombres = "";
	String r3_salario_puestos_operarios_hombres = "";
	String r3_salario_puestos_a_hombres = ""; 
	String r3_salario_puestos_b_hombres = ""; 
	String r3_salario_puestos_c_hombres = ""; 
	String r3_salario_puestos_d_hombres = ""; 
	String r3_salario_puestos_e_hombres = ""; 
	String r3_salario_puestos_f_hombres = ""; 
	String r3_salario_puestos_g_hombres = ""; 
	String r3_salario_puestos_h_hombres = "";
	String r4_respuesta_siempre = "";
	String r4_respuesta_aveces = "";
	String r4_respuesta_nunca = "";
	String r5_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String r5_num_respuesta_en_desacuerdo_mujeres = "";
	String r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String r5_num_respuesta_de_acuerdo_mujeres = "";
	String r5_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String r5_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String r5_num_respuesta_en_desacuerdo_hombres = "";
	String r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String r5_num_respuesta_de_acuerdo_hombres = "";
	String r5_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String r6_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String r6_pct_respuesta_en_desacuerdo_mujeres = "";
	String r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String r6_pct_respuesta_de_acuerdo_mujeres = "";
	String r6_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String r6_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String r6_pct_respuesta_en_desacuerdo_hombres = "";
	String r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String r6_pct_respuesta_de_acuerdo_hombres = "";
	String r6_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String pv1_num_quejas_atendidas_acoso_sexual_mujeres = "";
	String pv1_num_quejas_recibidas_acoso_sexual_mujeres = "";
	String pv1_num_quejas_atendidas_acoso_sexual_hombres = "";
	String pv1_num_quejas_recibidas_acoso_sexual_hombres = "";
	String pv2_respuesta_siempre = "";
	String pv2_respuesta_aveces = "";
	String pv2_respuesta_nunca = "";
	String pv3_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String pv3_num_respuesta_en_desacuerdo_mujeres = "";
	String pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String pv3_num_respuesta_de_acuerdo_mujeres = "";
	String pv3_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String pv3_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String pv3_num_respuesta_en_desacuerdo_hombres = "";
	String pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String pv3_num_respuesta_de_acuerdo_hombres = "";
	String pv3_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String pv4_pct_respuesta_en_desacuerdo_mujeres = "";
	String pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String pv4_pct_respuesta_de_acuerdo_mujeres = "";
	String pv4_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String pv4_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String pv4_pct_respuesta_en_desacuerdo_hombres = "";
	String pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String pv4_pct_respuesta_de_acuerdo_hombres = "";
	String pv4_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String pv5_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String pv5_num_respuesta_en_desacuerdo_mujeres = "";
	String pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String pv5_num_respuesta_de_acuerdo_mujeres = "";
	String pv5_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String pv5_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String pv5_num_respuesta_en_desacuerdo_hombres = "";
	String pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String pv5_num_respuesta_de_acuerdo_hombres = "";
	String pv5_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String pv6_pct_respuesta_en_desacuerdo_mujeres = "";
	String pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String pv6_pct_respuesta_de_acuerdo_mujeres = "";
	String pv6_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String pv6_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String pv6_pct_respuesta_en_desacuerdo_hombres = "";
	String pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String pv6_pct_respuesta_de_acuerdo_hombres = "";
	String pv6_pct_respuesta_totalmente_en_acuerdo_hombres = "";

	String cfls1_num_licencia_de_paternidad_en_sit_de_acogerse = "";
	String cfls1_num_licencia_de_paternidad_en_efect_se_acogen = "";
	
	String cfls2_num_licencia_de_maternidad_en_sit_de_acogerse = "";
	String cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres = "";
	String cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres = "";
	String cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres = "";
	
	String cfls2_num_licencia_de_maternidad_en_efect_se_acogen = "";
	String cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres = "";
	String cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres = "";
	String cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres = "";
	
	String cfls2_num_licencia_de_paternidad_en_sit_de_acogerse = "";
	String cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres = "";
	String cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres = "";
	String cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres = "";
	String cfls2_num_licencia_de_paternidad_en_efect_se_acogen = "";
	String cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres = "";
	String cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres = "";
	String cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres = "";
	
	String cfls2_total_num_licencia_de_maternidad_mujeres = "";
	String cfls2_total_num_licencia_de_lactancia_mujeres = "";
	String cfls2_total_num_reduc_jornada_guardar_mujeres = "";
	String cfls2_total_num_excedencia_por_cuidado_mujeres = "";
	
	String cfls2_total_num_licencia_de_paternidad_hombres = "";
	String cfls2_total_num_licencia_de_lactancia_hombres = "";
	String cfls2_total_num_reduc_jornada_guardar_hombres = "";
	String cfls2_total_num_excedencia_por_cuidado_hombres = "";

	String cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_flex_horario_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres = "";
	String cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres = "";
	String cfls3_num_flex_horario_en_sit_de_acogerse_hombres = "";
	String cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres = "";
	String cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres = "";
	String cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres = "";
	String cfls3_num_teletrabajo_en_sit_de_acogerse_hombres = "";
	String cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres = "";
	String cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres = "";
	String cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres = "";
	
	String cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres = "";
	String cfls3_num_flex_horario_en_efect_se_acogen_mujeres = "";
	String cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres = "";
	String cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres = "";
	String cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres = "";
	String cfls3_num_teletrabajo_en_efect_se_acogen_mujeres = "";
	String cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres = "";
	String cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres = "";
	String cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres = "";
	String cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres = "";
	String cfls3_num_flex_horario_en_efect_se_acogen_hombres = "";
	String cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres = "";
	String cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres = "";
	String cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres = "";
	String cfls3_num_teletrabajo_en_efect_se_acogen_hombres = "";
	String cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres = "";
	String cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres = "";
	String cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres = "";
	
	String cfls4_respuesta_siempre = "";
	String cfls4_respuesta_aveces = "";
	String cfls4_respuesta_nunca = "";
	String cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String cfls5_num_respuesta_en_desacuerdo_mujeres = "";
	String cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String cfls5_num_respuesta_de_acuerdo_mujeres = "";
	String cfls5_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String cfls5_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String cfls5_num_respuesta_en_desacuerdo_hombres = "";
	String cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String cfls5_num_respuesta_de_acuerdo_hombres = "";
	String cfls5_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String cfls6_pct_respuesta_en_desacuerdo_mujeres = "";
	String cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String cfls6_pct_respuesta_de_acuerdo_mujeres = "";
	String cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String cfls6_pct_respuesta_en_desacuerdo_hombres = "";
	String cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String cfls6_pct_respuesta_de_acuerdo_hombres = "";
	String cfls6_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	String cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String cfls7_num_respuesta_en_desacuerdo_mujeres = "";
	String cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String cfls7_num_respuesta_de_acuerdo_mujeres = "";
	String cfls7_num_respuesta_totalmente_en_acuerdo_mujeres = "";
	String cfls7_num_respuesta_totalmente_en_desacuerdo_hombres = "";
	String cfls7_num_respuesta_en_desacuerdo_hombres = "";
	String cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String cfls7_num_respuesta_de_acuerdo_hombres = "";
	String cfls7_num_respuesta_totalmente_en_acuerdo_hombres = "";
	String cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres = "";
	String cfls8_pct_respuesta_en_desacuerdo_mujeres = "";
	String cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = "";
	String cfls8_pct_respuesta_de_acuerdo_mujeres = "";
	String cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres = "";
	String cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres = "";
	String cfls8_pct_respuesta_en_desacuerdo_hombres = "";
	String cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = "";
	String cfls8_pct_respuesta_de_acuerdo_hombres = "";
	String cfls8_pct_respuesta_totalmente_en_acuerdo_hombres = "";
	

	

	DynStringArray parameters1 = new DynStringArray();
	parameters1.add(p_organization_id2);
	DbResults db1 = Database.callProcResults("p_get_empresa_resultados", parameters1);
		
	int size1=0;
	
	while(size1<db1.getRowCount())
	{
		v_id = db1.getRow(size1).get(0);
		num_complete = db1.getRow(size1).get(1);
		total = db1.getRow(size1).get(2);
		pct_complete = db1.getRow(size1).get(3);
		complete_month = db1.getRow(size1).get(4);	
		pct_not_complete = db1.getRow(size1).get(5);
		num_not_complete = db1.getRow(size1).get(6);
		ge1 = db1.getRow(size1).get(7);
		ge2 = db1.getRow(size1).get(8);
		ge3 = db1.getRow(size1).get(9);
		ge4 = db1.getRow(size1).get(10);
		ge5 = db1.getRow(size1).get(11);
		ge6 = db1.getRow(size1).get(12);
		ge7 = db1.getRow(size1).get(13);
		ge8 = db1.getRow(size1).get(14);
		cp1 = db1.getRow(size1).get(15);
		cp2 = db1.getRow(size1).get(16);
		cp3 = db1.getRow(size1).get(17);
		cp4 = db1.getRow(size1).get(18);
		cp5 = db1.getRow(size1).get(19);
		cp6 = db1.getRow(size1).get(20);
		cp7 = db1.getRow(size1).get(21);
		cp8 = db1.getRow(size1).get(22);
		cp9 = db1.getRow(size1).get(23);
		cp10 = db1.getRow(size1).get(24);
		rs1 = db1.getRow(size1).get(25);
		rs2 = db1.getRow(size1).get(26);
		rs3 = db1.getRow(size1).get(27);
		rs4 = db1.getRow(size1).get(28);
		rs5 = db1.getRow(size1).get(29);		
		dp1 = db1.getRow(size1).get(30);
		dp2 = db1.getRow(size1).get(31);
		dp3 = db1.getRow(size1).get(32);
		dp4 = db1.getRow(size1).get(33);
		dp5 = db1.getRow(size1).get(34);
		dp6 = db1.getRow(size1).get(35);
		dp7 = db1.getRow(size1).get(36);
		dp8 = db1.getRow(size1).get(37);
		dp9 = db1.getRow(size1).get(38);
		r1 = db1.getRow(size1).get(39);
		r2 = db1.getRow(size1).get(40);
		r3 = db1.getRow(size1).get(41);
		r4 = db1.getRow(size1).get(42);
		r5 = db1.getRow(size1).get(43);		
		r6 = db1.getRow(size1).get(44);		
		pv1 = db1.getRow(size1).get(45);
		pv2 = db1.getRow(size1).get(46);
		pv3 = db1.getRow(size1).get(47);
		pv4 = db1.getRow(size1).get(48);
		pv5 = db1.getRow(size1).get(49);		
		pv6 = db1.getRow(size1).get(50);	
		pct_complete_empresa_otros_datos = db1.getRow(size1).get(51);
		pct_complete_empresa_cb = db1.getRow(size1).get(52);
		pct_complete_empresa_plantilla = db1.getRow(size1).get(53);
		pct_complete_empresa_cl = db1.getRow(size1).get(54);
		pct_complete_empresa_gestion_del_personal = db1.getRow(size1).get(55);	
		pct_complete_empresa = db1.getRow(size1).get(56);
		completed = db1.getRow(size1).get(57);
		last_mod_tmstmp = db1.getRow(size1).get(58);
		dp1_color = db1.getRow(size1).get(59);
		dp2_color = db1.getRow(size1).get(60);
		dp3_color = db1.getRow(size1).get(61);
		dp4_color = db1.getRow(size1).get(62);
		dp5_color = db1.getRow(size1).get(63);
		dp6_color = db1.getRow(size1).get(64);
		dp7_color = db1.getRow(size1).get(65);
		dp8_color = db1.getRow(size1).get(66);
		dp9_color = db1.getRow(size1).get(67);
		r1_color = db1.getRow(size1).get(68);
		r2_color = db1.getRow(size1).get(69);
		r3_color = db1.getRow(size1).get(70);
		r4_color = db1.getRow(size1).get(71);
		r5_color = db1.getRow(size1).get(72);
		r6_color = db1.getRow(size1).get(73);
		pv1_color = db1.getRow(size1).get(74);
		pv2_color = db1.getRow(size1).get(75);
		pv3_color = db1.getRow(size1).get(76);
		pv4_color = db1.getRow(size1).get(77);
		pv5_color = db1.getRow(size1).get(78);
		pv6_color = db1.getRow(size1).get(79);
		rs1_color = db1.getRow(size1).get(80);
		rs2_color = db1.getRow(size1).get(81);
		rs3_color = db1.getRow(size1).get(82);
		rs4_color = db1.getRow(size1).get(83);
		rs5_color = db1.getRow(size1).get(84);
		cp1_color = db1.getRow(size1).get(85);
		cp2_color = db1.getRow(size1).get(86);
		cp3_color = db1.getRow(size1).get(87);
		cp4_color = db1.getRow(size1).get(88);
		cp5_color = db1.getRow(size1).get(89);
		cp6_color = db1.getRow(size1).get(90);
		cp7_color = db1.getRow(size1).get(91);
		cp8_color = db1.getRow(size1).get(92);
		cp9_color = db1.getRow(size1).get(93);
		cp10_color = db1.getRow(size1).get(94);
		ge1_color = db1.getRow(size1).get(95);
		ge2_color = db1.getRow(size1).get(96);
		ge3_color = db1.getRow(size1).get(97);
		ge4_color = db1.getRow(size1).get(98);
		ge5_color = db1.getRow(size1).get(99);
		ge6_color = db1.getRow(size1).get(100);
		ge7_color = db1.getRow(size1).get(101);
		ge8_color = db1.getRow(size1).get(102);
		
		cfls1 = db1.getRow(size1).get(103);
		cfls2 = db1.getRow(size1).get(104);
		cfls3 = db1.getRow(size1).get(105);
		cfls4 = db1.getRow(size1).get(106);
		cfls5 = db1.getRow(size1).get(107);
		cfls6 = db1.getRow(size1).get(108);
		cfls7 = db1.getRow(size1).get(109);
		cfls8 = db1.getRow(size1).get(110);
		cfls1_color = db1.getRow(size1).get(111);
		cfls2_color = db1.getRow(size1).get(112);
		cfls3_color = db1.getRow(size1).get(113);
		cfls4_color = db1.getRow(size1).get(114);
		cfls5_color = db1.getRow(size1).get(115);
		cfls6_color = db1.getRow(size1).get(116);
		cfls7_color = db1.getRow(size1).get(117);
		cfls8_color = db1.getRow(size1).get(118);
		
		ge1_num_jornadas_perdidas = db1.getRow(size1).get(119);
		ge1_num_total_jornadas_anuales_pactadas_convenio = db1.getRow(size1).get(120);
		ge1_num_jornadas_asistidas = db1.getRow(size1).get(121);
		ge2_tasa_ausentisom_mujeres = db1.getRow(size1).get(122);
		ge2_tasa_ausentisom_hombres = db1.getRow(size1).get(123);
		ge3_tasa_de_cese_de_actividades_mujeres = db1.getRow(size1).get(124);
		ge3_tasa_de_cese_de_actividades_hombres = db1.getRow(size1).get(125);
		ge4_respuesta_siempre = db1.getRow(size1).get(126);
		ge4_respuesta_aveces = db1.getRow(size1).get(127);
		ge4_respuesta_nunca = db1.getRow(size1).get(128);
		ge5_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(129);
		ge5_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(130);
		ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(131);
		ge5_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(132);
		ge5_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(133);
		ge5_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(134);
		ge5_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(135);
		ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(136);
		ge5_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(137);
		ge5_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(138);
		ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(139);
		ge6_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(140);
		ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(141);
		ge6_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(142);
		ge6_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(143);
		ge6_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(144);
		ge6_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(145);
		ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(146);
		ge6_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(147);
		ge6_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(148);
		ge7_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(149);
		ge7_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(150);
		ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(151);
		ge7_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(152);
		ge7_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(153);
		ge7_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(154);
		ge7_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(155);
		ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(156);
		ge7_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(157);
		ge7_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(158);
		ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(159);
		ge8_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(160);
		ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(161);
		ge8_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(162);
		ge8_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(163);
		ge8_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(164);
		ge8_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(165);
		ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(166);
		ge8_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(167);
		ge8_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(168);
		cp1_total_mujeres = db1.getRow(size1).get(169);
		cp1_total_hombres = db1.getRow(size1).get(170);
		cp2_pct_num_direccion_general_o_maximo_cargo_mujeres = db1.getRow(size1).get(171);
		cp2_pct_num_puestos_directivos_como_gerencias_mujeres = db1.getRow(size1).get(172);
		cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = db1.getRow(size1).get(173);
		cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = db1.getRow(size1).get(174);
		cp2_pct_num_puestos_tecnicos_mujeres = db1.getRow(size1).get(175);
		cp2_pct_num_puestos_administrativos_mujeres = db1.getRow(size1).get(176);
		cp2_pct_num_puestos_auxiliares_mujeres = db1.getRow(size1).get(177);
		cp2_pct_num_puestos_operarios_mujeres = db1.getRow(size1).get(178);
		cp2_pct_num_direccion_general_o_maximo_cargo_hombres = db1.getRow(size1).get(179);
		cp2_pct_num_puestos_directivos_como_gerencias_hombres = db1.getRow(size1).get(180);
		cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = db1.getRow(size1).get(181);
		cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = db1.getRow(size1).get(182);
		cp2_pct_num_puestos_tecnicos_hombres = db1.getRow(size1).get(183);
		cp2_pct_num_puestos_administrativos_hombres = db1.getRow(size1).get(184);
		cp2_pct_num_puestos_auxiliares_hombres = db1.getRow(size1).get(185);
		cp2_pct_num_puestos_operarios_hombres = db1.getRow(size1).get(186);
		cp3_pct_num_direccion_general_o_maximo_cargo_mujeres = db1.getRow(size1).get(187);
		cp3_pct_num_puestos_directivos_como_gerencias_mujeres = db1.getRow(size1).get(188);
		cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = db1.getRow(size1).get(189);
		cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = db1.getRow(size1).get(190);
		cp3_pct_num_direccion_general_o_maximo_cargo_hombres = db1.getRow(size1).get(191);
		cp3_pct_num_puestos_directivos_como_gerencias_hombres = db1.getRow(size1).get(192);
		cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = db1.getRow(size1).get(193);
		cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = db1.getRow(size1).get(194);
		cp4_num_direccion_general_o_maximo_cargo_mujeres = db1.getRow(size1).get(195);
		cp4_num_puestos_directivos_como_gerencias_mujeres = db1.getRow(size1).get(196);
		cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = db1.getRow(size1).get(197);
		cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = db1.getRow(size1).get(198);
		cp4_num_direccion_general_o_maximo_cargo_hombres = db1.getRow(size1).get(199);
		cp4_num_puestos_directivos_como_gerencias_hombres = db1.getRow(size1).get(200);
		cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = db1.getRow(size1).get(201);
		cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = db1.getRow(size1).get(202);
		cp4_pct_mujeres = db1.getRow(size1).get(203);
		cp4_pct_hombres = db1.getRow(size1).get(204);
		cp5_pct_mujeres = db1.getRow(size1).get(205);
		cp5_pct_hombres = db1.getRow(size1).get(206);
		cp6_mujeres = db1.getRow(size1).get(207);
		cp6_hombres = db1.getRow(size1).get(208);
		cp7_num_jornada_completa_contrato_indefinido_mujeres = db1.getRow(size1).get(209);
		cp7_num_jornada_partial_contrato_indefinido_mujeres = db1.getRow(size1).get(210);
		cp7_num_jornada_completa_contrato_indefinido_hombres = db1.getRow(size1).get(211);
		cp7_num_jornada_partial_contrato_indefinido_hombres = db1.getRow(size1).get(212);
		cp8_mujeres = db1.getRow(size1).get(213);
		cp8_hombres = db1.getRow(size1).get(214);
		cp9_num_jornada_completa_contrato_indefinido_mujeres = db1.getRow(size1).get(215);
		cp9_num_jornada_completa_contrato_indefinido_hombres = db1.getRow(size1).get(216);
		cp9_num_jornada_completa_contrato_temporal_mujeres = db1.getRow(size1).get(217);
		cp9_num_jornada_completa_contrato_temporal_hombres = db1.getRow(size1).get(218);
		cp10_pct_mujeres = db1.getRow(size1).get(219);
		cp10_pct_hombres = db1.getRow(size1).get(220);
		rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = db1.getRow(size1).get(221);
		rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = db1.getRow(size1).get(222);
		rs2_mujeres = db1.getRow(size1).get(223);
		rs2_hombres = db1.getRow(size1).get(224);
		rs3_respuesta_siempre = db1.getRow(size1).get(225);
		rs3_respuesta_aveces = db1.getRow(size1).get(226);
		rs3_respuesta_nunca = db1.getRow(size1).get(227);
		rs4_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(228);
		rs4_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(229);
		rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(230);
		rs4_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(231);
		rs4_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(232);
		rs4_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(233);
		rs4_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(234);
		rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(235);
		rs4_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(236);
		rs4_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(237);
		rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(238);
		rs5_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(239);
		rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(240);
		rs5_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(241);
		rs5_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(242);
		rs5_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(243);
		rs5_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(244);
		rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(245);
		rs5_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(246);
		rs5_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(247);
		dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = db1.getRow(size1).get(248);
		dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = db1.getRow(size1).get(249);
		dp2_pct_mujeres = db1.getRow(size1).get(250);
		dp2_pct_hombres = db1.getRow(size1).get(251);
		dp3_respuesta_siempre = db1.getRow(size1).get(252);
		dp3_respuesta_aveces = db1.getRow(size1).get(253);
		dp3_respuesta_nunca = db1.getRow(size1).get(254);
		dp4_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(255);
		dp4_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(256);
		dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(257);
		dp4_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(258);
		dp4_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(259);
		dp4_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(260);
		dp4_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(261);
		dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(262);
		dp4_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(263);
		dp4_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(264);
		dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(265);
		dp5_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(266);
		dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(267);
		dp5_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(268);
		dp5_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(269);
		dp5_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(270);
		dp5_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(271);
		dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(272);
		dp5_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(273);
		dp5_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(274);
		dp6_mujeres = db1.getRow(size1).get(275);
		dp6_hombres = db1.getRow(size1).get(276);
		dp7_respuesta_siempre = db1.getRow(size1).get(277);
		dp7_respuesta_aveces = db1.getRow(size1).get(278);
		dp7_respuesta_nunca = db1.getRow(size1).get(279);
		dp8_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(280);
		dp8_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(281);
		dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(282);
		dp8_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(283);
		dp8_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(284);
		dp8_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(285);
		dp8_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(286);
		dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(287);
		dp8_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(288);
		dp8_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(289);
		dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(290);
		dp9_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(291);
		dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(292);
		dp9_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(293);
		dp9_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(294);
		dp9_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(295);
		dp9_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(296);
		dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(297);
		dp9_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(298);
		dp9_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(299);
		r1_num_total_de_la_plantilla_mujeres = db1.getRow(size1).get(300);
		r1_num_total_de_la_plantilla_hombres = db1.getRow(size1).get(301);
		r2_average_salario_mujeres = db1.getRow(size1).get(302);
		r2_average_salario_hombres = db1.getRow(size1).get(303);
		r2_salario_direccion_general_o_maximo_cargo_mujeres = db1.getRow(size1).get(304);
		r2_salario_puestos_directivos_como_gerencias_mujeres = db1.getRow(size1).get(305);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = db1.getRow(size1).get(306);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = db1.getRow(size1).get(307);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres = db1.getRow(size1).get(308);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres = db1.getRow(size1).get(309);
		r2_salario_direccion_general_o_maximo_cargo_hombres = db1.getRow(size1).get(310);
		r2_salario_puestos_directivos_como_gerencias_hombres = db1.getRow(size1).get(311);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = db1.getRow(size1).get(312);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = db1.getRow(size1).get(313);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres = db1.getRow(size1).get(314);
		r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres = db1.getRow(size1).get(315); 
		r3_average_salario_mujeres = db1.getRow(size1).get(316);
		r3_average_salario_hombres = db1.getRow(size1).get(317);
		r3_salario_puestos_tecnicos_mujeres = db1.getRow(size1).get(318);
		r3_salario_puestos_administrativos_mujeres = db1.getRow(size1).get(319);
		r3_salario_puestos_auxiliares_mujeres = db1.getRow(size1).get(320);
		r3_salario_puestos_operarios_mujeres = db1.getRow(size1).get(321);
		r3_salario_puestos_a_mujeres = db1.getRow(size1).get(322); 
		r3_salario_puestos_b_mujeres = db1.getRow(size1).get(323); 
		r3_salario_puestos_c_mujeres = db1.getRow(size1).get(324); 
		r3_salario_puestos_d_mujeres = db1.getRow(size1).get(325); 
		r3_salario_puestos_e_mujeres = db1.getRow(size1).get(326); 
		r3_salario_puestos_f_mujeres = db1.getRow(size1).get(327); 
		r3_salario_puestos_g_mujeres = db1.getRow(size1).get(328); 
		r3_salario_puestos_h_mujeres = db1.getRow(size1).get(329);
		r3_salario_puestos_tecnicos_hombres = db1.getRow(size1).get(330);
		r3_salario_puestos_administrativos_hombres = db1.getRow(size1).get(331);
		r3_salario_puestos_auxiliares_hombres = db1.getRow(size1).get(332);
		r3_salario_puestos_operarios_hombres = db1.getRow(size1).get(333);
		r3_salario_puestos_a_hombres = db1.getRow(size1).get(334); 
		r3_salario_puestos_b_hombres = db1.getRow(size1).get(335); 
		r3_salario_puestos_c_hombres = db1.getRow(size1).get(336); 
		r3_salario_puestos_d_hombres = db1.getRow(size1).get(337); 
		r3_salario_puestos_e_hombres = db1.getRow(size1).get(338); 
		r3_salario_puestos_f_hombres = db1.getRow(size1).get(339); 
		r3_salario_puestos_g_hombres = db1.getRow(size1).get(340); 
		r3_salario_puestos_h_hombres = db1.getRow(size1).get(341);
		r4_respuesta_siempre = db1.getRow(size1).get(342);
		r4_respuesta_aveces = db1.getRow(size1).get(343);
		r4_respuesta_nunca = db1.getRow(size1).get(344);
		r5_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(345);
		r5_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(346);
		r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(347);
		r5_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(348);
		r5_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(349);
		r5_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(350);
		r5_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(351);
		r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(352);
		r5_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(353);
		r5_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(354);
		r6_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(355);
		r6_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(356);
		r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(357);
		r6_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(358);
		r6_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(359);
		r6_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(360);
		r6_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(361);
		r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(362);
		r6_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(363);
		r6_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(364);
		pv1_num_quejas_atendidas_acoso_sexual_mujeres = db1.getRow(size1).get(365);
		pv1_num_quejas_recibidas_acoso_sexual_mujeres = db1.getRow(size1).get(366);
		pv1_num_quejas_atendidas_acoso_sexual_hombres = db1.getRow(size1).get(367);
		pv1_num_quejas_recibidas_acoso_sexual_hombres = db1.getRow(size1).get(368);
		pv2_respuesta_siempre = db1.getRow(size1).get(369);
		pv2_respuesta_aveces = db1.getRow(size1).get(370);
		pv2_respuesta_nunca = db1.getRow(size1).get(371);
		pv3_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(372);
		pv3_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(373);
		pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(374);
		pv3_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(375);
		pv3_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(376);
		pv3_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(377);
		pv3_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(378);
		pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(379);
		pv3_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(380);
		pv3_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(381);
		pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(382);
		pv4_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(383);
		pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(384);
		pv4_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(385);
		pv4_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(386);
		pv4_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(387);
		pv4_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(388);
		pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(389);
		pv4_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(390);
		pv4_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(391);
		pv5_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(392);
		pv5_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(393);
		pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(394);
		pv5_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(395);
		pv5_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(396);
		pv5_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(397);
		pv5_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(398);
		pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(399);
		pv5_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(400);
		pv5_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(401);
		pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(402);
		pv6_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(403);
		pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(404);
		pv6_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(405);
		pv6_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(406);
		pv6_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(407);
		pv6_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(408);
		pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(409);
		pv6_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(410);
		pv6_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(411);
		
		cfls1_num_licencia_de_paternidad_en_sit_de_acogerse = db1.getRow(size1).get(412);
		cfls1_num_licencia_de_paternidad_en_efect_se_acogen = db1.getRow(size1).get(413);
		cfls2_num_licencia_de_maternidad_en_sit_de_acogerse = db1.getRow(size1).get(414);
		cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(415);
		cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(416);
		cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(417);
		cfls2_num_licencia_de_maternidad_en_efect_se_acogen = db1.getRow(size1).get(418);
		cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres = db1.getRow(size1).get(419);
		cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres = db1.getRow(size1).get(420);
		cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres = db1.getRow(size1).get(421);
		cfls2_num_licencia_de_paternidad_en_sit_de_acogerse = db1.getRow(size1).get(422);
		cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres = db1.getRow(size1).get(423);
		cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres = db1.getRow(size1).get(424);
		cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres = db1.getRow(size1).get(425);
		cfls2_num_licencia_de_paternidad_en_efect_se_acogen = db1.getRow(size1).get(426);
		cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres = db1.getRow(size1).get(427);
		cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres = db1.getRow(size1).get(428);
		cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres = db1.getRow(size1).get(429);
		cfls2_total_num_licencia_de_maternidad_mujeres = db1.getRow(size1).get(430);
		cfls2_total_num_licencia_de_lactancia_mujeres = db1.getRow(size1).get(431);
		cfls2_total_num_reduc_jornada_guardar_mujeres = db1.getRow(size1).get(432);
		cfls2_total_num_excedencia_por_cuidado_mujeres = db1.getRow(size1).get(433);
		cfls2_total_num_licencia_de_paternidad_hombres = db1.getRow(size1).get(434);
		cfls2_total_num_licencia_de_lactancia_hombres = db1.getRow(size1).get(435);
		cfls2_total_num_reduc_jornada_guardar_hombres = db1.getRow(size1).get(436);
		cfls2_total_num_excedencia_por_cuidado_hombres = db1.getRow(size1).get(437);
		cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(438);
		cfls3_num_flex_horario_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(439);
		cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(440);
		cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(441);
		cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(442);
		cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(443);
		cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(444);
		cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(445);
		cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres = db1.getRow(size1).get(446);
		cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres = db1.getRow(size1).get(447);
		cfls3_num_flex_horario_en_sit_de_acogerse_hombres = db1.getRow(size1).get(448);
		cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres = db1.getRow(size1).get(449);
		cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres = db1.getRow(size1).get(450);
		cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres = db1.getRow(size1).get(451);
		cfls3_num_teletrabajo_en_sit_de_acogerse_hombres = db1.getRow(size1).get(452);
		cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres = db1.getRow(size1).get(453);
		cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres = db1.getRow(size1).get(454);
		cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres = db1.getRow(size1).get(455);
		cfls4_respuesta_siempre = db1.getRow(size1).get(456);
		cfls4_respuesta_aveces = db1.getRow(size1).get(457);
		cfls4_respuesta_nunca = db1.getRow(size1).get(458);
		cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(459);
		cfls5_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(460);
		cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(461);
		cfls5_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(462);
		cfls5_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(463);
		cfls5_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(464);
		cfls5_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(465);
		cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(466);
		cfls5_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(467);
		cfls5_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(468);
		cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(469);
		cfls6_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(470);
		cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(471);
		cfls6_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(472);
		cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(473);
		cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(474);
		cfls6_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(475);
		cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(476);
		cfls6_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(477);
		cfls6_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(478);
		cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(479);
		cfls7_num_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(480);
		cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(481);
		cfls7_num_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(482);
		cfls7_num_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(483);
		cfls7_num_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(484);
		cfls7_num_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(485);
		cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(486);
		cfls7_num_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(487);
		cfls7_num_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(488);
		cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres = db1.getRow(size1).get(489);
		cfls8_pct_respuesta_en_desacuerdo_mujeres = db1.getRow(size1).get(490);
		cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = db1.getRow(size1).get(491);
		cfls8_pct_respuesta_de_acuerdo_mujeres = db1.getRow(size1).get(492);
		cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres = db1.getRow(size1).get(493);
		cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres = db1.getRow(size1).get(494);
		cfls8_pct_respuesta_en_desacuerdo_hombres = db1.getRow(size1).get(495);
		cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = db1.getRow(size1).get(496);
		cfls8_pct_respuesta_de_acuerdo_hombres = db1.getRow(size1).get(497);
		cfls8_pct_respuesta_totalmente_en_acuerdo_hombres = db1.getRow(size1).get(498);
		
		cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres = db1.getRow(size1).get(499);
		cfls3_num_flex_horario_en_efect_se_acogen_mujeres = db1.getRow(size1).get(500);
		cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres = db1.getRow(size1).get(501);
		cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres = db1.getRow(size1).get(502);
		cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres = db1.getRow(size1).get(503);
		cfls3_num_teletrabajo_en_efect_se_acogen_mujeres = db1.getRow(size1).get(504);
		cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres = db1.getRow(size1).get(505);
		cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres = db1.getRow(size1).get(506);
		cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres = db1.getRow(size1).get(507);
		cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres = db1.getRow(size1).get(508);
		cfls3_num_flex_horario_en_efect_se_acogen_hombres = db1.getRow(size1).get(509);
		cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres = db1.getRow(size1).get(510);
		cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres = db1.getRow(size1).get(511);
		cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres = db1.getRow(size1).get(512);
		cfls3_num_teletrabajo_en_efect_se_acogen_hombres = db1.getRow(size1).get(513);
		cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres = db1.getRow(size1).get(514);
		cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres = db1.getRow(size1).get(515);
		cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres = db1.getRow(size1).get(516);
		v_nm = db1.getRow(size1).get(517);
			
		
						
		size1++;
	}
	
	if (v_id == null) {v_id = "";}
	if (ge1 == null) {ge1 = "";}
	if (ge2 == null) {ge2 = "";}
	if (ge3 == null) {ge3 = "";}
	if (ge4 == null) {ge4 = "";}
	if (ge5 == null) {ge5 = "";}
	if (ge6 == null) {ge6 = "";}
	if (ge7 == null) {ge7 = "";}
	if (ge8 == null) {ge8 = "";}
	if (cp1 == null) {cp1 = "";}
	if (cp2 == null) {cp2 = "";}
	if (cp3 == null) {cp3 = "";}
	if (cp4 == null) {cp4 = "";}
	if (cp5 == null) {cp5 = "";}
	if (cp6 == null) {cp6 = "";}
	if (cp7 == null) {cp7 = "";}
	if (cp8 == null) {cp8 = "";}
	if (cp9 == null) {cp9 = "";}
	if (cp10 == null) {cp10 = "";}
	if (rs1 == null) {rs1 = "";}
	if (rs2 == null) {rs2 = "";}
	if (rs3 == null) {rs3 = "";}
	if (rs4 == null) {rs4 = "";}
	if (rs5 == null) {rs5 = "";}
	if (dp1 == null) {dp1 = "";}
	if (dp2 == null) {dp2 = "";}
	if (dp3 == null) {dp3 = "";}
	if (dp4 == null) {dp4 = "";}
	if (dp5 == null) {dp5 = "";}
	if (dp6 == null) {dp6 = "";}
	if (dp7 == null) {dp7 = "";}
	if (dp8 == null) {dp8 = "";}
	if (dp9 == null) {dp9 = "";}
	if (r1 == null) {r1 = "";}
	if (r2 == null) {r2 = "";}
	if (r3 == null) {r3 = "";}
	if (r4 == null) {r4 = "";}
	if (r5 == null) {r5 = "";}
	if (r6 == null) {r6 = "";}
	if (pv1 == null) {pv1 = "";}
	if (pv2 == null) {pv2 = "";}
	if (pv3 == null) {pv3 = "";}
	if (pv4 == null) {pv4 = "";}
	if (pv5 == null) {pv5 = "";}
	if (pv6 == null) {pv6 = "";}
	
	if (pct_complete_empresa_otros_datos == null) {pct_complete_empresa_otros_datos = "";}
	if (pct_complete_empresa_cb == null) {pct_complete_empresa_cb = "";}
	if (pct_complete_empresa_plantilla == null) {pct_complete_empresa_plantilla = "";}
	if (pct_complete_empresa_cl == null) {pct_complete_empresa_cl = "";}
	if (pct_complete_empresa_gestion_del_personal == null) {pct_complete_empresa_gestion_del_personal = "";}
	if (pct_complete_empresa == null) {pct_complete_empresa = "";}		
	if (completed == null) {completed = "";}
	if (last_mod_tmstmp == null) {last_mod_tmstmp = "";}	
		
	if (dp1_color == null) { dp1_color = "unknown";}
	if (dp2_color == null) { dp2_color = "unknown";}
	if (dp3_color == null) { dp3_color = "unknown";}
	if (dp4_color == null) { dp4_color = "unknown";}
	if (dp5_color == null) { dp5_color = "unknown";}
	if (dp6_color == null) { dp6_color = "unknown";}
	if (dp7_color == null) { dp7_color = "unknown";}
	if (dp8_color == null) { dp8_color = "unknown";}
	if (dp9_color == null) { dp9_color = "unknown";}
	if (r1_color == null) { r1_color = "unknown";}
	if (r2_color == null) { r2_color = "unknown";}
	if (r3_color == null) { r3_color = "unknown";}
	if (r4_color == null) { r4_color = "unknown";}
	if (r5_color == null) { r5_color = "unknown";}
	if (r6_color == null) { r6_color = "unknown";}
	if (pv1_color == null) { pv1_color = "unknown";}
	if (pv2_color == null) { pv2_color = "unknown";}
	if (pv3_color == null) { pv3_color = "unknown";}
	if (pv4_color == null) { pv4_color = "unknown";}
	if (pv5_color == null) { pv5_color = "unknown";}
	if (pv6_color == null) { pv6_color = "unknown";}
	if (rs1_color == null) { rs1_color = "unknown";}
	if (rs2_color == null) { rs2_color = "unknown";}
	if (rs3_color == null) { rs3_color = "unknown";}
	if (rs4_color == null) { rs4_color = "unknown";}
	if (rs5_color == null) { rs5_color = "unknown";}
	if (cp1_color == null) { cp1_color = "unknown";}
	if (cp2_color == null) { cp2_color = "unknown";}
	if (cp3_color == null) { cp3_color = "unknown";}
	if (cp4_color == null) { cp4_color = "unknown";}
	if (cp5_color == null) { cp5_color = "unknown";}
	if (cp6_color == null) { cp6_color = "unknown";}
	if (cp7_color == null) { cp7_color = "unknown";}
	if (cp8_color == null) { cp8_color = "unknown";}
	if (cp9_color == null) { cp9_color = "unknown";}
	if (cp10_color == null) { cp10_color = "unknown";}
	if (ge1_color == null) { ge1_color = "unknown";}
	if (ge2_color == null) { ge2_color = "unknown";}
	if (ge3_color == null) { ge3_color = "unknown";}
	if (ge4_color == null) { ge4_color = "unknown";}
	if (ge5_color == null) { ge5_color = "unknown";}
	if (ge6_color == null) { ge6_color = "unknown";}
	if (ge7_color == null) { ge7_color = "unknown";}
	if (ge8_color == null) { ge8_color = "unknown";}
	
	if (cfls1 == null) {cfls1 = "";}
	if (cfls2 == null) {cfls2 = "";}
	if (cfls3 == null) {cfls3 = "";}
	if (cfls4 == null) {cfls4 = "";}
	if (cfls5 == null) {cfls5 = "";}
	if (cfls6 == null) {cfls6 = "";}
	if (cfls7 == null) {cfls7 = "";}
	if (cfls8 == null) {cfls8 = "";}			
		
	if (cfls1_color == null) { cfls1_color = "unknown";}
	if (cfls2_color == null) { cfls2_color = "unknown";}
	if (cfls3_color == null) { cfls3_color = "unknown";}
	if (cfls4_color == null) { cfls4_color = "unknown";}
	if (cfls5_color == null) { cfls5_color = "unknown";}
	if (cfls6_color == null) { cfls6_color = "unknown";}
	if (cfls7_color == null) { cfls7_color = "unknown";}
	if (cfls8_color == null) { cfls8_color = "unknown";}
	
	if ( ge1_num_jornadas_perdidas == null ) { ge1_num_jornadas_perdidas = ""; }
	if ( ge1_num_total_jornadas_anuales_pactadas_convenio == null ) { ge1_num_total_jornadas_anuales_pactadas_convenio = ""; }
	if ( ge1_num_jornadas_asistidas == null ) { ge1_num_jornadas_asistidas = ""; }
	if ( ge2_tasa_ausentisom_mujeres == null ) { ge2_tasa_ausentisom_mujeres = ""; }
	if ( ge2_tasa_ausentisom_hombres == null ) { ge2_tasa_ausentisom_hombres = ""; }
	if ( ge3_tasa_de_cese_de_actividades_mujeres == null ) { ge3_tasa_de_cese_de_actividades_mujeres = ""; }
	if ( ge3_tasa_de_cese_de_actividades_hombres == null ) { ge3_tasa_de_cese_de_actividades_hombres = ""; }
	if ( ge4_respuesta_siempre == null ) { ge4_respuesta_siempre = ""; }
	if ( ge4_respuesta_aveces == null ) { ge4_respuesta_aveces = ""; }
	if ( ge4_respuesta_nunca == null ) { ge4_respuesta_nunca = ""; }
	if ( ge5_respuesta_totalmente_en_desacuerdo_mujeres == null ) { ge5_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( ge5_respuesta_en_desacuerdo_mujeres == null ) { ge5_respuesta_en_desacuerdo_mujeres = ""; }
	if ( ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( ge5_respuesta_de_acuerdo_mujeres == null ) { ge5_respuesta_de_acuerdo_mujeres = ""; }
	if ( ge5_respuesta_totalmente_en_acuerdo_mujeres == null ) { ge5_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( ge5_respuesta_totalmente_en_desacuerdo_hombres == null ) { ge5_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( ge5_respuesta_en_desacuerdo_hombres == null ) { ge5_respuesta_en_desacuerdo_hombres = ""; }
	if ( ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( ge5_respuesta_de_acuerdo_hombres == null ) { ge5_respuesta_de_acuerdo_hombres = ""; }
	if ( ge5_respuesta_totalmente_en_acuerdo_hombres == null ) { ge5_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( ge6_pct_respuesta_en_desacuerdo_mujeres == null ) { ge6_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( ge6_pct_respuesta_de_acuerdo_mujeres == null ) { ge6_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( ge6_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { ge6_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( ge6_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { ge6_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( ge6_pct_respuesta_en_desacuerdo_hombres == null ) { ge6_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( ge6_pct_respuesta_de_acuerdo_hombres == null ) { ge6_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( ge6_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { ge6_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( ge7_respuesta_totalmente_en_desacuerdo_mujeres == null ) { ge7_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( ge7_respuesta_en_desacuerdo_mujeres == null ) { ge7_respuesta_en_desacuerdo_mujeres = ""; }
	if ( ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( ge7_respuesta_de_acuerdo_mujeres == null ) { ge7_respuesta_de_acuerdo_mujeres = ""; }
	if ( ge7_respuesta_totalmente_en_acuerdo_mujeres == null ) { ge7_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( ge7_respuesta_totalmente_en_desacuerdo_hombres == null ) { ge7_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( ge7_respuesta_en_desacuerdo_hombres == null ) { ge7_respuesta_en_desacuerdo_hombres = ""; }
	if ( ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( ge7_respuesta_de_acuerdo_hombres == null ) { ge7_respuesta_de_acuerdo_hombres = ""; }
	if ( ge7_respuesta_totalmente_en_acuerdo_hombres == null ) { ge7_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( ge8_pct_respuesta_en_desacuerdo_mujeres == null ) { ge8_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( ge8_pct_respuesta_de_acuerdo_mujeres == null ) { ge8_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( ge8_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { ge8_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( ge8_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { ge8_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( ge8_pct_respuesta_en_desacuerdo_hombres == null ) { ge8_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( ge8_pct_respuesta_de_acuerdo_hombres == null ) { ge8_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( ge8_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { ge8_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( cp1_total_mujeres == null ) { cp1_total_mujeres = ""; }
	if ( cp1_total_hombres == null ) { cp1_total_hombres = ""; }
	if ( cp2_pct_num_direccion_general_o_maximo_cargo_mujeres == null ) { cp2_pct_num_direccion_general_o_maximo_cargo_mujeres = ""; }
	if ( cp2_pct_num_puestos_directivos_como_gerencias_mujeres == null ) { cp2_pct_num_puestos_directivos_como_gerencias_mujeres = ""; }
	if ( cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres == null ) { cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = ""; }
	if ( cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres == null ) { cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = ""; }
	if ( cp2_pct_num_puestos_tecnicos_mujeres == null ) { cp2_pct_num_puestos_tecnicos_mujeres = ""; }
	if ( cp2_pct_num_puestos_administrativos_mujeres == null ) { cp2_pct_num_puestos_administrativos_mujeres = ""; }
	if ( cp2_pct_num_puestos_auxiliares_mujeres == null ) { cp2_pct_num_puestos_auxiliares_mujeres = ""; }
	if ( cp2_pct_num_puestos_operarios_mujeres == null ) { cp2_pct_num_puestos_operarios_mujeres = ""; }
	if ( cp2_pct_num_direccion_general_o_maximo_cargo_hombres == null ) { cp2_pct_num_direccion_general_o_maximo_cargo_hombres = ""; }
	if ( cp2_pct_num_puestos_directivos_como_gerencias_hombres == null ) { cp2_pct_num_puestos_directivos_como_gerencias_hombres = ""; }
	if ( cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres == null ) { cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = ""; }
	if ( cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres == null ) { cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = ""; }
	if ( cp2_pct_num_puestos_tecnicos_hombres == null ) { cp2_pct_num_puestos_tecnicos_hombres = ""; }
	if ( cp2_pct_num_puestos_administrativos_hombres == null ) { cp2_pct_num_puestos_administrativos_hombres = ""; }
	if ( cp2_pct_num_puestos_auxiliares_hombres == null ) { cp2_pct_num_puestos_auxiliares_hombres = ""; }
	if ( cp2_pct_num_puestos_operarios_hombres == null ) { cp2_pct_num_puestos_operarios_hombres = ""; }
	if ( cp3_pct_num_direccion_general_o_maximo_cargo_mujeres == null ) { cp3_pct_num_direccion_general_o_maximo_cargo_mujeres = ""; }
	if ( cp3_pct_num_puestos_directivos_como_gerencias_mujeres == null ) { cp3_pct_num_puestos_directivos_como_gerencias_mujeres = ""; }
	if ( cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres == null ) { cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = ""; }
	if ( cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres == null ) { cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = ""; }
	if ( cp3_pct_num_direccion_general_o_maximo_cargo_hombres == null ) { cp3_pct_num_direccion_general_o_maximo_cargo_hombres = ""; }
	if ( cp3_pct_num_puestos_directivos_como_gerencias_hombres == null ) { cp3_pct_num_puestos_directivos_como_gerencias_hombres = ""; }
	if ( cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres == null ) { cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = ""; }
	if ( cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres == null ) { cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = ""; }
	if ( cp4_num_direccion_general_o_maximo_cargo_mujeres == null ) { cp4_num_direccion_general_o_maximo_cargo_mujeres = ""; }
	if ( cp4_num_puestos_directivos_como_gerencias_mujeres == null ) { cp4_num_puestos_directivos_como_gerencias_mujeres = ""; }
	if ( cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres == null ) { cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = ""; }
	if ( cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres == null ) { cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = ""; }
	if ( cp4_num_direccion_general_o_maximo_cargo_hombres == null ) { cp4_num_direccion_general_o_maximo_cargo_hombres = ""; }
	if ( cp4_num_puestos_directivos_como_gerencias_hombres == null ) { cp4_num_puestos_directivos_como_gerencias_hombres = ""; }
	if ( cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres == null ) { cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = ""; }
	if ( cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres == null ) { cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = ""; }
	if ( cp4_pct_mujeres == null ) { cp4_pct_mujeres = ""; }
	if ( cp4_pct_hombres == null ) { cp4_pct_hombres = ""; }
	if ( cp5_pct_mujeres == null ) { cp5_pct_mujeres = ""; }
	if ( cp5_pct_hombres == null ) { cp5_pct_hombres = ""; }
	if ( cp6_mujeres == null ) { cp6_mujeres = ""; }
	if ( cp6_hombres == null ) { cp6_hombres = ""; }
	if ( cp7_num_jornada_completa_contrato_indefinido_mujeres == null ) { cp7_num_jornada_completa_contrato_indefinido_mujeres = ""; }
	if ( cp7_num_jornada_partial_contrato_indefinido_mujeres == null ) { cp7_num_jornada_partial_contrato_indefinido_mujeres = ""; }
	if ( cp7_num_jornada_completa_contrato_indefinido_hombres == null ) { cp7_num_jornada_completa_contrato_indefinido_hombres = ""; }
	if ( cp7_num_jornada_partial_contrato_indefinido_hombres == null ) { cp7_num_jornada_partial_contrato_indefinido_hombres = ""; }
	if ( cp8_mujeres == null ) { cp8_mujeres = ""; }
	if ( cp8_hombres == null ) { cp8_hombres = ""; }
	if ( cp9_num_jornada_completa_contrato_indefinido_mujeres == null ) { cp9_num_jornada_completa_contrato_indefinido_mujeres = ""; }
	if ( cp9_num_jornada_completa_contrato_indefinido_hombres == null ) { cp9_num_jornada_completa_contrato_indefinido_hombres = ""; }
	if ( cp9_num_jornada_completa_contrato_temporal_mujeres == null ) { cp9_num_jornada_completa_contrato_temporal_mujeres = ""; }
	if ( cp9_num_jornada_completa_contrato_temporal_hombres == null ) { cp9_num_jornada_completa_contrato_temporal_hombres = ""; }
	if ( cp10_pct_mujeres == null ) { cp10_pct_mujeres = ""; }
	if ( cp10_pct_hombres == null ) { cp10_pct_hombres = ""; }
	if ( rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres == null ) { rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = ""; }
	if ( rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres == null ) { rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = ""; }
	if ( rs2_mujeres == null ) { rs2_mujeres = ""; }
	if ( rs2_hombres == null ) { rs2_hombres = ""; }
	if ( rs3_respuesta_siempre == null ) { rs3_respuesta_siempre = ""; }
	if ( rs3_respuesta_aveces == null ) { rs3_respuesta_aveces = ""; }
	if ( rs3_respuesta_nunca == null ) { rs3_respuesta_nunca = ""; }
	if ( rs4_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { rs4_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( rs4_num_respuesta_en_desacuerdo_mujeres == null ) { rs4_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( rs4_num_respuesta_de_acuerdo_mujeres == null ) { rs4_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( rs4_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { rs4_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( rs4_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { rs4_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( rs4_num_respuesta_en_desacuerdo_hombres == null ) { rs4_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( rs4_num_respuesta_de_acuerdo_hombres == null ) { rs4_num_respuesta_de_acuerdo_hombres = ""; }
	if ( rs4_num_respuesta_totalmente_en_acuerdo_hombres == null ) { rs4_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( rs5_pct_respuesta_en_desacuerdo_mujeres == null ) { rs5_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( rs5_pct_respuesta_de_acuerdo_mujeres == null ) { rs5_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( rs5_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { rs5_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( rs5_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { rs5_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( rs5_pct_respuesta_en_desacuerdo_hombres == null ) { rs5_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( rs5_pct_respuesta_de_acuerdo_hombres == null ) { rs5_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( rs5_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { rs5_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres == null ) { dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres = ""; }
	if ( dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres == null ) { dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres = ""; }
	if ( dp2_pct_mujeres == null ) { dp2_pct_mujeres = ""; }
	if ( dp2_pct_hombres == null ) { dp2_pct_hombres = ""; }
	if ( dp3_respuesta_siempre == null ) { dp3_respuesta_siempre = ""; }
	if ( dp3_respuesta_aveces == null ) { dp3_respuesta_aveces = ""; }
	if ( dp3_respuesta_nunca == null ) { dp3_respuesta_nunca = ""; }
	if ( dp4_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { dp4_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( dp4_num_respuesta_en_desacuerdo_mujeres == null ) { dp4_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( dp4_num_respuesta_de_acuerdo_mujeres == null ) { dp4_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( dp4_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { dp4_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( dp4_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { dp4_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( dp4_num_respuesta_en_desacuerdo_hombres == null ) { dp4_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( dp4_num_respuesta_de_acuerdo_hombres == null ) { dp4_num_respuesta_de_acuerdo_hombres = ""; }
	if ( dp4_num_respuesta_totalmente_en_acuerdo_hombres == null ) { dp4_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( dp5_pct_respuesta_en_desacuerdo_mujeres == null ) { dp5_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( dp5_pct_respuesta_de_acuerdo_mujeres == null ) { dp5_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( dp5_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { dp5_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( dp5_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { dp5_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( dp5_pct_respuesta_en_desacuerdo_hombres == null ) { dp5_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( dp5_pct_respuesta_de_acuerdo_hombres == null ) { dp5_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( dp5_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { dp5_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( dp6_mujeres == null ) { dp6_mujeres = ""; }
	if ( dp6_hombres == null ) { dp6_hombres = ""; }
	if ( dp7_respuesta_siempre == null ) { dp7_respuesta_siempre = ""; }
	if ( dp7_respuesta_aveces == null ) { dp7_respuesta_aveces = ""; }
	if ( dp7_respuesta_nunca == null ) { dp7_respuesta_nunca = ""; }
	if ( dp8_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { dp8_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( dp8_num_respuesta_en_desacuerdo_mujeres == null ) { dp8_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( dp8_num_respuesta_de_acuerdo_mujeres == null ) { dp8_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( dp8_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { dp8_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( dp8_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { dp8_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( dp8_num_respuesta_en_desacuerdo_hombres == null ) { dp8_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( dp8_num_respuesta_de_acuerdo_hombres == null ) { dp8_num_respuesta_de_acuerdo_hombres = ""; }
	if ( dp8_num_respuesta_totalmente_en_acuerdo_hombres == null ) { dp8_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( dp9_pct_respuesta_en_desacuerdo_mujeres == null ) { dp9_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( dp9_pct_respuesta_de_acuerdo_mujeres == null ) { dp9_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( dp9_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { dp9_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( dp9_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { dp9_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( dp9_pct_respuesta_en_desacuerdo_hombres == null ) { dp9_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( dp9_pct_respuesta_de_acuerdo_hombres == null ) { dp9_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( dp9_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { dp9_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( r1_num_total_de_la_plantilla_mujeres == null ) { r1_num_total_de_la_plantilla_mujeres = ""; }
	if ( r1_num_total_de_la_plantilla_hombres == null ) { r1_num_total_de_la_plantilla_hombres = ""; }
	if ( r2_average_salario_mujeres == null ) { r2_average_salario_mujeres = ""; }
	if ( r2_average_salario_hombres == null ) { r2_average_salario_hombres = ""; }
	if ( r2_salario_direccion_general_o_maximo_cargo_mujeres == null ) { r2_salario_direccion_general_o_maximo_cargo_mujeres = ""; }
	if ( r2_salario_puestos_directivos_como_gerencias_mujeres == null ) { r2_salario_puestos_directivos_como_gerencias_mujeres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres = ""; }
	if ( r2_salario_direccion_general_o_maximo_cargo_hombres == null ) { r2_salario_direccion_general_o_maximo_cargo_hombres = ""; }
	if ( r2_salario_puestos_directivos_como_gerencias_hombres == null ) { r2_salario_puestos_directivos_como_gerencias_hombres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres = ""; }
	if ( r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres == null ) { r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres = ""; }
	if ( r3_average_salario_mujeres == null ) { r3_average_salario_mujeres = ""; }
	if ( r3_average_salario_hombres == null ) { r3_average_salario_hombres = ""; }
	if ( r3_salario_puestos_tecnicos_mujeres == null ) { r3_salario_puestos_tecnicos_mujeres = ""; }
	if ( r3_salario_puestos_administrativos_mujeres == null ) { r3_salario_puestos_administrativos_mujeres = ""; }
	if ( r3_salario_puestos_auxiliares_mujeres == null ) { r3_salario_puestos_auxiliares_mujeres = ""; }
	if ( r3_salario_puestos_operarios_mujeres == null ) { r3_salario_puestos_operarios_mujeres = ""; }
	if ( r3_salario_puestos_a_mujeres == null ) { r3_salario_puestos_a_mujeres = ""; }
	if ( r3_salario_puestos_b_mujeres == null ) { r3_salario_puestos_b_mujeres = ""; }
	if ( r3_salario_puestos_c_mujeres == null ) { r3_salario_puestos_c_mujeres = ""; }
	if ( r3_salario_puestos_d_mujeres == null ) { r3_salario_puestos_d_mujeres = ""; }
	if ( r3_salario_puestos_e_mujeres == null ) { r3_salario_puestos_e_mujeres = ""; }
	if ( r3_salario_puestos_f_mujeres == null ) { r3_salario_puestos_f_mujeres = ""; }
	if ( r3_salario_puestos_g_mujeres == null ) { r3_salario_puestos_g_mujeres = ""; }
	if ( r3_salario_puestos_h_mujeres == null ) { r3_salario_puestos_h_mujeres = ""; }
	if ( r3_salario_puestos_tecnicos_hombres == null ) { r3_salario_puestos_tecnicos_hombres = ""; }
	if ( r3_salario_puestos_administrativos_hombres == null ) { r3_salario_puestos_administrativos_hombres = ""; }
	if ( r3_salario_puestos_auxiliares_hombres == null ) { r3_salario_puestos_auxiliares_hombres = ""; }
	if ( r3_salario_puestos_operarios_hombres == null ) { r3_salario_puestos_operarios_hombres = ""; }
	if ( r3_salario_puestos_a_hombres == null ) { r3_salario_puestos_a_hombres = ""; }
	if ( r3_salario_puestos_b_hombres == null ) { r3_salario_puestos_b_hombres = ""; }
	if ( r3_salario_puestos_c_hombres == null ) { r3_salario_puestos_c_hombres = ""; }
	if ( r3_salario_puestos_d_hombres == null ) { r3_salario_puestos_d_hombres = ""; }
	if ( r3_salario_puestos_e_hombres == null ) { r3_salario_puestos_e_hombres = ""; }
	if ( r3_salario_puestos_f_hombres == null ) { r3_salario_puestos_f_hombres = ""; }
	if ( r3_salario_puestos_g_hombres == null ) { r3_salario_puestos_g_hombres = ""; }
	if ( r3_salario_puestos_h_hombres == null ) { r3_salario_puestos_h_hombres = ""; }
	if ( r4_respuesta_siempre == null ) { r4_respuesta_siempre = ""; }
	if ( r4_respuesta_aveces == null ) { r4_respuesta_aveces = ""; }
	if ( r4_respuesta_nunca == null ) { r4_respuesta_nunca = ""; }
	if ( r5_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { r5_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( r5_num_respuesta_en_desacuerdo_mujeres == null ) { r5_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( r5_num_respuesta_de_acuerdo_mujeres == null ) { r5_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( r5_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { r5_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( r5_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { r5_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( r5_num_respuesta_en_desacuerdo_hombres == null ) { r5_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( r5_num_respuesta_de_acuerdo_hombres == null ) { r5_num_respuesta_de_acuerdo_hombres = ""; }
	if ( r5_num_respuesta_totalmente_en_acuerdo_hombres == null ) { r5_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( r6_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { r6_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( r6_pct_respuesta_en_desacuerdo_mujeres == null ) { r6_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( r6_pct_respuesta_de_acuerdo_mujeres == null ) { r6_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( r6_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { r6_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( r6_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { r6_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( r6_pct_respuesta_en_desacuerdo_hombres == null ) { r6_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( r6_pct_respuesta_de_acuerdo_hombres == null ) { r6_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( r6_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { r6_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( pv1_num_quejas_atendidas_acoso_sexual_mujeres == null ) { pv1_num_quejas_atendidas_acoso_sexual_mujeres = ""; }
	if ( pv1_num_quejas_recibidas_acoso_sexual_mujeres == null ) { pv1_num_quejas_recibidas_acoso_sexual_mujeres = ""; }
	if ( pv1_num_quejas_atendidas_acoso_sexual_hombres == null ) { pv1_num_quejas_atendidas_acoso_sexual_hombres = ""; }
	if ( pv1_num_quejas_recibidas_acoso_sexual_hombres == null ) { pv1_num_quejas_recibidas_acoso_sexual_hombres = ""; }
	if ( pv2_respuesta_siempre == null ) { pv2_respuesta_siempre = ""; }
	if ( pv2_respuesta_aveces == null ) { pv2_respuesta_aveces = ""; }
	if ( pv2_respuesta_nunca == null ) { pv2_respuesta_nunca = ""; }
	if ( pv3_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { pv3_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( pv3_num_respuesta_en_desacuerdo_mujeres == null ) { pv3_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( pv3_num_respuesta_de_acuerdo_mujeres == null ) { pv3_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( pv3_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { pv3_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( pv3_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { pv3_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( pv3_num_respuesta_en_desacuerdo_hombres == null ) { pv3_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( pv3_num_respuesta_de_acuerdo_hombres == null ) { pv3_num_respuesta_de_acuerdo_hombres = ""; }
	if ( pv3_num_respuesta_totalmente_en_acuerdo_hombres == null ) { pv3_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( pv4_pct_respuesta_en_desacuerdo_mujeres == null ) { pv4_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( pv4_pct_respuesta_de_acuerdo_mujeres == null ) { pv4_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( pv4_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { pv4_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( pv4_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { pv4_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( pv4_pct_respuesta_en_desacuerdo_hombres == null ) { pv4_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( pv4_pct_respuesta_de_acuerdo_hombres == null ) { pv4_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( pv4_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { pv4_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( pv5_num_respuesta_totalmente_en_desacuerdo_mujeres == null ) { pv5_num_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( pv5_num_respuesta_en_desacuerdo_mujeres == null ) { pv5_num_respuesta_en_desacuerdo_mujeres = ""; }
	if ( pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( pv5_num_respuesta_de_acuerdo_mujeres == null ) { pv5_num_respuesta_de_acuerdo_mujeres = ""; }
	if ( pv5_num_respuesta_totalmente_en_acuerdo_mujeres == null ) { pv5_num_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( pv5_num_respuesta_totalmente_en_desacuerdo_hombres == null ) { pv5_num_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( pv5_num_respuesta_en_desacuerdo_hombres == null ) { pv5_num_respuesta_en_desacuerdo_hombres = ""; }
	if ( pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( pv5_num_respuesta_de_acuerdo_hombres == null ) { pv5_num_respuesta_de_acuerdo_hombres = ""; }
	if ( pv5_num_respuesta_totalmente_en_acuerdo_hombres == null ) { pv5_num_respuesta_totalmente_en_acuerdo_hombres = ""; }
	if ( pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres == null ) { pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres = ""; }
	if ( pv6_pct_respuesta_en_desacuerdo_mujeres == null ) { pv6_pct_respuesta_en_desacuerdo_mujeres = ""; }
	if ( pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres == null ) { pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres = ""; }
	if ( pv6_pct_respuesta_de_acuerdo_mujeres == null ) { pv6_pct_respuesta_de_acuerdo_mujeres = ""; }
	if ( pv6_pct_respuesta_totalmente_en_acuerdo_mujeres == null ) { pv6_pct_respuesta_totalmente_en_acuerdo_mujeres = ""; }
	if ( pv6_pct_respuesta_totalmente_en_desacuerdo_hombres == null ) { pv6_pct_respuesta_totalmente_en_desacuerdo_hombres = ""; }
	if ( pv6_pct_respuesta_en_desacuerdo_hombres == null ) { pv6_pct_respuesta_en_desacuerdo_hombres = ""; }
	if ( pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres == null ) { pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres = ""; }
	if ( pv6_pct_respuesta_de_acuerdo_hombres == null ) { pv6_pct_respuesta_de_acuerdo_hombres = ""; }
	if ( pv6_pct_respuesta_totalmente_en_acuerdo_hombres == null ) { pv6_pct_respuesta_totalmente_en_acuerdo_hombres = ""; }
	
	if (cfls1_num_licencia_de_paternidad_en_sit_de_acogerse  == null ) { cfls1_num_licencia_de_paternidad_en_sit_de_acogerse  = ""; }
	if (cfls1_num_licencia_de_paternidad_en_efect_se_acogen  == null ) { cfls1_num_licencia_de_paternidad_en_efect_se_acogen  = ""; }
	if (cfls2_num_licencia_de_maternidad_en_sit_de_acogerse  == null ) { cfls2_num_licencia_de_maternidad_en_sit_de_acogerse  = ""; }
	if (cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres  == null ) { cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres  == null ) { cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres  == null ) { cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls2_num_licencia_de_maternidad_en_efect_se_acogen  == null ) { cfls2_num_licencia_de_maternidad_en_efect_se_acogen  = ""; }
	if (cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres  == null ) { cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres  = ""; }
	if (cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres  == null ) { cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres  = ""; }
	if (cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres  == null ) { cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres  = ""; }
	if (cfls2_num_licencia_de_paternidad_en_sit_de_acogerse  == null ) { cfls2_num_licencia_de_paternidad_en_sit_de_acogerse  = ""; }
	if (cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres  == null ) { cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres  = ""; }
	if (cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres  == null ) { cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres  = ""; }
	if (cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres  == null ) { cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres  = ""; }
	if (cfls2_num_licencia_de_paternidad_en_efect_se_acogen  == null ) { cfls2_num_licencia_de_paternidad_en_efect_se_acogen  = ""; }
	if (cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres  == null ) { cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres  = ""; }
	if (cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres  == null ) { cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres  = ""; }
	if (cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres  == null ) { cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres  = ""; }
	if (cfls2_total_num_licencia_de_maternidad_mujeres  == null ) { cfls2_total_num_licencia_de_maternidad_mujeres  = ""; }
	if (cfls2_total_num_licencia_de_lactancia_mujeres  == null ) { cfls2_total_num_licencia_de_lactancia_mujeres  = ""; }
	if (cfls2_total_num_reduc_jornada_guardar_mujeres  == null ) { cfls2_total_num_reduc_jornada_guardar_mujeres  = ""; }
	if (cfls2_total_num_excedencia_por_cuidado_mujeres  == null ) { cfls2_total_num_excedencia_por_cuidado_mujeres  = ""; }
	if (cfls2_total_num_licencia_de_paternidad_hombres  == null ) { cfls2_total_num_licencia_de_paternidad_hombres  = ""; }
	if (cfls2_total_num_licencia_de_lactancia_hombres  == null ) { cfls2_total_num_licencia_de_lactancia_hombres  = ""; }
	if (cfls2_total_num_reduc_jornada_guardar_hombres  == null ) { cfls2_total_num_reduc_jornada_guardar_hombres  = ""; }
	if (cfls2_total_num_excedencia_por_cuidado_hombres  == null ) { cfls2_total_num_excedencia_por_cuidado_hombres  = ""; }
	if (cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_flex_horario_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_flex_horario_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres  == null ) { cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres  = ""; }
	if (cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres  == null ) { cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_flex_horario_en_sit_de_acogerse_hombres  == null ) { cfls3_num_flex_horario_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres  == null ) { cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres  == null ) { cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres  == null ) { cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_teletrabajo_en_sit_de_acogerse_hombres  == null ) { cfls3_num_teletrabajo_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres  == null ) { cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres  == null ) { cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres  = ""; }
	if (cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres  == null ) { cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres  = ""; }
	if (cfls4_respuesta_siempre  == null ) { cfls4_respuesta_siempre  = ""; }
	if (cfls4_respuesta_aveces  == null ) { cfls4_respuesta_aveces  = ""; }
	if (cfls4_respuesta_nunca  == null ) { cfls4_respuesta_nunca  = ""; }
	if (cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres  == null ) { cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres  = ""; }
	if (cfls5_num_respuesta_en_desacuerdo_mujeres  == null ) { cfls5_num_respuesta_en_desacuerdo_mujeres  = ""; }
	if (cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  == null ) { cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  = ""; }
	if (cfls5_num_respuesta_de_acuerdo_mujeres  == null ) { cfls5_num_respuesta_de_acuerdo_mujeres  = ""; }
	if (cfls5_num_respuesta_totalmente_en_acuerdo_mujeres  == null ) { cfls5_num_respuesta_totalmente_en_acuerdo_mujeres  = ""; }
	if (cfls5_num_respuesta_totalmente_en_desacuerdo_hombres  == null ) { cfls5_num_respuesta_totalmente_en_desacuerdo_hombres  = ""; }
	if (cfls5_num_respuesta_en_desacuerdo_hombres  == null ) { cfls5_num_respuesta_en_desacuerdo_hombres  = ""; }
	if (cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  == null ) { cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  = ""; }
	if (cfls5_num_respuesta_de_acuerdo_hombres  == null ) { cfls5_num_respuesta_de_acuerdo_hombres  = ""; }
	if (cfls5_num_respuesta_totalmente_en_acuerdo_hombres  == null ) { cfls5_num_respuesta_totalmente_en_acuerdo_hombres  = ""; }
	if (cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres  == null ) { cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres  = ""; }
	if (cfls6_pct_respuesta_en_desacuerdo_mujeres  == null ) { cfls6_pct_respuesta_en_desacuerdo_mujeres  = ""; }
	if (cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  == null ) { cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  = ""; }
	if (cfls6_pct_respuesta_de_acuerdo_mujeres  == null ) { cfls6_pct_respuesta_de_acuerdo_mujeres  = ""; }
	if (cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres  == null ) { cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres  = ""; }
	if (cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres  == null ) { cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres  = ""; }
	if (cfls6_pct_respuesta_en_desacuerdo_hombres  == null ) { cfls6_pct_respuesta_en_desacuerdo_hombres  = ""; }
	if (cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  == null ) { cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  = ""; }
	if (cfls6_pct_respuesta_de_acuerdo_hombres  == null ) { cfls6_pct_respuesta_de_acuerdo_hombres  = ""; }
	if (cfls6_pct_respuesta_totalmente_en_acuerdo_hombres  == null ) { cfls6_pct_respuesta_totalmente_en_acuerdo_hombres  = ""; }
	if (cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres  == null ) { cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres  = ""; }
	if (cfls7_num_respuesta_en_desacuerdo_mujeres  == null ) { cfls7_num_respuesta_en_desacuerdo_mujeres  = ""; }
	if (cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  == null ) { cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  = ""; }
	if (cfls7_num_respuesta_de_acuerdo_mujeres  == null ) { cfls7_num_respuesta_de_acuerdo_mujeres  = ""; }
	if (cfls7_num_respuesta_totalmente_en_acuerdo_mujeres  == null ) { cfls7_num_respuesta_totalmente_en_acuerdo_mujeres  = ""; }
	if (cfls7_num_respuesta_totalmente_en_desacuerdo_hombres  == null ) { cfls7_num_respuesta_totalmente_en_desacuerdo_hombres  = ""; }
	if (cfls7_num_respuesta_en_desacuerdo_hombres  == null ) { cfls7_num_respuesta_en_desacuerdo_hombres  = ""; }
	if (cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  == null ) { cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  = ""; }
	if (cfls7_num_respuesta_de_acuerdo_hombres  == null ) { cfls7_num_respuesta_de_acuerdo_hombres  = ""; }
	if (cfls7_num_respuesta_totalmente_en_acuerdo_hombres  == null ) { cfls7_num_respuesta_totalmente_en_acuerdo_hombres  = ""; }
	if (cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres  == null ) { cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres  = ""; }
	if (cfls8_pct_respuesta_en_desacuerdo_mujeres  == null ) { cfls8_pct_respuesta_en_desacuerdo_mujeres  = ""; }
	if (cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  == null ) { cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres  = ""; }
	if (cfls8_pct_respuesta_de_acuerdo_mujeres  == null ) { cfls8_pct_respuesta_de_acuerdo_mujeres  = ""; }
	if (cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres  == null ) { cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres  = ""; }
	if (cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres  == null ) { cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres  = ""; }
	if (cfls8_pct_respuesta_en_desacuerdo_hombres  == null ) { cfls8_pct_respuesta_en_desacuerdo_hombres  = ""; }
	if (cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  == null ) { cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres  = ""; }
	if (cfls8_pct_respuesta_de_acuerdo_hombres  == null ) { cfls8_pct_respuesta_de_acuerdo_hombres  = ""; }
	if (cfls8_pct_respuesta_totalmente_en_acuerdo_hombres  == null ) { cfls8_pct_respuesta_totalmente_en_acuerdo_hombres  = ""; }
	
	if (cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres  == null ) { cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_flex_horario_en_efect_se_acogen_mujeres  == null ) { cfls3_num_flex_horario_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres  == null ) { cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres  == null ) { cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres  == null ) { cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_teletrabajo_en_efect_se_acogen_mujeres  == null ) { cfls3_num_teletrabajo_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres  == null ) { cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres  == null ) { cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres  == null ) { cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres  = ""; }
	if (cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres  == null ) { cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_flex_horario_en_efect_se_acogen_hombres  == null ) { cfls3_num_flex_horario_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres  == null ) { cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres  == null ) { cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres  == null ) { cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_teletrabajo_en_efect_se_acogen_hombres  == null ) { cfls3_num_teletrabajo_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres  == null ) { cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres  == null ) { cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres  = ""; }
	if (cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres  == null ) { cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres  = ""; }
	if (v_nm == null) {v_nm = "";}
	
	session.setAttribute("temp_empresa_resultados_id", v_id);
	session.setAttribute("temp_empresa_resultados_complete", num_complete);
	session.setAttribute("temp_empresa_resultados_total", total);
	session.setAttribute("temp_empresa_resultados_pct_complete", pct_complete);
	session.setAttribute("temp_empresa_resultados_complete_month", complete_month);
	session.setAttribute("temp_empresa_resultados_pct_not_complete", pct_not_complete);
	session.setAttribute("temp_empresa_resultados_not_complete", num_not_complete);
	session.setAttribute("temp_empresa_resultados_ge1", ge1);
	session.setAttribute("temp_empresa_resultados_ge2", ge2);
	session.setAttribute("temp_empresa_resultados_ge3", ge3);
	session.setAttribute("temp_empresa_resultados_ge4", ge4);
	session.setAttribute("temp_empresa_resultados_ge5", ge5);
	session.setAttribute("temp_empresa_resultados_ge6", ge6);
	session.setAttribute("temp_empresa_resultados_ge7", ge7);
	session.setAttribute("temp_empresa_resultados_ge8", ge8);
	session.setAttribute("temp_empresa_resultados_cp1", cp1);
	session.setAttribute("temp_empresa_resultados_cp2", cp2);
	session.setAttribute("temp_empresa_resultados_cp3", cp3);
	session.setAttribute("temp_empresa_resultados_cp4", cp4);
	session.setAttribute("temp_empresa_resultados_cp5", cp5);
	session.setAttribute("temp_empresa_resultados_cp6", cp6);
	session.setAttribute("temp_empresa_resultados_cp7", cp7);
	session.setAttribute("temp_empresa_resultados_cp8", cp8);
	session.setAttribute("temp_empresa_resultados_cp9", cp9);
	session.setAttribute("temp_empresa_resultados_cp10", cp10);
	session.setAttribute("temp_empresa_resultados_rs1", rs1);
	session.setAttribute("temp_empresa_resultados_rs2", rs2);
	session.setAttribute("temp_empresa_resultados_rs3", rs3);
	session.setAttribute("temp_empresa_resultados_rs4", rs4);
	session.setAttribute("temp_empresa_resultados_rs5", rs5);
	session.setAttribute("temp_empresa_resultados_dp1", dp1);
	session.setAttribute("temp_empresa_resultados_dp2", dp2);
	session.setAttribute("temp_empresa_resultados_dp3", dp3);
	session.setAttribute("temp_empresa_resultados_dp4", dp4);
	session.setAttribute("temp_empresa_resultados_dp5", dp5);
	session.setAttribute("temp_empresa_resultados_dp6", dp6);
	session.setAttribute("temp_empresa_resultados_dp7", dp7);
	session.setAttribute("temp_empresa_resultados_dp8", dp8);
	session.setAttribute("temp_empresa_resultados_dp9", dp9);
	session.setAttribute("temp_empresa_resultados_r1", r1);
	session.setAttribute("temp_empresa_resultados_r2", r2);
	session.setAttribute("temp_empresa_resultados_r3", r3);
	session.setAttribute("temp_empresa_resultados_r4", r4);
	session.setAttribute("temp_empresa_resultados_r5", r5);	
	session.setAttribute("temp_empresa_resultados_r6", r6);	
	session.setAttribute("temp_empresa_resultados_pv1", pv1);
	session.setAttribute("temp_empresa_resultados_pv2", pv2);
	session.setAttribute("temp_empresa_resultados_pv3", pv3);
	session.setAttribute("temp_empresa_resultados_pv4", pv4);
	session.setAttribute("temp_empresa_resultados_pv5", pv5);		
	session.setAttribute("temp_empresa_resultados_pv6", pv6);
	
	session.setAttribute("temp_empresa_resultados_dp1_color", dp1_color);
	session.setAttribute("temp_empresa_resultados_dp2_color", dp2_color);
	session.setAttribute("temp_empresa_resultados_dp3_color", dp3_color);
	session.setAttribute("temp_empresa_resultados_dp4_color", dp4_color);
	session.setAttribute("temp_empresa_resultados_dp5_color", dp5_color);
	session.setAttribute("temp_empresa_resultados_dp6_color", dp6_color);
	session.setAttribute("temp_empresa_resultados_dp7_color", dp7_color);
	session.setAttribute("temp_empresa_resultados_dp8_color", dp8_color);
	session.setAttribute("temp_empresa_resultados_dp9_color", dp9_color);
	session.setAttribute("temp_empresa_resultados_r1_color", r1_color);
	session.setAttribute("temp_empresa_resultados_r2_color", r2_color);
	session.setAttribute("temp_empresa_resultados_r3_color", r3_color);
	session.setAttribute("temp_empresa_resultados_r4_color", r4_color);
	session.setAttribute("temp_empresa_resultados_r5_color", r5_color);	
	session.setAttribute("temp_empresa_resultados_r6_color", r6_color);	
	session.setAttribute("temp_empresa_resultados_pv1_color", pv1_color);
	session.setAttribute("temp_empresa_resultados_pv2_color", pv2_color);
	session.setAttribute("temp_empresa_resultados_pv3_color", pv3_color);
	session.setAttribute("temp_empresa_resultados_pv4_color", pv4_color);
	session.setAttribute("temp_empresa_resultados_pv5_color", pv5_color);		
	session.setAttribute("temp_empresa_resultados_pv6_color", pv6_color);
	session.setAttribute("temp_empresa_resultados_rs1_color", rs1_color);
	session.setAttribute("temp_empresa_resultados_rs2_color", rs2_color);
	session.setAttribute("temp_empresa_resultados_rs3_color", rs3_color);
	session.setAttribute("temp_empresa_resultados_rs4_color", rs4_color);
	session.setAttribute("temp_empresa_resultados_rs5_color", rs5_color);	
	session.setAttribute("temp_empresa_resultados_cp1_color", cp1_color);
	session.setAttribute("temp_empresa_resultados_cp2_color", cp2_color);
	session.setAttribute("temp_empresa_resultados_cp3_color", cp3_color);
	session.setAttribute("temp_empresa_resultados_cp4_color", cp4_color);
	session.setAttribute("temp_empresa_resultados_cp5_color", cp5_color);
	session.setAttribute("temp_empresa_resultados_cp6_color", cp6_color);
	session.setAttribute("temp_empresa_resultados_cp7_color", cp7_color);
	session.setAttribute("temp_empresa_resultados_cp8_color", cp8_color);
	session.setAttribute("temp_empresa_resultados_cp9_color", cp9_color);
	session.setAttribute("temp_empresa_resultados_cp10_color", cp10_color);	
	session.setAttribute("temp_empresa_resultados_ge1_color", ge1_color);
	session.setAttribute("temp_empresa_resultados_ge2_color", ge2_color);
	session.setAttribute("temp_empresa_resultados_ge3_color", ge3_color);
	session.setAttribute("temp_empresa_resultados_ge4_color", ge4_color);
	session.setAttribute("temp_empresa_resultados_ge5_color", ge5_color);
	session.setAttribute("temp_empresa_resultados_ge6_color", ge6_color);
	session.setAttribute("temp_empresa_resultados_ge7_color", ge7_color);
	session.setAttribute("temp_empresa_resultados_ge8_color", ge8_color);	

	session.setAttribute("temp_empresa_resultados_pct_complete_empresa_otros_datos", pct_complete_empresa_otros_datos);
	session.setAttribute("temp_empresa_resultados_pct_complete_empresa_cb", pct_complete_empresa_cb);
	session.setAttribute("temp_empresa_resultados_pct_complete_empresa_plantilla", pct_complete_empresa_plantilla);
	session.setAttribute("temp_empresa_resultados_pct_complete_empresa_cl", pct_complete_empresa_cl);
	session.setAttribute("temp_empresa_resultados_pct_complete_empresa_gestion_del_personal", pct_complete_empresa_gestion_del_personal);
	session.setAttribute("temp_empresa_resultados_pct_complete_empresa", pct_complete_empresa);
	session.setAttribute("temp_empresa_resultados_completed", completed);
	session.setAttribute("temp_empresa_resultados_last_mod_tmstmp", last_mod_tmstmp);	
	
	session.setAttribute("temp_empresa_resultados_cfls1", cfls1);
	session.setAttribute("temp_empresa_resultados_cfls2", cfls2);
	session.setAttribute("temp_empresa_resultados_cfls3", cfls3);
	session.setAttribute("temp_empresa_resultados_cfls4", cfls4);
	session.setAttribute("temp_empresa_resultados_cfls5", cfls5);
	session.setAttribute("temp_empresa_resultados_cfls6", cfls6);
	session.setAttribute("temp_empresa_resultados_cfls7", cfls7);
	session.setAttribute("temp_empresa_resultados_cfls8", cfls8);
	
	session.setAttribute("temp_empresa_resultados_cfls1_color", cfls1_color);
	session.setAttribute("temp_empresa_resultados_cfls2_color", cfls2_color);
	session.setAttribute("temp_empresa_resultados_cfls3_color", cfls3_color);
	session.setAttribute("temp_empresa_resultados_cfls4_color", cfls4_color);
	session.setAttribute("temp_empresa_resultados_cfls5_color", cfls5_color);
	session.setAttribute("temp_empresa_resultados_cfls6_color", cfls6_color);
	session.setAttribute("temp_empresa_resultados_cfls7_color", cfls7_color);
	session.setAttribute("temp_empresa_resultados_cfls8_color", cfls8_color);
	
	session.setAttribute("temp_empresa_resultados_ge1_num_jornadas_perdidas", ge1_num_jornadas_perdidas);
	session.setAttribute("temp_empresa_resultados_ge1_num_total_jornadas_anuales_pactadas_convenio", ge1_num_total_jornadas_anuales_pactadas_convenio);
	session.setAttribute("temp_empresa_resultados_ge1_num_jornadas_asistidas", ge1_num_jornadas_asistidas);
	session.setAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_mujeres", ge2_tasa_ausentisom_mujeres);
	session.setAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_hombres", ge2_tasa_ausentisom_hombres);
	session.setAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_mujeres", ge3_tasa_de_cese_de_actividades_mujeres);
	session.setAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_hombres", ge3_tasa_de_cese_de_actividades_hombres);
	session.setAttribute("temp_empresa_resultados_ge4_respuesta_siempre", ge4_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_ge4_respuesta_aveces", ge4_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_ge4_respuesta_nunca", ge4_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_mujeres", ge5_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_mujeres", ge5_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_mujeres", ge5_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_mujeres", ge5_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_hombres", ge5_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_hombres", ge5_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_hombres", ge5_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_hombres", ge5_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres", ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_mujeres", ge6_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_mujeres", ge6_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_mujeres", ge6_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_hombres", ge6_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_hombres", ge6_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_hombres", ge6_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_hombres", ge6_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_mujeres", ge7_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_mujeres", ge7_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_mujeres", ge7_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_mujeres", ge7_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_hombres", ge7_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_hombres", ge7_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_hombres", ge7_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_hombres", ge7_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres", ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_mujeres", ge8_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_mujeres", ge8_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_mujeres", ge8_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_hombres", ge8_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_hombres", ge8_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_hombres", ge8_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_hombres", ge8_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_cp1_total_mujeres", cp1_total_mujeres);
	session.setAttribute("temp_empresa_resultados_cp1_total_hombres", cp1_total_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_direccion_general_o_maximo_cargo_mujeres", cp2_pct_num_direccion_general_o_maximo_cargo_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_directivos_como_gerencias_mujeres", cp2_pct_num_puestos_directivos_como_gerencias_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres", cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres", cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_tecnicos_mujeres", cp2_pct_num_puestos_tecnicos_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_administrativos_mujeres", cp2_pct_num_puestos_administrativos_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_auxiliares_mujeres", cp2_pct_num_puestos_auxiliares_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_operarios_mujeres", cp2_pct_num_puestos_operarios_mujeres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_direccion_general_o_maximo_cargo_hombres", cp2_pct_num_direccion_general_o_maximo_cargo_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_directivos_como_gerencias_hombres", cp2_pct_num_puestos_directivos_como_gerencias_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres", cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres", cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_tecnicos_hombres", cp2_pct_num_puestos_tecnicos_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_administrativos_hombres", cp2_pct_num_puestos_administrativos_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_auxiliares_hombres", cp2_pct_num_puestos_auxiliares_hombres);
	session.setAttribute("temp_empresa_resultados_cp2_pct_num_puestos_operarios_hombres", cp2_pct_num_puestos_operarios_hombres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_mujeres", cp3_pct_num_direccion_general_o_maximo_cargo_mujeres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_mujeres", cp3_pct_num_puestos_directivos_como_gerencias_mujeres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres", cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres", cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_hombres", cp3_pct_num_direccion_general_o_maximo_cargo_hombres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_hombres", cp3_pct_num_puestos_directivos_como_gerencias_hombres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres", cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres);
	session.setAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres", cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres);
	session.setAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_mujeres", cp4_num_direccion_general_o_maximo_cargo_mujeres);
	session.setAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_mujeres", cp4_num_puestos_directivos_como_gerencias_mujeres);
	session.setAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres", cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres);
	session.setAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres", cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres);
	session.setAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_hombres", cp4_num_direccion_general_o_maximo_cargo_hombres);
	session.setAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_hombres", cp4_num_puestos_directivos_como_gerencias_hombres);
	session.setAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres", cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres);
	session.setAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres", cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres);
	session.setAttribute("temp_empresa_resultados_cp4_pct_mujeres", cp4_pct_mujeres);
	session.setAttribute("temp_empresa_resultados_cp4_pct_hombres", cp4_pct_hombres);
	session.setAttribute("temp_empresa_resultados_cp5_pct_mujeres", cp5_pct_mujeres);
	session.setAttribute("temp_empresa_resultados_cp5_pct_hombres", cp5_pct_hombres);
	session.setAttribute("temp_empresa_resultados_cp6_mujeres", cp6_mujeres);
	session.setAttribute("temp_empresa_resultados_cp6_hombres", cp6_hombres);
	session.setAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres", cp7_num_jornada_completa_contrato_indefinido_mujeres);
	session.setAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres", cp7_num_jornada_partial_contrato_indefinido_mujeres);
	session.setAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres", cp7_num_jornada_completa_contrato_indefinido_hombres);
	session.setAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres", cp7_num_jornada_partial_contrato_indefinido_hombres);
	session.setAttribute("temp_empresa_resultados_cp8_mujeres", cp8_mujeres);
	session.setAttribute("temp_empresa_resultados_cp8_hombres", cp8_hombres);
	session.setAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_indefinido_mujeres", cp9_num_jornada_completa_contrato_indefinido_mujeres);
	session.setAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_indefinido_hombres", cp9_num_jornada_completa_contrato_indefinido_hombres);
	session.setAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres", cp9_num_jornada_completa_contrato_temporal_mujeres);
	session.setAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres", cp9_num_jornada_completa_contrato_temporal_hombres);
	session.setAttribute("temp_empresa_resultados_cp10_pct_mujeres", cp10_pct_mujeres);
	session.setAttribute("temp_empresa_resultados_cp10_pct_hombres", cp10_pct_hombres);
	session.setAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres", rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres);
	session.setAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres", rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres);
	session.setAttribute("temp_empresa_resultados_rs2_mujeres", rs2_mujeres);
	session.setAttribute("temp_empresa_resultados_rs2_hombres", rs2_hombres);
	session.setAttribute("temp_empresa_resultados_rs3_respuesta_siempre", rs3_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_rs3_respuesta_aveces", rs3_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_rs3_respuesta_nunca", rs3_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_mujeres", rs4_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_mujeres", rs4_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_mujeres", rs4_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_mujeres", rs4_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_hombres", rs4_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_hombres", rs4_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_hombres", rs4_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_hombres", rs4_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres", rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_mujeres", rs5_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_mujeres", rs5_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_mujeres", rs5_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_hombres", rs5_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_hombres", rs5_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_hombres", rs5_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_hombres", rs5_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres", dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres);
	session.setAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres", dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres);
	session.setAttribute("temp_empresa_resultados_dp2_pct_mujeres", dp2_pct_mujeres);
	session.setAttribute("temp_empresa_resultados_dp2_pct_hombres", dp2_pct_hombres);
	session.setAttribute("temp_empresa_resultados_dp3_respuesta_siempre", dp3_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_dp3_respuesta_aveces", dp3_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_dp3_respuesta_nunca", dp3_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_mujeres", dp4_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_mujeres", dp4_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_mujeres", dp4_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_mujeres", dp4_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_hombres", dp4_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_hombres", dp4_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_hombres", dp4_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_hombres", dp4_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres", dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_mujeres", dp5_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_mujeres", dp5_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_mujeres", dp5_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_hombres", dp5_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_hombres", dp5_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_hombres", dp5_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_hombres", dp5_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp6_mujeres", dp6_mujeres);
	session.setAttribute("temp_empresa_resultados_dp6_hombres", dp6_hombres);
	session.setAttribute("temp_empresa_resultados_dp7_respuesta_siempre", dp7_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_dp7_respuesta_aveces", dp7_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_dp7_respuesta_nunca", dp7_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_mujeres", dp8_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_mujeres", dp8_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_mujeres", dp8_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_mujeres", dp8_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_hombres", dp8_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_hombres", dp8_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_hombres", dp8_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_hombres", dp8_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres", dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_mujeres", dp9_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_mujeres", dp9_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_mujeres", dp9_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_hombres", dp9_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_hombres", dp9_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_hombres", dp9_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_hombres", dp9_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_mujeres", r1_num_total_de_la_plantilla_mujeres);
	session.setAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_hombres", r1_num_total_de_la_plantilla_hombres);
	session.setAttribute("temp_empresa_resultados_r2_average_salario_mujeres", r2_average_salario_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_average_salario_hombres", r2_average_salario_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_mujeres", r2_salario_direccion_general_o_maximo_cargo_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_mujeres", r2_salario_puestos_directivos_como_gerencias_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres);
	session.setAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_hombres", r2_salario_direccion_general_o_maximo_cargo_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_hombres", r2_salario_puestos_directivos_como_gerencias_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres);
	session.setAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres", r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres);
	session.setAttribute("temp_empresa_resultados_r3_average_salario_mujeres", r3_average_salario_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_average_salario_hombres", r3_average_salario_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_mujeres", r3_salario_puestos_tecnicos_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_mujeres", r3_salario_puestos_administrativos_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_mujeres", r3_salario_puestos_auxiliares_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_mujeres", r3_salario_puestos_operarios_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_a_mujeres", r3_salario_puestos_a_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_b_mujeres", r3_salario_puestos_b_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_c_mujeres", r3_salario_puestos_c_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_d_mujeres", r3_salario_puestos_d_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_e_mujeres", r3_salario_puestos_e_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_f_mujeres", r3_salario_puestos_f_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_g_mujeres", r3_salario_puestos_g_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_h_mujeres", r3_salario_puestos_h_mujeres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_hombres", r3_salario_puestos_tecnicos_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_hombres", r3_salario_puestos_administrativos_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_hombres", r3_salario_puestos_auxiliares_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_hombres", r3_salario_puestos_operarios_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_a_hombres", r3_salario_puestos_a_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_b_hombres", r3_salario_puestos_b_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_c_hombres", r3_salario_puestos_c_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_d_hombres", r3_salario_puestos_d_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_e_hombres", r3_salario_puestos_e_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_f_hombres", r3_salario_puestos_f_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_g_hombres", r3_salario_puestos_g_hombres);
	session.setAttribute("temp_empresa_resultados_r3_salario_puestos_h_hombres", r3_salario_puestos_h_hombres);
	session.setAttribute("temp_empresa_resultados_r4_respuesta_siempre", r4_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_r4_respuesta_aveces", r4_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_r4_respuesta_nunca", r4_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_mujeres", r5_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_mujeres", r5_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_mujeres", r5_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_mujeres", r5_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_hombres", r5_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_hombres", r5_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_hombres", r5_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_hombres", r5_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_mujeres", r6_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_mujeres", r6_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_mujeres", r6_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_mujeres", r6_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_hombres", r6_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_hombres", r6_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_hombres", r6_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_hombres", r6_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_mujeres", pv1_num_quejas_atendidas_acoso_sexual_mujeres);
	session.setAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_mujeres", pv1_num_quejas_recibidas_acoso_sexual_mujeres);
	session.setAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_hombres", pv1_num_quejas_atendidas_acoso_sexual_hombres);
	session.setAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_hombres", pv1_num_quejas_recibidas_acoso_sexual_hombres);
	session.setAttribute("temp_empresa_resultados_pv2_respuesta_siempre", pv2_respuesta_siempre);
	session.setAttribute("temp_empresa_resultados_pv2_respuesta_aveces", pv2_respuesta_aveces);
	session.setAttribute("temp_empresa_resultados_pv2_respuesta_nunca", pv2_respuesta_nunca);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_mujeres", pv3_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_mujeres", pv3_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_mujeres", pv3_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_mujeres", pv3_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_hombres", pv3_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_hombres", pv3_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_hombres", pv3_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_hombres", pv3_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres", pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_mujeres", pv4_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_mujeres", pv4_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_mujeres", pv4_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_hombres", pv4_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_hombres", pv4_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_hombres", pv4_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_hombres", pv4_pct_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_mujeres", pv5_num_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_mujeres", pv5_num_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_mujeres", pv5_num_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_mujeres", pv5_num_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_hombres", pv5_num_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_hombres", pv5_num_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_hombres", pv5_num_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_hombres", pv5_num_respuesta_totalmente_en_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres", pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_mujeres", pv6_pct_respuesta_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_mujeres", pv6_pct_respuesta_de_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_mujeres", pv6_pct_respuesta_totalmente_en_acuerdo_mujeres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_hombres", pv6_pct_respuesta_totalmente_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_hombres", pv6_pct_respuesta_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_hombres", pv6_pct_respuesta_de_acuerdo_hombres);
	session.setAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_hombres", pv6_pct_respuesta_totalmente_en_acuerdo_hombres);
	
	session.setAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_sit_de_acogerse", cfls1_num_licencia_de_paternidad_en_sit_de_acogerse );
	session.setAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_efect_se_acogen", cfls1_num_licencia_de_paternidad_en_efect_se_acogen );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_sit_de_acogerse", cfls2_num_licencia_de_maternidad_en_sit_de_acogerse );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres", cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres", cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres", cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_efect_se_acogen", cfls2_num_licencia_de_maternidad_en_efect_se_acogen );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres", cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres", cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres", cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_sit_de_acogerse", cfls2_num_licencia_de_paternidad_en_sit_de_acogerse );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres", cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres", cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres", cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_efect_se_acogen", cfls2_num_licencia_de_paternidad_en_efect_se_acogen );
	session.setAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres", cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres", cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres", cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_licencia_de_maternidad_mujeres", cfls2_total_num_licencia_de_maternidad_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_licencia_de_lactancia_mujeres", cfls2_total_num_licencia_de_lactancia_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_reduc_jornada_guardar_mujeres", cfls2_total_num_reduc_jornada_guardar_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_excedencia_por_cuidado_mujeres", cfls2_total_num_excedencia_por_cuidado_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_licencia_de_paternidad_hombres", cfls2_total_num_licencia_de_paternidad_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_licencia_de_lactancia_hombres", cfls2_total_num_licencia_de_lactancia_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_reduc_jornada_guardar_hombres", cfls2_total_num_reduc_jornada_guardar_hombres );
	session.setAttribute("temp_empresa_resultados_cfls2_total_num_excedencia_por_cuidado_hombres", cfls2_total_num_excedencia_por_cuidado_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres", cfls3_num_flex_entrada_salida_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_mujeres", cfls3_num_flex_horario_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres", cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres", cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres", cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres", cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres", cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres", cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres", cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres", cfls3_num_flex_entrada_salida_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_hombres", cfls3_num_flex_horario_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres", cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres", cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres", cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_hombres", cfls3_num_teletrabajo_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres", cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres", cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres", cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres );
	session.setAttribute("temp_empresa_resultados_cfls4_respuesta_siempre", cfls4_respuesta_siempre );
	session.setAttribute("temp_empresa_resultados_cfls4_respuesta_aveces", cfls4_respuesta_aveces );
	session.setAttribute("temp_empresa_resultados_cfls4_respuesta_nunca", cfls4_respuesta_nunca );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres", cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_mujeres", cfls5_num_respuesta_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_mujeres", cfls5_num_respuesta_de_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_mujeres", cfls5_num_respuesta_totalmente_en_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_hombres", cfls5_num_respuesta_totalmente_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_hombres", cfls5_num_respuesta_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_hombres", cfls5_num_respuesta_de_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_hombres", cfls5_num_respuesta_totalmente_en_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres", cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_mujeres", cfls6_pct_respuesta_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_mujeres", cfls6_pct_respuesta_de_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres", cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres", cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_hombres", cfls6_pct_respuesta_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_hombres", cfls6_pct_respuesta_de_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_hombres", cfls6_pct_respuesta_totalmente_en_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres", cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_mujeres", cfls7_num_respuesta_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_mujeres", cfls7_num_respuesta_de_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_mujeres", cfls7_num_respuesta_totalmente_en_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_hombres", cfls7_num_respuesta_totalmente_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_hombres", cfls7_num_respuesta_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_hombres", cfls7_num_respuesta_de_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_hombres", cfls7_num_respuesta_totalmente_en_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres", cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_mujeres", cfls8_pct_respuesta_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres", cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_mujeres", cfls8_pct_respuesta_de_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres", cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres", cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_hombres", cfls8_pct_respuesta_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres", cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_hombres", cfls8_pct_respuesta_de_acuerdo_hombres );
	session.setAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_hombres", cfls8_pct_respuesta_totalmente_en_acuerdo_hombres );
	
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres", cfls3_num_flex_entrada_salida_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_mujeres", cfls3_num_flex_horario_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres", cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres", cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres", cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_mujeres", cfls3_num_teletrabajo_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres", cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres", cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres", cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres", cfls3_num_flex_entrada_salida_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_hombres", cfls3_num_flex_horario_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres", cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres", cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres", cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_hombres", cfls3_num_teletrabajo_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres", cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres", cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres", cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres );
	session.setAttribute("temp_empresa_resultados_nm", v_nm);
%>
	
	<!-- !!!!!!!!!!  VARIABLES DE JSP COMENTADAS !!!!!!!!!!!!!! -->	
	<section id="contenido-resultados" class="borde-superior ">
		<header>
			<div class="bc-orange text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Datos de la empresa / organización: <%= session.getAttribute("temp_empresa_resultados_nm").toString() %> </h3>
					 
					<h1 class="text-white">RESULTADOS</h1>
				</div>
			</div>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h4><i class="fa fa-external-link-square text-white"></i> <a class="a-white" href="/indica/es/main.jsp?target=resultados_otros_datos"> Siga este	enlace para ver los resultados del formulario de valoración de la empresa</a></h4>
				</div>
			</div>
		</header>
		<!-- Cabezote gris -->
		<div id="cabezote-resultados" class="bc-gray padding-medium">
			<div class="container">
				<div class="col-md-6">
					<!-- <h4 class="resaltado">El autodiagnositico fue recibido exitosamente el día: xx de xx</h4> -->
					
					<h4 class="resaltado">
					<%
						if (session.getAttribute("temp_empresa_resultados_completed").toString().equals("N")) {
					%>
							Aún no hemos recibido el autodiagnóstico de la empesa
					<%
						} else if (session.getAttribute("temp_empresa_resultados_pct_complete_empresa").toString().equals("100") && session.getAttribute("temp_empresa_resultados_completed").toString().equals("Y")) {
					%>						
							El autodianóstico fue recibido exitosamente el día <%= session.getAttribute("temp_empresa_resultados_last_mod_tmstmp").toString() %> 
					<%
						}

					%> 
					</h4>	
				</div>
				<ul>  
					<li>Caracterización básica - 
						 <%= session.getAttribute("temp_empresa_resultados_pct_complete_empresa_cb").toString() %>  
					</li>
					<li>Plantilla - 
						 <%= session.getAttribute("temp_empresa_resultados_pct_complete_empresa_plantilla").toString() %>  
					</li>
					<li>Condiciones laborales - 
						 <%= session.getAttribute("temp_empresa_resultados_pct_complete_empresa_cl").toString() %> 
					</li>
					<li>Gestión del personal - 
						 <%= session.getAttribute("temp_empresa_resultados_pct_complete_empresa_gestion_del_personal").toString() %>
					</li>
					<li>Otros datos - 
						 <%= session.getAttribute("temp_empresa_resultados_pct_complete_empresa_otros_datos").toString() %> 
					</li>
				</ul>
			</div>
		</div> <!-- fin de cabezote gris -->
	<div class="container resultados">
		<h6 class="text-center separador-top separador-bottom">A continuación encontrará el resumen de los indicadores.</h6>
		<!-- INICIA PANEL AMBITOS -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono1 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-violeta-acordeon">
						</div>
					</div>
					<h2>ÁMBITOS GENERALES</h2>
				</div>
			</div>
			<div id="contenido-ambitos" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">GE</h1>
						<p class="bloque-centrado">Comprende, por un lado, el conjunto de información relacionada con la tipología de empresas u organizaciones en función de distintas variables (las más prioritarias son país, tipo de organización, sector de actividad, tamaño). Por otro lado, información sobre comunicación interna, externa y productividad en empresas u organizaciones (ausentismo y rotación).</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-ge1" aria-controls="tab-ge1" role="tab" data-toggle="tab">GE1</a></li>
									<li role="presentation"><a href="#tab-ge2" aria-controls="tab-ge2" role="tab" data-toggle="tab">GE2</a></li>
									<li role="presentation"><a href="#tab-ge3" aria-controls="tab-ge3" role="tab" data-toggle="tab">GE3</a></li>
									<li role="presentation"><a href="#tab-ge4" aria-controls="tab-ge4" role="tab" data-toggle="tab">GE4</a></li>
									<li role="presentation"><a href="#tab-ge5" aria-controls="tab-ge5" role="tab" data-toggle="tab">GE5</a></li>
									<li role="presentation"><a href="#tab-ge6" aria-controls="tab-ge6" role="tab" data-toggle="tab">GE6</a></li>
									<li role="presentation"><a href="#tab-ge7" aria-controls="tab-ge7" role="tab" data-toggle="tab">GE7</a></li>
									<li role="presentation"><a href="#tab-ge8" aria-controls="tab-ge8" role="tab" data-toggle="tab">GE8</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! GE 1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-ge1">
										<!-- !!!!!! GE 1 !!!!!!! --> 
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Tasa de <span class="text-orange">ausentismo total</span> en la empresa / organización</h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Medir los  posibles impactos positivos en la productividad gracias a la igualdad de género, reflejados en la igualación de los índices de ausentismo laboral de mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= ge1 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= ge1_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-ge1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="ge1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div>
									<!-- !!!!!! fin de GE 1 !!!!!!! -->
									<!-- !!!!!! GE2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-ge2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Equilibrio en las <span class="text-orange">tasas de ausentismo</span> de mujeres y hombres</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Observar los cambios en la productividad en relación con la reducción de ausentismo laboral de mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= ge2 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa"  src="/indica/assets/images/<%= ge2_color %>_mini.png">
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-ge2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge2-ind" class="grafica-velocimetro"></div>
										</div>
									</div>
									<!-- !!!!!! fin de GE2 !!!!!!! --> 
									<!-- !!!!!! GE3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-ge3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Equilibrio en las <span class="text-orange">tasas de cese de actividad</span> de la empresa/organización de las mujeres y los hombres (índice de rotación)</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Dar seguimiento a posibles impactos positivos en la productividad gracias a la igualdad de género, reflejados en la igualación de los índices de rotación (por cese) mujeres y hombres.</div>
											<h4 class=" col-xs-12"><span class="badge"><%= ge3 %><img class="indicador-calificacion" alt="Evaluación positiva o negativa" <img src="/indica/assets/images/<%= ge3_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-ge3" class="grafica-barras "></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="ge3-ind" class="grafica-velocimetro"></div>
										</div>
										<!-- !!!!!! fin de GE3 !!!!!!! -->
									</div>
									<!-- !!!!!! GE4 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-ge4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Uso de <span class="text-orange">comunicación a favor de la igualdad</span> y no discriminación entre mujeres y hombres (comunicación incluyente)</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Conocer si la comunicación interna y externa promueve la igualdad de género.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= ge4 %> %
												<img class="indicador-calificacion" alt="Evaluación positiva o negativa" img src="/indica/assets/images/<%= ge4_color %>_mini.png">
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-ge4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge4-ind" class="grafica-velocimetro"></div>
										</div>
										<!-- !!!!!! fin de GE4 !!!!!!! -->

									</div>
									<!-- !!!!!! GE5 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-ge5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Valoración / percepción de la plantilla sobre si la <span class="text-orange">comunicación interna</span></b> contempla criterios de igualdad y no discriminación por razón de sexo</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a cómo consideran la medida en que las empresas u organizaciones contribuye a la igualdad de género en la comunicación interna de las empresas u organizaciones.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= ge5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" img src="/indica/assets/images/<%= ge5_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-ge5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de GE5 !!!!!!! -->
									<!-- !!!!!! GE6 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-ge6">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equilibrio en la Valoración/percepción de la mujeres y hombres sobre si la <span class="text-orange">comunicación interna</span> contempla criterios de igualdad y no discriminación por razón de sexo</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si la comunicación interna contempla criterios de igualdad y no discriminación por razón de sexo</div>
											<h4 class=" col-xs-12 ">
												<small class="badge"><%= ge6 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= ge6_color %>_mini.png">
											</small></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-ge6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge6-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de GE6 !!!!!!! -->
									<!-- !!!!!! GE7 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-ge7">
										<div class="panel panel-heading col-xs-12" >
											<h4 class="col-xs-12">Valoración/percepción de la plantilla sobre si la <span class="text-orange">comunicación externa</span> contempla criterios de igualdad y no discriminación por razón de sexo.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Determinar el grado de valoración de las personas con respecto a cómo consideran la medida en que las empresas u organizaciones contribuye a la igualdad de género en la comunicación interna de las empresas u organizaciones.</div>
											<h4 class="col-xs-12">
												<span class="badge"><%= ge7 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= ge7_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-ge7" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge7-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de GE7 !!!!!!! -->
									<!-- !!!!!! GE8 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-ge8">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equilibrio en la Valoración/percepción de la mujeres y hombres sobre si la <span class="text-orange">comunicación externa</span> contempla criterios de igualdad y no discriminación por razón de sexo.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Cuantificar el grado de grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si la comunicación externa contempla criterios de igualdad y no discriminación por razón de sexo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= ge8 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= ge8_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-ge8" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="ge8-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de GE8 !!!!!!! -->
								</div> <!-- fin de tabcontent -->
							</div> <!-- fin de marco gris -->
						</div> <!-- fin de tabpanel -->
					</section>	

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-ge-1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-ge-2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-6" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-7" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-ge-8" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
					<div class="col-xs-12 separador-bottom ">
						<div class="blockD ">
							<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
								<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
								<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
								<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
							</ul>
						</div>
					</div>
				</div> <!-- fin de panel body -->
			</div> <!-- fin de contenido ambitos -->
		</div> <!-- fin de panel ambitos-->
		<!-- INICIA PANEL Descripcion personal -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono2 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-gris-acordeon">
						</div>
					</div>
					<h2>DESCRIPCIÓN DEL PERSONAL</h2>
				</div>
			</div>
			<div id="contenido-personal" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">CP</h1>
						<p class="bloque-centrado">Integra la información básica orientada a fotografiar la realidad de las personals de las empresas u organizaciones desde la perspectiva de la presencia/ausencia de las mujeres en relación con la de los hombres respecto a determinadas variables de descripción (*cargos de responsabilidad/otros puestos de personal; *departamentos que ocupan; integrantes en el Consejo de dirección).</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-cp1" aria-controls="tab-cp1" role="tab" data-toggle="tab">CP1</a></li>
									<li role="presentation"><a href="#tab-cp2" aria-controls="tab-cp2" role="tab" data-toggle="tab">CP2</a></li>
									<li role="presentation"><a href="#tab-cp3" aria-controls="tab-cp3" role="tab" data-toggle="tab">CP3</a></li>
									<li role="presentation"><a href="#tab-cp4" aria-controls="tab-cp4" role="tab" data-toggle="tab">CP4</a></li>
									<li role="presentation"><a href="#tab-cp5" aria-controls="tab-cp5" role="tab" data-toggle="tab">CP5</a></li>
									<li role="presentation"><a href="#tab-cp6" aria-controls="tab-cp6" role="tab" data-toggle="tab">CP6</a></li>
									<li role="presentation"><a href="#tab-cp7" aria-controls="tab-cp7" role="tab" data-toggle="tab">CP7</a></li>
									<li role="presentation"><a href="#tab-cp8" aria-controls="tab-cp8" role="tab" data-toggle="tab">CP8</a></li>
									<li role="presentation"><a href="#tab-cp9" aria-controls="tab-cp9" role="tab" data-toggle="tab">CP9</a></li>
									<li role="presentation"><a href="#tab-cp10" aria-controls="tab-cp10" role="tab" data-toggle="tab">CP10</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! cp1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-cp1">
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Equilibrio de <span class="text-orange">presencia femenina y masculina</span> en la plantilla.</h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Cuantificar la participación de las mujeres y los hombres en el conjunto del personal</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp1 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp1_color %>_mini.png"> 
											</span>
										</h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-cp1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="cp1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div><!-- !!!!!! fin de cp1 !!!!!!! -->
									<!-- !!!!!! cp2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-cp2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Presencia equilibrada de mujeres y hombres en cada tipo de puesto de la empresa/organización <span class="text-orange">(ausencia de segregación horizontal)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Establecer el grado en que las empresas u organizaciones cuentan con presencia equilibrada y no segregada horizontalmente en el conjunto en cada uno de los niveles funcionales (mínimo: cargos de responsabilidad, puestos técnicos, administrativos, auxiliares y operarios)</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp2 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp2_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-cp2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp2-ind" class="grafica-velocimetro"></div>
										</div>
									</div>
									<!-- !!!!!! fin de cp2 !!!!!!! --> 
									<!-- !!!!!! cp3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Presencia equilibrada de mujeres en cada uno de los cargos de responsabilidad <span class="text-orange">(índice de segregación en los cargos de responsabilidad)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Determinar el grado en que las empresas u organizaciones cuentan con presencia equilibrada y no segregada verticalmente en el conjunto de cargos de responsabilidad (índice de segregación vertical)</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp3 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp3_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cp3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="cp3-ind" class="grafica-velocimetro"></div>
										</div><!-- !!!!!! fin de cp3 !!!!!!! -->
									</div><!-- !!!!!! cp4 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Brecha en la presencia de mujeres y hombres <span class="text-orange">en los cargos de responsabilidad</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span> Establecer cuál es la brecha en la presencia de mujeres y hombres en los cargos de responsabilidad</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp4 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp4_color %>_mini.png"> 
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cp4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp4 !!!!!!! -->
									<!-- !!!!!! cp5 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Brecha en la presencia de mujeres y hombres <span class="text-orange">en los consejos de dirección</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Observar si existe brecha de género en la presencia de mujeres y hombres en los consejos de dirección/administración/juntas directivas.</div>
											<h4 class=" col-xs-12"><span class="badge"><%= cp5 %> %
												<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp5_color %>_mini.png">
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cp5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp5 !!!!!!! -->
									<!-- !!!!!! cp6 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-cp6">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Tasa relativa de éxito <span class="text-orange">para ocupar cargos de responsabilidad</span> (mujeres/hombres)</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Conocer si existen brechas de género entre los cargos de responsabilidad y otros puestos ( este indicador podría servir también para valorar si existe brecha de género).</div>
											<h4 class=" col-xs-12 ">
												<span class="badge"><%= cp6 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp6_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cp6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp6-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp6 !!!!!!! -->
									<!-- !!!!!! cp7 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp7">
										<div class="panel panel-heading col-xs-12" >
											<h4 class="col-xs-12">Equilibrio entre la tasa relativa de presencia de las mujeres con contrato indefinido y de los hombres con contrato indefinido <span class="text-orange">(Equidad en la contratación indefinida)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Medir el grado en que se cuenta con equidad en relación a la contratación indefinida o mismo nivel de estabilidad o igualdad de oportunidades para mujeres y hombres en la contratación indefinida.</div>
											<h4 class="col-xs-12">
												<span class="badge"><%= cp7 %> 
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp7_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-cp7" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp7-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp7 !!!!!!! -->
									<!-- !!!!!! cp8 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp8">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Brecha de contratación indefinida <span class="text-orange">(Equidad en la contratación indefinida)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Observar si existe brecha de género en la presencia de mujeres y hombres en los puestos de contratación indefinida</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp8 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp8_color %>_mini.png"> 
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-cp8" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp8-ind" class="grafica-velocimetro"></div>
										</div>
									</div>
									<!-- !!!!!! fin de cp8 !!!!!!! -->
									<!-- !!!!!! cp9 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-cp9">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equilibrio entre la tasa relativa de presencia de las mujeres con contrato a tiempo completo y de los hombres con contrato a tiempo completo <span class="text-orange">(Equidad en la contratación a tiempo completo)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que se cuenta con equidad en relación a la jornada de trabajo Misma tipología de jornada o Igualdad de oportunidades para mujeres y hombres la jornada de trabajo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp9 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp9_color %>_mini.png"> 
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-7 ">
											<div id="gr-cp9" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 ">
											<div id="cp9-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp9 !!!!!!! -->
									<!-- !!!!!! cp10 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cp10">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Brecha de contratación a tiempo completo <span class="text-orange">(Equidad en la contratación a tiempo completo)</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Observar si existe brecha de género en la presencia de mujeres y hombres en los puestos de contratación a tiempo completo</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cp10 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cp10_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-cp10" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cp10-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cp10 !!!!!!! -->
								</div> <!-- fin de tabcontent -->
							</div>
						</div> <!-- fin de tabpanel -->
					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-cp1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-cp2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp6" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp7" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp8" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp9" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cp10" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
					<div class="col-xs-12 separador-bottom ">
						<div class="blockD ">
							<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
								<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
								<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
								<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
							</ul>
						</div>
					</div>
				</div> <!-- fin de panel body -->
			</div> <!-- fin de contenido ambitos -->
		</div> <!-- fin de panel descripcion personal-->
		<!-- INICIA PANEL RECLUTAMIENTO Y SELECCION -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono3 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-violeta-acordeon">
						</div>
					</div>
					<h2>RECLUTAMIENTO, SELECCIÓN Y CONTRATACIÓN</h2>
				</div>
			</div>
			<div id="contenido-rsc" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">RS</h1>
						<p class="bloque-centrado">Agrupa información que posibilita la evaluación de los procesos de reclutamiento y selección y de contratación de las empresas u organizaciones con una perspectiva de género, valorando si se aplican de tal manera que no producen brechas de género.</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-rs1" aria-controls="tab-rs1" role="tab" data-toggle="tab">RS1</a></li>
									<li role="presentation"><a href="#tab-rs2" aria-controls="tab-rs2" role="tab" data-toggle="tab">RS2</a></li>
									<li role="presentation"><a href="#tab-rs3" aria-controls="tab-rs3" role="tab" data-toggle="tab">RS3</a></li>
									<li role="presentation"><a href="#tab-rs4" aria-controls="tab-rs4" role="tab" data-toggle="tab">RS4</a></li>
									<li role="presentation"><a href="#tab-rs5" aria-controls="tab-rs5" role="tab" data-toggle="tab">RS5</a></li>
								</ul>
							</div>
							<!-- Tab panes -->							
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! rs1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-rs1">
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Equilibrio de presencia femenina y masculina al tomar en consideración <span class="text-orange">candidaturas o postulaciones </span>en procesos de reclutamiento y selección.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que se cuenta o se toma en consideración la presencia equilibrada de mujeres y hombres en las candidaturas o postulaciones que han formado parte de procesos de Reclutamiento y selección</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= rs1 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" <img src="/indica/assets/images/<%= rs1_color %>_mini.png"> 
											</span>
										</h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-rs1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="rs1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div><!-- !!!!!! fin de rs1 !!!!!!! -->
									<!-- !!!!!! rs2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-rs2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Equilibrio entre las <span class="text-orange">oportunidades de éxito de contratación de las mujeres y hombres</span> participantes en procesos de selección y contratación</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Visibilizar el grado de éxito de las mujeres candidatas para obtener una contratación y compararla con el grado de éxito de los hombres candidatos para obtener una contratación</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= rs2 %> 
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= rs2_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-rs2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="rs2-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de rs2 !!!!!!! --> 
									<!-- !!!!!! rs3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-rs3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Ausencia/Presencia de la perspectiva de género y a favor de la igualdad en los procesos de <span class="text-orange">reclutamiento, selección y de contratación</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Conocer si los procesos de reclutamiento y selección y de contratación promueven la igualdad de género y la no discriminación por razón de sexo</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= rs3 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= rs3_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-rs3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="rs3-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de rs3 !!!!!!! -->
									<!-- !!!!!! rs4 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-rs4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de selección y contratación</span> contemplan criterios de igualdad y no discriminación por razón de sexo.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a si los procesos de reclutamiento y selección y de contratación son incluyentes y velan por la igualdad de oportunidades entre mujeres y hombres</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= rs4 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= rs4_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-rs4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="rs4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de rs4 !!!!!!! -->
									<!-- !!!!!! rs5 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-rs5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equilibrio en la valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de selección y contratación</span> contemplan criterios de igualdad y no discriminación por razón de sexo.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Medir los  posibles impactos positivos en la productividad gracias a la igualdad de género, reflejados en la igualación de los índices de ausentismo laboral de mujeres y hombres </div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= rs5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= rs5_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-rs5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="rs5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de rs5 !!!!!!! -->
								</div> <!-- fin de tabcontent -->
							</div>
						</div> <!-- fin de tabpanel -->
					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-rs1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-rs2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-rs3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-rs4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-rs5" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
				</div> <!-- fin de panel body -->
				<div class="col-xs-12 separador-bottom ">
					<div class="blockD ">
						<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
							<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
							<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
							<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
						</ul>
					</div>
				</div>
			</div> <!-- fin de contenido rsc -->

		</div> <!-- fin de panel RSC-->
		<!-- INICIA PANEL DESARROLLO PROFESIONAL -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono4 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-gris-acordeon">
						</div>
					</div>
					<h2>DESARROLLO PROFESIONAL Y DESEMPEÑO</h2>
				</div>
			</div>
			<div id="contenido-desarrollo-profesional" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">DP</h1>
						<p class="bloque-centrado">Ofrece información sobre si los procesos de promoción profesional de las empresas u organizaciones se realizan en igualdad de condiciones para mujeres y hombres o, si por el contrario, tienen sesgos de género que podrían favorecer a un sexo en detrimento del otro. También comprende información para valorar si participan mujeres y hombres por igual en la formación continua que ofrecen las empresas u organizaciones (formación interna y externa). Fundamental para la promoción y el desarrollo profesional.</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-dp1" aria-controls="tab-dp1" role="tab" data-toggle="tab">DP1</a></li>
									<li role="presentation"><a href="#tab-dp2" aria-controls="tab-dp2" role="tab" data-toggle="tab">DP2</a></li>
									<li role="presentation"><a href="#tab-dp3" aria-controls="tab-dp3" role="tab" data-toggle="tab">DP3</a></li>
									<li role="presentation"><a href="#tab-dp4" aria-controls="tab-dp4" role="tab" data-toggle="tab">DP4</a></li>
									<li role="presentation"><a href="#tab-dp5" aria-controls="tab-dp5" role="tab" data-toggle="tab">DP5</a></li>
									<li role="presentation"><a href="#tab-dp6" aria-controls="tab-dp6" role="tab" data-toggle="tab">DP6</a></li>
									<li role="presentation"><a href="#tab-dp7" aria-controls="tab-dp7" role="tab" data-toggle="tab">DP7</a></li>
									<li role="presentation"><a href="#tab-dp8" aria-controls="tab-dp8" role="tab" data-toggle="tab">DP8</a></li>
									<li role="presentation"><a href="#tab-dp9" aria-controls="tab-dp9" role="tab" data-toggle="tab">DP9</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! dp1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-dp1">
										<!-- !!!!!! dp1 !!!!!!! --> 
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Equilibrio de presencia femenina y masculina al tomar en consideración candidaturas o postulaciones en <span class="text-orange">procesos de promoción</span></h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que se cuenta o se toma en consideración la presencia equilibrada de mujeres y hombres en las candidaturas o postulaciones que han formado parte de procesos de promoción.</div>
											<h4 class=" col-xs-12"><span class="badge"><%= dp1 %> %
												<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp1_color %>_mini.png">
											</span></h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-dp1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="dp1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div><!-- !!!!!! fin de dp1 !!!!!!! -->
									<!-- !!!!!! dp2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-dp2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Equilibrio entre las oportunidades para promocionarse u obtener un ascenso de las mujeres y hombres participantes en los <span class="text-orange">procesos de promoción</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Visibilizar el grado de éxito de las mujeres candidatas para obtener una contratación y compararla con el grado de éxito de los hombres candidatos para obtener una promoción.</div>
											<h4 class=" col-xs-12"><span class="badge"><%= dp2 %>
												<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp2_color %>_mini.png">
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-dp2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp2-ind" class="grafica-velocimetro"></div>
										</div>
									</div>
									<!-- !!!!!! fin de dp2 !!!!!!! --> 
									<!-- !!!!!! dp3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-dp3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Ausencia/presencia de la perspectiva de género y a favor de la igualdad en los <span class="text-orange">procesos de promoción</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Conocer si los procesos de promoción promueven la igualdad de género y la no discriminación por razón de sexo</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= dp3 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp3_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-dp3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="dp3-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de dp3 !!!!!!! -->
									<!-- !!!!!! dp4 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-dp4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de promoción</span> contemplan criterios de igualdad y no discriminación por razón de sexo</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a si los procesos de promoción son incluyentes y velan por la igualdad de oportunidades entre mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= dp4 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp4_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-dp4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de dp4 !!!!!!! -->
									<!-- !!!!!! dp5 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-dp5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de promoción </span>contemplan criterios de igualdad y no discriminación por razón de sexo</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Conocer el grado de equilibrio en la valoración/percepción de las mujeres y hombres sobre si los procesos de promoción son incluyentes y respetan la igualdad.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= dp5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp5_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-dp5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp5-ind" class="grafica-velocimetro"></div>
										</div>
										<!-- !!!!!! fin de dp5 !!!!!!! -->
									</div>
									<div role="tabpanel" class="tab-pane" id="tab-dp6">
										<!-- !!!!!! dp6 !!!!!!! --> 
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equidad en el <span class="text-orange">número de horas de capacitación</span> que dedican las mujeres y el número de horas de capacitación que dedican los hombres</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Observar si la participación de las mujeres y los hombres en las acciones formativas (horas de capacitación) es equitativa</div>
											<h4 class=" col-xs-12 "><small class="badge"><%= dp6 %><img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp6_color %>_mini.png"> 
											</small></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-dp6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp6-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de dp6 !!!!!!! -->
									<!-- !!!!!! dp7 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-dp7">
										<div class="panel panel-heading col-xs-12" >
											<h4 class="col-xs-12">Ausencia/presencia de la perspectiva de género y a favor de la igualdad en los <span class="text-orange">procesos de capacitación o formación interna</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a si las políticas de desarrollo profesional del personal (promoción y capacitación) son incluyentes y velan por la igualdad de oportunidades entre mujeres y hombres</div>
											<h4 class="col-xs-12">
												<span class="badge"><%= dp7 %> %
												<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp7_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-dp7" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp7-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de dp7 !!!!!!! -->
									<!-- !!!!!! dp8 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-dp8">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de capacitación o formación interna</span> contemplan criterios de igualdad y no discriminación por razón de sexo</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a si las políticas de capacitación son incluyentes y velan por la igualdad de oportunidades entre mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= dp8 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp8_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-dp8" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp8-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de dp8 !!!!!!! -->
									<!-- !!!!!! dp9 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-dp9">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Equilibrio en la valoración/percepción de la mujeres y hombres sobre si los <span class="text-orange">procesos de capacitación o formación interna</span> contemplan criterios de igualdad y no discriminación por razón de sexo.</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas con respecto a si las políticas de formación interna son incluyentes y velan por la igualdad de oportunidades entre mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= dp9 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= dp9_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-7">
											<div id="gr-dp9" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="dp9-ind" class="grafica-velocimetro"></div>
										</div>
									</div>
								</div> <!-- fin de tabcontent -->
							</div>
						</div> <!-- fin de tabpanel -->

					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-dp1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-dp2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp6" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp7" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp8" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-dp9" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
				</div> <!-- fin de panel body -->
				<div class="col-xs-12 separador-bottom ">
					<div class="blockD ">
						<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
							<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
							<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
							<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
						</ul>
					</div>
				</div>
			</div> <!-- fin de contenido ambitos -->
		</div> <!-- fin de panel DESARROLLO PROFESIONAL-->
		<!-- INICIA PANEL REMUNERACION -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono5 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-violeta-acordeon">
						</div>
					</div>
					<h2>REMUNERACIÓN</h2>
				</div>
			</div>
			<div id="contenido-remuneracion" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">R</h1>
						<p class="bloque-centrado">Compila información que permite valorar si las remuneraciones que reciben mujeres y hombres de las empresas u organizaciones reciben salarios equitativos.</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-r1" aria-controls="tab-r1" role="tab" data-toggle="tab">R1</a></li>
									<li role="presentation"><a href="#tab-r2" aria-controls="tab-r2" role="tab" data-toggle="tab">R2</a></li>
									<li role="presentation"><a href="#tab-r3" aria-controls="tab-r3" role="tab" data-toggle="tab">R3</a></li>
									<li role="presentation"><a href="#tab-r4" aria-controls="tab-r4" role="tab" data-toggle="tab">R4</a></li>
									<li role="presentation"><a href="#tab-r5" aria-controls="tab-r5" role="tab" data-toggle="tab">R5</a></li>
									<li role="presentation"><a href="#tab-r6" aria-controls="tab-r6" role="tab" data-toggle="tab">R6</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! r1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-r1">
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Brecha <span class="text-orange">salarial</span> en el conjunto del personal</h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que las políticas salariales, de compensación y de incentivos están libres de discriminación por razón de sexo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= r1 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r1_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-r1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="r1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div><!-- !!!!!! fin de r1 !!!!!!! -->
									<!-- !!!!!! r2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-r2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Brecha salarial en los <span class="text-orange">cargos de responsabilidad</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que las políticas salariales, de compensación y de incentivos dirigidas a personas en cargos de responsabilidad están libres de discriminación por razón de sexo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= r2 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r2_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r2-2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-12">
											<div id="r2-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de r2 !!!!!!! --> 
									<!-- !!!!!! r3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-r3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Brecha salarial en el conjunto de puestos <span class="text-orange">distintos a los cargos de responsabilidad</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Establecer el grado en que las políticas salariales, de compensación y de incentivos dirigidas a personas en cargos de responsabilidad están libres de discriminación por razón de sexo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= r3 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r3_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="r3-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de r3 !!!!!!! -->
									<!-- !!!!!! r4 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-r4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Ausencia/presencia de la perspectiva de género y a favor de la igualdad en la <span class="text-orange">política salarial</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Establecer el grado en que las políticas salariales, de compensación y de incentivos están libres de discriminación por razón de sexo.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= r4 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r4_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="r4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de r4 !!!!!!! -->
									<!-- !!!!!! r5 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-r5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Valoración/percepción de la mujeres y hombres sobre si la <span class="text-orange">política salarial <span class="text-orange">de la empresa u organización es equitativa y se hace desde criterios de igualdad de mujeres y hombres</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span> Medir el grado de valoración de las personas con respecto a si la política salarial es equitativa y vela por la igualdad de oportunidades entre mujeres y hombres.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= r5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r5_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="r5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de r5 !!!!!!! -->
									<!-- !!!!!! r6 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-r6">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si la <span class="text-orange">política salarial </span>de la empresa u organización es equitativa y se hace desde criterios de igualdad de mujeres y hombres</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de equilibrio en valoración de las personas con respecto a si la política salarial es equitativa y vela por la igualdad de oportunidades entre mujeres y hombres.</div>
											<h4 class=" col-xs-12 ">
												<span class="badge"><%= r6 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= r6_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-r6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="r6-ind" class="grafica-velocimetro"></div>
										</div>
									</div>	<!-- !!!!!! fin de r6 !!!!!!! -->
								</div> <!-- fin de tabcontent -->
							</div>
						</div> <!-- fin de tabpanel -->

					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-r1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-r2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-r3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-r4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-r5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-r6" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
				</div> <!-- fin de panel body -->
				<div class="col-xs-12 separador-bottom ">
					<div class="blockD ">
						<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
							<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
							<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
							<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
						</ul>
					</div>
				</div>
			</div> <!-- fin de contenido ambitos -->
		</div> <!-- fin de panel remuneracion- -->
		<!-- INICIA PANEL Prevencion acoso -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono6 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-gris-acordeon">
						</div>
					</div>
					<h2>PREVENCIÓN DEL ACOSO EN EL AMBIENTE LABORAL</h2>
				</div>
			</div>
			<div id="contenido-pa" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">PA</h1>
						<p class="bloque-centrado">Es el componente que compila datos necesarios para medir la existencia/no de medidas para prevenir casos de acoso sexual y laboral (sexual y por razón de sexo), el ratio de casos que se producen y se denuncian así como impacto en la atención y solución de las mismas.</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-pv1" aria-controls="tab-pv1" role="tab" data-toggle="tab">PA1</a></li>
									<li role="presentation"><a href="#tab-pv2" aria-controls="tab-pv2" role="tab" data-toggle="tab">PA2</a></li>
									<li role="presentation"><a href="#tab-pv3" aria-controls="tab-pv3" role="tab" data-toggle="tab">PA3</a></li>
									<li role="presentation"><a href="#tab-pv4" aria-controls="tab-pv4" role="tab" data-toggle="tab">PA4</a></li>
									<li role="presentation"><a href="#tab-pv5" aria-controls="tab-pv5" role="tab" data-toggle="tab">PA5</a></li>
									<li role="presentation"><a href="#tab-pv6" aria-controls="tab-pv6" role="tab" data-toggle="tab">PA6</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! pv1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-pv1">
										<!-- !!!!!! pv1 !!!!!!! --> 
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Grado de equilibrio entre las <span class="text-orange">acciones adoptadas</span> (sanciones y/u otras soluciones positivas) en relación al número de casos sobre acoso denunciados</h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Conocer el número de quejas y denuncias recibidas anualmente y desagregadas por sexo y verificar en qué medida son atendidos todos los casos de quejas y/o denuncias de acoso.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= pv1 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv1_color %>_mini.png"> 
											</span></h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-pv1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="pv1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div><!-- !!!!!! fin de pv1 !!!!!!! -->
									<!-- !!!!!! pv2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-pv2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Ausencia/presencia de la perspectiva de género y a favor de la igualdad en las <span class="text-orange">políticas para la prevención y tratamiento del acoso sexual</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Corroborar que las empresas u organizaciones cuentan con una política explícita, definida y difundida sobre prevención, sanción y eliminación del acoso sexual</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= pv2 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv2_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-pv2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="pv2-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de pv2 !!!!!!! --> 
									<!-- !!!!!! pv3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-pv3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Valoración/percepción de la mujeres y hombres sobre si <span class="text-orange">el mecanismo y/o protocolo de prevención y actuación en caso de acoso</span> es eficaz</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de valoración de las personas acerca de si la política de actuación contra el acoso sexual o por razones de sexo es efectiva para Prevenir, solucionar y sancionar los casos de acoso sexual y por razón de sexo detectados.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= pv3 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv3_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-pv3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="pv3-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de pv3 !!!!!!! -->
									<!-- !!!!!! pv4 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-pv4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si <span class="text-orange">el mecanismo y/o protocolo de prevención y actuación en caso de acoso</span> es eficaz</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO:</b></span>Medir el grado de equilibrio de valoración de las personas acerca de si la política de actuación contra el acoso sexual o por razones de sexo es efectiva para prevenir, solucionar y sancionar los casos de acoso sexual y por razón de sexo detectados, según sexo del personal.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= pv4 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv4_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-pv4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="pv4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de pv4 !!!!!!! -->
									<!-- !!!!!! pv5 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-pv5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Valoración/percepción de la mujeres y hombres sobre si <span class="text-orange">conocen la existencia del mecanismo y/o protocolo</span> de prevención y actuación en caso de acoso sexual y si lo consideran de fácil acceso</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Verificar con los trabajadores/as el grado de conocimiento y accesibilidad al mecanismo de las empresas u organizaciones para prevenir y actuar en contra del acoso sexual o por razones de sexo en las empresas u organizaciones.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= pv5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv5_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-pv5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="pv5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de pv5 !!!!!!! -->
									<!-- !!!!!! pv6 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-pv6">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12">Grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre si <span class="text-orange">conocen la existencia del mecanismo y/o protocolo</span> de prevención y actuación en caso de acoso sexual y si lo consideran de fácil acceso</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Verificar con los trabajadores/as el grado de conocimiento y accesibilidad al mecanismo de las empresas u organizaciones para prevenir y actuar en contra del acoso sexual o por razones de sexo en las empresas u organizaciones según sexo del personal.</div>
											<h4 class=" col-xs-12 ">
												<span class="badge"><%= pv6 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= pv6_color %>_mini.png">
											</span>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-pv6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="pv6-ind" class="grafica-velocimetro"></div>
										</div>
									</div>	<!-- !!!!!! fin de pv6 !!!!!!! -->
								</div> <!-- fin de tabcontent -->
							</div>
						</div> <!-- fin de tabpanel -->

					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-pv1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-pv2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-pv3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-pv4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-pv5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-pv6" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
				</div> <!-- fin de panel body -->
				<div class="col-xs-12 separador-bottom ">
					<div class="blockD ">
						<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
							<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
							<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
							<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
						</ul>
					</div>
				</div>
			</div> <!-- fin de contenido ambitos -->
		</div> <!-- fin de panel prevencion acoso- -->
		<!-- INICIA PANEL CONCILIACION FAMILIAR -->
		<div class="col-xs-12">
			<div class="panel-heading">
				<div class="panel-title">
					<div class="icono7 pilar-acordeon col-centered ">
						<div class="pilar-borde pilar-borde-violeta-acordeon">
						</div>
					</div>
					<h2>CONCILIACIÓN DE LA VIDA FAMILIAR, LABORAL Y SOCIAL</h2>
				</div>
			</div>
			<div id="contenido-cfls" >
				<div class="padding-small">
					<div class="row bloque">
						<h1 class="super-letra">CFLS</h1>
						<p class="bloque-centrado">Articula información que hace referencia las brechas o igualdad de género que promueve la política de conciliación y corresponsabilidad de las empresas u organizaciones.</p>
					</div>
					<h3 class="separador-top text-center">INDICADORES DESGLOSADOS</h3>
					<section>
						<div role="tabpanel" class="text-center">
							<!-- Nav tabs -->
							<div class="blockD">
								<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
									<li role="presentation" class="active"><a href="#tab-cfls1" aria-controls="tab-cfls1" role="tab" data-toggle="tab">CFLS1</a></li>
									<li role="presentation"><a href="#tab-cfls2" aria-controls="tab-cfls2" role="tab" data-toggle="tab">CFLS2</a></li>
									<li role="presentation"><a href="#tab-cfls3" aria-controls="tab-cfls3" role="tab" data-toggle="tab">CFLS3</a></li>
									<li role="presentation"><a href="#tab-cfls4" aria-controls="tab-cfls4" role="tab" data-toggle="tab">CFLS4</a></li>
									<li role="presentation"><a href="#tab-cfls5" aria-controls="tab-cfls5" role="tab" data-toggle="tab">CFLS5</a></li>
									<li role="presentation"><a href="#tab-cfls6" aria-controls="tab-cfls6" role="tab" data-toggle="tab">CFLS6</a></li>
									<li role="presentation"><a href="#tab-cfls7" aria-controls="tab-cfls7" role="tab" data-toggle="tab">CFLS7</a></li>
									<li role="presentation"><a href="#tab-cfls8" aria-controls="tab-cfls8" role="tab" data-toggle="tab">CFLS8</a></li>
								</ul>
							</div>
							<!-- Tab panes -->
							<div class="marco-gris-pane centeredD col-xs-12">
								<div class="tab-content">
									<!-- !!!!!! cfls1 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane active" id="tab-cfls1">
										<!-- !!!!!! cfls1 !!!!!!! --> 
										<div class="col-xs-12  panel panel-heading" >
											<h4 class=" col-xs-12">Tasa de acogimiento de hombres a la medida: <span class="text-orange">Licencia de paternidad</span> (sólo licencias de paternidad de hombres e incluye licencias en casos de adopción y acogida)</h4>    
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado en que los hombres se acogen a las medidas de conciliación específicas (permisos de paternidad).</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cfls1 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls1_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div>
											<div class="col-xs-12 col-sm-6">
												<div id="gr-cfls1" class="grafica-redonda"></div>
											</div>
											<div class="col-xs-12 col-sm-5">
												<div id="cfls1-ind" class="grafica-velocimetro"></div>
											</div>
										</div> 
									</div>
									<!-- !!!!!! fin de cfls1 !!!!!!! -->
									<!-- !!!!!! cfls2 !!!!!!! -->
									<div role="tabpanel" class="tab-pane " id="tab-cfls2">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Tasa relativa de acogimiento mujeres/hombres a una <span class="text-orange">medida de conciliación concreta</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Observar el grado en que los hombres y mujeres se acogen a las medidas de conciliación específicas (remuneradas y no remuneradas).</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cfls2 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls2_color %>_mini.png">
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls2" class="grafica-barras"> </div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls2-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cfls2 !!!!!!! --> 
									<!-- !!!!!! cfls3 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cfls3">
										<div class="col-xs-12 panel panel-heading " >
											<h4 class=" col-xs-12">Tasa relativa de acogimiento mujeres/hombres a una medida de <span class="text-orange">flexibilidad de tiempo y espacio de trabajo</span></h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Detectar el grado en que los hombres y mujeres se acogen a las medidas de conciliación específicas  de flexibilidad del tiempo y el espacio.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cfls3 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls3_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls3" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5 text-center">
											<div id="cfls3-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cfls3 !!!!!!! -->
									<!-- !!!!!! cfls4 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-cfls4">
										<div class="panel panel-heading col-xs-12 " >
											<h4 class=" col-xs-12 ">Inclusión de la perspectiva de género y a favor de la igualdad en las políticas para la <span class="text-orange">conciliación de la vida familiar, laboral y social</span> con corresponsabilidad</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Corroborar que las empresas u organizaciones cuentan con políticas y medidas de conciliación con enfoque o perspectiva de género</div>
											<h4 class="col-xs-12">
												<span class="badge"><%= cfls4 %>
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls4_color %>_mini.png"> 
												</span>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls4" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls4-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cfls4 !!!!!!! -->
									<!-- !!!!!! cfls5 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-cfls5">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12 ">Valoración/percepción de la mujeres y hombres sobre si la política en favor de la <span class="text-orange">conciliación de la vida familiar, laboral y social</span> con corresponsabilidad de la empresa es equitativa y se hace desde criterios de igualdad de mujeres y hombres</h4>
											<div class="col-xs-12"><span class="text-purple"><b>OBJETIVO: </b></span>Medir el grado de equilibrio de valoración de las personas acerca de si la política de conciliación de la vida familiar, personal y profesional es equitativa.</div>
											<h4 class=" col-xs-12">
												<span class="badge"><%= cfls5 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls5_color %>_mini.png"> 
											</span></h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls5" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls5-ind" class="grafica-velocimetro"></div>
										</div>
									</div><!-- !!!!!! fin de cfls5 !!!!!!! -->
									<!-- !!!!!! cfls6 !!!!!!! -->
									<div role="tabpanel" class="tab-pane" id="tab-cfls6">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12 ">Equilibrio en la valoración de mujeres y hombres sobre si consideran que:<span class="text-orange">la política en favor de  la conciliación de la vida familiar, laboral y social con corresponsabilidad de la empresa es equitativa</span>y se hace desde criterios de igualdad de mujeres y hombres</h4>
											<div class="col-xs-12 "><span class="text-purple"><b>OBJETIVO: </b></span>Verificar con los trabajadores/as el grado de conocimiento y accesibilidad las políticas de conciliación de la empresa.</div>
											<h4 class=" col-xs-12 ">
												<small class="badge"><%= cfls6 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls6_color %>_mini.png"> 
												</small>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls6" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls6-ind" class="grafica-velocimetro"></div>
										</div>
									</div>	<!-- !!!!!! fin de cfls6 !!!!!!! -->
									<!-- !!!!!! cfls7 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cfls7">
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12 ">Valoración/percepción de la mujeres y hombres sobre sobre si <span class="text-orange">conocen la existencia del las medidas de conciliación</span> que  facilita la empresa la empresa/organización y las consideran de fácil acceso</h4>
											<div class="col-xs-12 "><span class="text-purple"><b>OBJETIVO: </b></span>Determinar el grado de valoración/percepción de la mujeres y hombres sobre si conocen la existencia de las medidas de conciliación  que  facilita la empresa la empresa/organización y las consideran de fácil acceso.</div>
											<h4 class=" col-xs-12 ">
												<small class="badge"><%= cfls7 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls7_color %>_mini.png"> 
												</small>
											</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls7" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls7-ind" class="grafica-velocimetro"></div>
										</div>
									</div>	<!-- !!!!!! fin de cfls7 !!!!!!! -->
									<!-- !!!!!! cfls8 !!!!!!! --> 
									<div role="tabpanel" class="tab-pane" id="tab-cfls8">
										
										<div class="panel panel-heading col-xs-12" >
											<h4 class=" col-xs-12 ">Equilibrio en la valoración/percepción de la mujeres y hombres sobre sobre si <span class="text-orange">conocen la existencia dellas medidas de conciliación</span> en la empresa/organización y si son de fácil acceso</h4>
											<div class="col-xs-12 "><span class="text-purple"><b>OBJETIVO: </b></span>Precisar el grado de equilibrio en la valoración/percepción de la mujeres y hombres sobre  si conocen la existencia de las medidas de conciliación en la empresa/organización y si son de fácil acceso.</div>
											<h4 class=" col-xs-12 ">
												<small class="badge"><%= cfls8 %> %
													<img class="indicador-calificacion" alt="Evaluación positiva o negativa" src="/indica/assets/images/<%= cfls8_color %>_mini.png"> 
											</small>
										</h4>
										</div>
										<div class="col-xs-12 col-sm-6">
											<div id="gr-cfls8" class="grafica-barras"></div>
										</div>
										<div class="col-xs-12 col-sm-5">
											<div id="cfls8-ind" class="grafica-velocimetro"></div>
										</div>
									</div>	<!-- !!!!!! fin de cfls8 !!!!!!! -->
								</div> <!-- fin de tabcontent <-->
							</div>
						</div> <!-- fin de tabpanel -->

					</section>  

					<h4 class="separador-top"> RESUMEN DE LOS INDICADORES</h4>
					<div class="col-xs-12 separador-bottom">
						<div id="gr-resumen-cfls1" class="grafica-resumen col-xs-12 col-sm-6" ></div> 
						<div id="gr-resumen-cfls2" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls3" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls4" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls5" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls6" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls7" class="grafica-resumen col-xs-12 col-sm-6"></div>
						<div id="gr-resumen-cfls8" class="grafica-resumen col-xs-12 col-sm-6"></div>
					</div>
				</div> <!-- fin de panel body -->
				<div class="col-xs-12 separador-bottom ">
					<div class="blockD ">
						<ul class="col-xs-8 list-inline centeredD marco-gris col-centered">
							<li class="barra barra-verde text-white col-xs-12 col-sm-4 ">Valor positivo</li>
							<li class="barra barra-amarilla col-xs-12 col-sm-4">Valor intermedio</li>
							<li class="barra barra-roja text-white col-xs-12 col-sm-4">Valor negativo</li>
						</ul>
					</div>
				</div>
			</div> <!-- fin de contenido cfls -->
		</div> <!-- fin de panel prevencion acoso- -->
	</div><!-- end container -->
</section>

	<!-- ENERO 20 LIBRERIA DE HIGHCHART -->
	<!-- script defer src="http://code.highcharts.com/highcharts.js"></script -->
	<!-- script defer src="http://code.highcharts.com/highcharts-more.js"></script -->
	<script defer src="/Highcharts-4.0.4/js/highcharts.js"></script>
	<script defer src="/Highcharts-4.0.4/js/highcharts-more.js"></script>	
	
	<script defer src="/indica/assets/js/highchart-theme/indica.js"></script>

	 <script defer src="/indica/es/barras.jsp"></script>
	<script defer src="/indica/es/velocimetros.jsp"></script>
	<script defer src="/indica/es/graficas-individuales.jsp"></script>
	

<%
	}
%>