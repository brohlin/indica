<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>

<%	
	request.setCharacterEncoding("UTF-8");
	String p_organization_id = request.getParameter("id");
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(request.getParameter("id"));

	parameters.add(request.getParameter("num_jornada_completa_contrato_indefinido_mujeres"));
	parameters.add(request.getParameter("num_jornada_completa_contrato_temporal_mujeres"));
	parameters.add(request.getParameter("num_subtotal_jornada_completa_mujeres"));
	parameters.add(request.getParameter("num_jornada_partial_contrato_indefinido_mujeres"));
	parameters.add(request.getParameter("num_jornada_partial_contrato_temporal_mujeres"));
	parameters.add(request.getParameter("num_subtotal_jornada_partial_mujeres"));
	parameters.add(request.getParameter("num_total_jornada_contracto_mujeres"));
	parameters.add(request.getParameter("num_jornada_completa_contrato_indefinido_hombres"));
	parameters.add(request.getParameter("num_jornada_completa_contrato_temporal_hombres"));
	parameters.add(request.getParameter("num_subtotal_jornada_completa_hombres"));
	parameters.add(request.getParameter("num_jornada_partial_contrato_indefinido_hombres"));
	parameters.add(request.getParameter("num_jornada_partial_contrato_temporal_hombres"));
	parameters.add(request.getParameter("num_subtotal_jornada_partial_hombres"));
	parameters.add(request.getParameter("num_total_jornada_contracto_hombres"));
	parameters.add(request.getParameter("salario_direccion_general_o_maximo_cargo_mujeres"));
	parameters.add(request.getParameter("salario_puestos_directivos_como_gerencias_mujeres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres"));
	parameters.add(request.getParameter("salario_subtotal_cargos_responsabilidad_mujeres"));
	parameters.add(request.getParameter("salario_direccion_general_o_maximo_cargo_hombres"));
	parameters.add(request.getParameter("salario_puestos_directivos_como_gerencias_hombres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres"));
	parameters.add(request.getParameter("salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres"));
	parameters.add(request.getParameter("salario_puestos_tecnicos_mujeres"));
	parameters.add(request.getParameter("salario_puestos_administrativos_mujeres"));
	parameters.add(request.getParameter("salario_puestos_auxiliares_mujeres"));
	parameters.add(request.getParameter("salario_puestos_operarios_mujeres"));
	parameters.add(request.getParameter("salario_puestos_a_mujeres"));
	parameters.add(request.getParameter("salario_puestos_b_mujeres"));
	parameters.add(request.getParameter("salario_puestos_c_mujeres"));
	parameters.add(request.getParameter("salario_puestos_d_mujeres"));
	parameters.add(request.getParameter("salario_puestos_e_mujeres"));
	parameters.add(request.getParameter("salario_puestos_f_mujeres"));
	parameters.add(request.getParameter("salario_puestos_g_mujeres"));
	parameters.add(request.getParameter("salario_puestos_h_mujeres"));
	parameters.add(request.getParameter("salario_puestos_tecnicos_hombres"));
	parameters.add(request.getParameter("salario_puestos_administrativos_hombres"));
	parameters.add(request.getParameter("salario_puestos_auxiliares_hombres"));
	parameters.add(request.getParameter("salario_puestos_operarios_hombres"));
	parameters.add(request.getParameter("salario_puestos_a_hombres"));
	parameters.add(request.getParameter("salario_puestos_b_hombres"));
	parameters.add(request.getParameter("salario_puestos_c_hombres"));
	parameters.add(request.getParameter("salario_puestos_d_hombres"));
	parameters.add(request.getParameter("salario_puestos_e_hombres"));
	parameters.add(request.getParameter("salario_puestos_f_hombres"));
	parameters.add(request.getParameter("salario_puestos_g_hombres"));
	parameters.add(request.getParameter("salario_puestos_h_hombres"));
	parameters.add(request.getParameter("num_licencia_de_paternidad_en_sit_de_acogerse"));
	parameters.add(request.getParameter("num_licencia_de_paternidad_en_efect_se_acogen"));
	parameters.add(request.getParameter("num_licencia_de_lactancia_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_licencia_de_lactancia_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_reduc_jornada_guardar_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_reduc_jornada_guardar_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_excedencia_por_cuidado_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_excedencia_por_cuidado_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_licencia_de_maternidad_en_sit_de_acogerse"));
	parameters.add(request.getParameter("num_licencia_de_maternidad_en_efect_se_acogen"));
	parameters.add(request.getParameter("num_licencia_de_lactancia_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_licencia_de_lactancia_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_reduc_jornada_guardar_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_excedencia_por_cuidado_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_flex_entrada_salida_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_flex_entrada_salida_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_flex_horario_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_flex_horario_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_teletrabajo_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_teletrabajo_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_acerc_lugar_residencia_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_guaderia_ambito_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_guaderia_ambito_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres"));
	parameters.add(request.getParameter("num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres"));
	parameters.add(request.getParameter("num_flex_entrada_salida_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_flex_entrada_salida_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_flex_horario_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_flex_horario_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_teletrabajo_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_teletrabajo_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_acerc_lugar_residencia_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_acerc_lugar_residencia_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_guaderia_ambito_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_guaderia_ambito_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres"));
	parameters.add(request.getParameter("num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres"));
	parameters.add(request.getParameter("num_quejas_recibidas_acoso_sexual_mujeres"));
	parameters.add(request.getParameter("num_quejas_atendidas_acoso_sexual_mujeres"));
	parameters.add(request.getParameter("num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres"));
	parameters.add(request.getParameter("num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres"));
	parameters.add(request.getParameter("num_quejas_recibidas_acoso_sexual_hombres"));
	parameters.add(request.getParameter("num_quejas_atendidas_acoso_sexual_hombres"));
	parameters.add(request.getParameter("num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres"));
	parameters.add(request.getParameter("num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres"));
	parameters.add(request.getParameter("tabla4_coinicide_con_tabla1_mujeres"));
	parameters.add(request.getParameter("tabla4_coinicide_con_tabla1_hombres"));	
	
	
	int x = Database.callProc("p_upd_organization_cl", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=gestion_del_personal&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>