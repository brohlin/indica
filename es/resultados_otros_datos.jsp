<?xml version="1.0" encoding="UTF-8" ?>
<!-- %@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" % --> 
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>


<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>

<%	

	String p_organization_id2 = "";
	
	try {
		if ( session.getAttribute("temp_user_role_nm").equals("Empresa") ) {
			p_organization_id2 = session.getAttribute("temp_user_organization_id").toString();
		}
	} catch (Exception e) {
		// do nothing
	}		

	try {
		if ( session.getAttribute("temp_user_role_nm").equals("Admin") ) {	
			p_organization_id2 = request.getParameter("organization_id");
			// session.getAttribute("temp_admin_organization_id").toString();
		}
	} catch (Exception e) {
		// do nothing
	}

	DynStringArray parameters = new DynStringArray();
	DbResults db = null;
	int size = 0;
	
	if (p_organization_id2 != null) {
		
		parameters.add(p_organization_id2);
		db = Database.callProcResults("p_get_admin_organization", parameters); 

		while(size<db.getRowCount())
		{
			session.setAttribute("temp_admin_organization_id",db.getRow(size).get(0));
			session.setAttribute("temp_admin_organization_nm",db.getRow(size).get(1));
			session.setAttribute("temp_admin_organization_denominacion_social",db.getRow(size).get(2));
			session.setAttribute("temp_admin_organization_cif",db.getRow(size).get(3));
			session.setAttribute("temp_admin_organization_domicilio_social",db.getRow(size).get(4));
			session.setAttribute("temp_admin_organization_naturaleza_juridica_lkup",db.getRow(size).get(5));
			session.setAttribute("temp_admin_organization_pais_de_ubicacion_lkup",db.getRow(size).get(6));
			session.setAttribute("temp_admin_organization_contacto_nombre",db.getRow(size).get(7));
			session.setAttribute("temp_admin_organization_contacto_cargo",db.getRow(size).get(8));
			session.setAttribute("temp_admin_organization_contacto_tel",db.getRow(size).get(9));
			session.setAttribute("temp_admin_organization_contacto_fax",db.getRow(size).get(10));
			session.setAttribute("temp_admin_organization_contacto_email",db.getRow(size).get(11));
			session.setAttribute("temp_admin_organization_sector_de_actividad_lkup",db.getRow(size).get(12));
			session.setAttribute("temp_admin_organization_ciiu",db.getRow(size).get(13));
			session.setAttribute("temp_admin_organization_mercado_lkup",db.getRow(size).get(14));
			session.setAttribute("temp_admin_organization_num_de_personas_trabajadores",db.getRow(size).get(15));
			session.setAttribute("temp_admin_organization_facturacion_anual_lkup",db.getRow(size).get(16));
			session.setAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_mujeres",db.getRow(size).get(17));
			session.setAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_mujeres",db.getRow(size).get(18));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres",db.getRow(size).get(19));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres",db.getRow(size).get(20));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres",db.getRow(size).get(21));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres",db.getRow(size).get(22));
			session.setAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_mujeres",db.getRow(size).get(23));
			session.setAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_hombres",db.getRow(size).get(24));
			session.setAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_hombres",db.getRow(size).get(25));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres",db.getRow(size).get(26));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres",db.getRow(size).get(27));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres",db.getRow(size).get(28));
			session.setAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres",db.getRow(size).get(29));
			session.setAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_hombres",db.getRow(size).get(30));
			session.setAttribute("temp_admin_organization_num_puestos_tecnicos_mujeres",db.getRow(size).get(31));
			session.setAttribute("temp_admin_organization_num_puestos_administrativos_mujeres",db.getRow(size).get(32));
			session.setAttribute("temp_admin_organization_num_puestos_auxiliares_mujeres",db.getRow(size).get(33));
			session.setAttribute("temp_admin_organization_num_puestos_operarios_mujeres",db.getRow(size).get(34));
			session.setAttribute("temp_admin_organization_num_puestos_a_mujeres",db.getRow(size).get(35));
			session.setAttribute("temp_admin_organization_num_puestos_b_mujeres",db.getRow(size).get(36));
			session.setAttribute("temp_admin_organization_num_puestos_c_mujeres",db.getRow(size).get(37));
			session.setAttribute("temp_admin_organization_num_puestos_d_mujeres",db.getRow(size).get(38));
			session.setAttribute("temp_admin_organization_num_puestos_e_mujeres",db.getRow(size).get(39));
			session.setAttribute("temp_admin_organization_num_puestos_f_mujeres",db.getRow(size).get(40));
			session.setAttribute("temp_admin_organization_num_puestos_g_mujeres",db.getRow(size).get(41));
			session.setAttribute("temp_admin_organization_num_puestos_h_mujeres",db.getRow(size).get(42));
			session.setAttribute("temp_admin_organization_num_subtotal_resto_plantilla_mujeres",db.getRow(size).get(43));
			session.setAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres",db.getRow(size).get(44));
			session.setAttribute("temp_admin_organization_num_puestos_tecnicos_hombres",db.getRow(size).get(45));
			session.setAttribute("temp_admin_organization_num_puestos_administrativos_hombres",db.getRow(size).get(46));
			session.setAttribute("temp_admin_organization_num_puestos_auxiliares_hombres",db.getRow(size).get(47));
			session.setAttribute("temp_admin_organization_num_puestos_operarios_hombres",db.getRow(size).get(48));
			session.setAttribute("temp_admin_organization_num_puestos_a_hombres",db.getRow(size).get(49));
			session.setAttribute("temp_admin_organization_num_puestos_b_hombres",db.getRow(size).get(50));
			session.setAttribute("temp_admin_organization_num_puestos_c_hombres",db.getRow(size).get(51));
			session.setAttribute("temp_admin_organization_num_puestos_d_hombres",db.getRow(size).get(52));
			session.setAttribute("temp_admin_organization_num_puestos_e_hombres",db.getRow(size).get(53));
			session.setAttribute("temp_admin_organization_num_puestos_f_hombres",db.getRow(size).get(54));
			session.setAttribute("temp_admin_organization_num_puestos_g_hombres",db.getRow(size).get(55));
			session.setAttribute("temp_admin_organization_num_puestos_h_hombres",db.getRow(size).get(56));
			session.setAttribute("temp_admin_organization_num_subtotal_resto_plantilla_hombres",db.getRow(size).get(57));
			session.setAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres",db.getRow(size).get(58));
			session.setAttribute("temp_admin_organization_num_dept_administracion_mujeres",db.getRow(size).get(59));
			session.setAttribute("temp_admin_organization_num_dept_comercial_y_ventas_mujeres",db.getRow(size).get(60));
			session.setAttribute("temp_admin_organization_num_dept_logistica_mujeres",db.getRow(size).get(61));
			session.setAttribute("temp_admin_organization_num_dept_produccion_mujeres",db.getRow(size).get(62));
			session.setAttribute("temp_admin_organization_num_dept_financiero_mujeres",db.getRow(size).get(63));
			session.setAttribute("temp_admin_organization_num_dept_recursos_humanos_mujeres",db.getRow(size).get(64));
			session.setAttribute("temp_admin_organization_num_dept_a_mujeres",db.getRow(size).get(65));
			session.setAttribute("temp_admin_organization_num_dept_b_mujeres",db.getRow(size).get(66));
			session.setAttribute("temp_admin_organization_num_dept_c_mujeres",db.getRow(size).get(67));
			session.setAttribute("temp_admin_organization_num_dept_d_mujeres",db.getRow(size).get(68));
			session.setAttribute("temp_admin_organization_num_dept_e_mujeres",db.getRow(size).get(69));
			session.setAttribute("temp_admin_organization_num_dept_total_mujeres",db.getRow(size).get(70));
			session.setAttribute("temp_admin_organization_num_dept_administracion_hombres",db.getRow(size).get(71));
			session.setAttribute("temp_admin_organization_num_dept_comercial_y_ventas_hombres",db.getRow(size).get(72));
			session.setAttribute("temp_admin_organization_num_dept_logistica_hombres",db.getRow(size).get(73));
			session.setAttribute("temp_admin_organization_num_dept_produccion_hombres",db.getRow(size).get(74));
			session.setAttribute("temp_admin_organization_num_dept_financiero_hombres",db.getRow(size).get(75));
			session.setAttribute("temp_admin_organization_num_dept_recursos_humanos_hombres",db.getRow(size).get(76));
			session.setAttribute("temp_admin_organization_num_dept_a_hombres",db.getRow(size).get(77));
			session.setAttribute("temp_admin_organization_num_dept_b_hombres",db.getRow(size).get(78));
			session.setAttribute("temp_admin_organization_num_dept_c_hombres",db.getRow(size).get(79));
			session.setAttribute("temp_admin_organization_num_dept_d_hombres",db.getRow(size).get(80));
			session.setAttribute("temp_admin_organization_num_dept_e_hombres",db.getRow(size).get(81));
			session.setAttribute("temp_admin_organization_num_dept_total_hombres",db.getRow(size).get(82));
			session.setAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_mujeres",db.getRow(size).get(83));
			session.setAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_hombres",db.getRow(size).get(84));
			session.setAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_mujeres",db.getRow(size).get(85));
			session.setAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_mujeres",db.getRow(size).get(86));
			session.setAttribute("temp_admin_organization_num_subtotal_jornada_completa_mujeres",db.getRow(size).get(87));
			session.setAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_mujeres",db.getRow(size).get(88));
			session.setAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_mujeres",db.getRow(size).get(89));
			session.setAttribute("temp_admin_organization_num_subtotal_jornada_partial_mujeres",db.getRow(size).get(90));
			session.setAttribute("temp_admin_organization_num_total_jornada_contracto_mujeres",db.getRow(size).get(91));
			session.setAttribute("temp_admin_organization_num_jornada_completa_contrato_indefinido_hombres",db.getRow(size).get(92));
			session.setAttribute("temp_admin_organization_num_jornada_completa_contrato_temporal_hombres",db.getRow(size).get(93));
			session.setAttribute("temp_admin_organization_num_subtotal_jornada_completa_hombres",db.getRow(size).get(94));
			session.setAttribute("temp_admin_organization_num_jornada_partial_contrato_indefinido_hombres",db.getRow(size).get(95));
			session.setAttribute("temp_admin_organization_num_jornada_partial_contrato_temporal_hombres",db.getRow(size).get(96));
			session.setAttribute("temp_admin_organization_num_subtotal_jornada_partial_hombres",db.getRow(size).get(97));
			session.setAttribute("temp_admin_organization_num_total_jornada_contracto_hombres",db.getRow(size).get(98));
			session.setAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_mujeres",db.getRow(size).get(99));
			session.setAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_mujeres",db.getRow(size).get(100));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres",db.getRow(size).get(101));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres",db.getRow(size).get(102));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres",db.getRow(size).get(103));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres",db.getRow(size).get(104));
			session.setAttribute("temp_admin_organization_salario_subtotal_cargos_responsabilidad_mujeres",db.getRow(size).get(105));
			session.setAttribute("temp_admin_organization_salario_direccion_general_o_maximo_cargo_hombres",db.getRow(size).get(106));
			session.setAttribute("temp_admin_organization_salario_puestos_directivos_como_gerencias_hombres",db.getRow(size).get(107));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres",db.getRow(size).get(108));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres",db.getRow(size).get(109));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres",db.getRow(size).get(110));
			session.setAttribute("temp_admin_organization_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres",db.getRow(size).get(111));
			session.setAttribute("temp_admin_organization_salario_puestos_tecnicos_mujeres",db.getRow(size).get(112));
			session.setAttribute("temp_admin_organization_salario_puestos_administrativos_mujeres",db.getRow(size).get(113));
			session.setAttribute("temp_admin_organization_salario_puestos_auxiliares_mujeres",db.getRow(size).get(114));
			session.setAttribute("temp_admin_organization_salario_puestos_operarios_mujeres",db.getRow(size).get(115));
			session.setAttribute("temp_admin_organization_salario_puestos_a_mujeres",db.getRow(size).get(116));
			session.setAttribute("temp_admin_organization_salario_puestos_b_mujeres",db.getRow(size).get(117));
			session.setAttribute("temp_admin_organization_salario_puestos_c_mujeres",db.getRow(size).get(118));
			session.setAttribute("temp_admin_organization_salario_puestos_d_mujeres",db.getRow(size).get(119));
			session.setAttribute("temp_admin_organization_salario_puestos_e_mujeres",db.getRow(size).get(120));
			session.setAttribute("temp_admin_organization_salario_puestos_f_mujeres",db.getRow(size).get(121));
			session.setAttribute("temp_admin_organization_salario_puestos_g_mujeres",db.getRow(size).get(122));
			session.setAttribute("temp_admin_organization_salario_puestos_h_mujeres",db.getRow(size).get(123));
			session.setAttribute("temp_admin_organization_salario_puestos_tecnicos_hombres",db.getRow(size).get(124));
			session.setAttribute("temp_admin_organization_salario_puestos_administrativos_hombres",db.getRow(size).get(125));
			session.setAttribute("temp_admin_organization_salario_puestos_auxiliares_hombres",db.getRow(size).get(126));
			session.setAttribute("temp_admin_organization_salario_puestos_operarios_hombres",db.getRow(size).get(127));
			session.setAttribute("temp_admin_organization_salario_puestos_a_hombres",db.getRow(size).get(128));
			session.setAttribute("temp_admin_organization_salario_puestos_b_hombres",db.getRow(size).get(129));
			session.setAttribute("temp_admin_organization_salario_puestos_c_hombres",db.getRow(size).get(130));
			session.setAttribute("temp_admin_organization_salario_puestos_d_hombres",db.getRow(size).get(131));
			session.setAttribute("temp_admin_organization_salario_puestos_e_hombres",db.getRow(size).get(132));
			session.setAttribute("temp_admin_organization_salario_puestos_f_hombres",db.getRow(size).get(133));
			session.setAttribute("temp_admin_organization_salario_puestos_g_hombres",db.getRow(size).get(134));
			session.setAttribute("temp_admin_organization_salario_puestos_h_hombres",db.getRow(size).get(135));
			session.setAttribute("temp_admin_organization_num_licencia_de_paternidad_en_sit_de_acogerse",db.getRow(size).get(136));
			session.setAttribute("temp_admin_organization_num_licencia_de_paternidad_en_efect_se_acogen",db.getRow(size).get(137));
			session.setAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_hombres",db.getRow(size).get(138));
			session.setAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_hombres",db.getRow(size).get(139));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres",db.getRow(size).get(140));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_hombres",db.getRow(size).get(141));
			session.setAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres",db.getRow(size).get(142));
			session.setAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_hombres",db.getRow(size).get(143));
			session.setAttribute("temp_admin_organization_num_licencia_de_maternidad_en_sit_de_acogerse",db.getRow(size).get(144));
			session.setAttribute("temp_admin_organization_num_licencia_de_maternidad_en_efect_se_acogen",db.getRow(size).get(145));
			session.setAttribute("temp_admin_organization_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres",db.getRow(size).get(146));
			session.setAttribute("temp_admin_organization_num_licencia_de_lactancia_en_efect_se_acogen_mujeres",db.getRow(size).get(147));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres",db.getRow(size).get(148));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres",db.getRow(size).get(149));
			session.setAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres",db.getRow(size).get(150));
			session.setAttribute("temp_admin_organization_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres",db.getRow(size).get(151));
			session.setAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_mujeres",db.getRow(size).get(152));
			session.setAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_mujeres",db.getRow(size).get(153));
			session.setAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_mujeres",db.getRow(size).get(154));
			session.setAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_mujeres",db.getRow(size).get(155));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres",db.getRow(size).get(156));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres",db.getRow(size).get(157));
			session.setAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres",db.getRow(size).get(158));
			session.setAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres",db.getRow(size).get(159));
			session.setAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres",db.getRow(size).get(160));
			session.setAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres",db.getRow(size).get(161));
			session.setAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_mujeres",db.getRow(size).get(162));
			session.setAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_mujeres",db.getRow(size).get(163));
			session.setAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres",db.getRow(size).get(164));
			session.setAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres",db.getRow(size).get(165));
			session.setAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_mujeres",db.getRow(size).get(166));
			session.setAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_mujeres",db.getRow(size).get(167));
			session.setAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres",db.getRow(size).get(168));
			session.setAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres",db.getRow(size).get(169));
			session.setAttribute("temp_admin_organization_num_flex_entrada_salida_en_sit_de_acogerse_hombres",db.getRow(size).get(170));
			session.setAttribute("temp_admin_organization_num_flex_entrada_salida_en_efect_se_acogen_hombres",db.getRow(size).get(171));
			session.setAttribute("temp_admin_organization_num_flex_horario_en_sit_de_acogerse_hombres",db.getRow(size).get(172));
			session.setAttribute("temp_admin_organization_num_flex_horario_en_efect_se_acogen_hombres",db.getRow(size).get(173));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres",db.getRow(size).get(174));
			session.setAttribute("temp_admin_organization_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres",db.getRow(size).get(175));
			session.setAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres",db.getRow(size).get(176));
			session.setAttribute("temp_admin_organization_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres",db.getRow(size).get(177));
			session.setAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres",db.getRow(size).get(178));
			session.setAttribute("temp_admin_organization_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres",db.getRow(size).get(179));
			session.setAttribute("temp_admin_organization_num_teletrabajo_en_sit_de_acogerse_hombres",db.getRow(size).get(180));
			session.setAttribute("temp_admin_organization_num_teletrabajo_en_efect_se_acogen_hombres",db.getRow(size).get(181));
			session.setAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres",db.getRow(size).get(182));
			session.setAttribute("temp_admin_organization_num_acerc_lugar_residencia_en_efect_se_acogen_hombres",db.getRow(size).get(183));
			session.setAttribute("temp_admin_organization_num_guaderia_ambito_en_sit_de_acogerse_hombres",db.getRow(size).get(184));
			session.setAttribute("temp_admin_organization_num_guaderia_ambito_en_efect_se_acogen_hombres",db.getRow(size).get(185));
			session.setAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres",db.getRow(size).get(186));
			session.setAttribute("temp_admin_organization_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres",db.getRow(size).get(187));
			session.setAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_mujeres",db.getRow(size).get(188));
			session.setAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_mujeres",db.getRow(size).get(189));
			session.setAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres",db.getRow(size).get(190));
			session.setAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres",db.getRow(size).get(191));
			session.setAttribute("temp_admin_organization_num_quejas_recibidas_acoso_sexual_hombres",db.getRow(size).get(192));
			session.setAttribute("temp_admin_organization_num_quejas_atendidas_acoso_sexual_hombres",db.getRow(size).get(193));
			session.setAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres",db.getRow(size).get(194));
			session.setAttribute("temp_admin_organization_num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres",db.getRow(size).get(195));
			session.setAttribute("temp_admin_organization_num_jornadas_anuales_pactadas_convenio_por_trab",db.getRow(size).get(196));
			session.setAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_mujeres",db.getRow(size).get(197));
			session.setAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_hombres",db.getRow(size).get(198));
			session.setAttribute("temp_admin_organization_num_jornadas_perdidas_mujeres",db.getRow(size).get(199));
			session.setAttribute("temp_admin_organization_num_jornadas_perdidas_hombres",db.getRow(size).get(200));
			session.setAttribute("temp_admin_organization_num_personas_cesaron_actividades_mujeres",db.getRow(size).get(201));
			session.setAttribute("temp_admin_organization_num_personas_cesaron_actividades_hombres",db.getRow(size).get(202));
			session.setAttribute("temp_admin_organization_num_total_mujeres_tomaron_licencia_de_maternidad",db.getRow(size).get(203));
			session.setAttribute("temp_admin_organization_num_mujeres_no_se_reincoroporaron_tras_la_licencia",db.getRow(size).get(204));
			session.setAttribute("temp_admin_organization_num_mujeres_se_reincoroporaron_tras_la_licencia",db.getRow(size).get(205));
			session.setAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_mujeres",db.getRow(size).get(206));
			session.setAttribute("temp_admin_organization_num_contrataciones_realizadas_mujeres",db.getRow(size).get(207));
			session.setAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_hombres",db.getRow(size).get(208));
			session.setAttribute("temp_admin_organization_num_contrataciones_realizadas_hombres",db.getRow(size).get(209));
			session.setAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_mujeres",db.getRow(size).get(210));
			session.setAttribute("temp_admin_organization_num_promociones_realizadas_mujeres",db.getRow(size).get(211));
			session.setAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_hombres",db.getRow(size).get(212));
			session.setAttribute("temp_admin_organization_num_promociones_realizadas_hombres",db.getRow(size).get(213));
			session.setAttribute("temp_admin_organization_num_personas_efectivamente_formadas_mujeres",db.getRow(size).get(214));
			session.setAttribute("temp_admin_organization_num_total_horas_de_capacitacion_mujeres",db.getRow(size).get(215));
			session.setAttribute("temp_admin_organization_num_personas_efectivamente_formadas_hombres",db.getRow(size).get(216));
			session.setAttribute("temp_admin_organization_num_total_horas_de_capacitacion_hombres",db.getRow(size).get(217));
			session.setAttribute("temp_admin_organization_q1_lkup",db.getRow(size).get(218));
			session.setAttribute("temp_admin_organization_q2_lkup",db.getRow(size).get(219));
			session.setAttribute("temp_admin_organization_q3_lkup",db.getRow(size).get(220));
			session.setAttribute("temp_admin_organization_q4_lkup",db.getRow(size).get(221));
			session.setAttribute("temp_admin_organization_q5_lkup",db.getRow(size).get(222));
			session.setAttribute("temp_admin_organization_q6_lkup",db.getRow(size).get(223));
			session.setAttribute("temp_admin_organization_q7_lkup",db.getRow(size).get(224));
			session.setAttribute("temp_admin_organization_q8_lkup",db.getRow(size).get(225));
			session.setAttribute("temp_admin_organization_q9_lkup",db.getRow(size).get(226));
			session.setAttribute("temp_admin_organization_q10_lkup",db.getRow(size).get(227));
			session.setAttribute("temp_admin_organization_q11_lkup",db.getRow(size).get(228));
			session.setAttribute("temp_admin_organization_q12_lkup",db.getRow(size).get(229));
			session.setAttribute("temp_admin_organization_q13_lkup",db.getRow(size).get(230));
			session.setAttribute("temp_admin_organization_q14_lkup",db.getRow(size).get(231));
			session.setAttribute("temp_admin_organization_q15_lkup",db.getRow(size).get(232));
			session.setAttribute("temp_admin_organization_q16_lkup",db.getRow(size).get(233));
			session.setAttribute("temp_admin_organization_q17_lkup",db.getRow(size).get(234));
			session.setAttribute("temp_admin_organization_q18_lkup",db.getRow(size).get(235));
			session.setAttribute("temp_admin_organization_q19_lkup",db.getRow(size).get(236));
			session.setAttribute("temp_admin_organization_q20_lkup",db.getRow(size).get(237));
			session.setAttribute("temp_admin_organization_q21_lkup",db.getRow(size).get(238));
			session.setAttribute("temp_admin_organization_q22_lkup",db.getRow(size).get(239));
			session.setAttribute("temp_admin_organization_q23_lkup",db.getRow(size).get(240));
			session.setAttribute("temp_admin_organization_q24_lkup",db.getRow(size).get(241));
			session.setAttribute("temp_admin_organization_q25_lkup",db.getRow(size).get(242));
			session.setAttribute("temp_admin_organization_q26_lkup",db.getRow(size).get(243));
			session.setAttribute("temp_admin_organization_q27_lkup",db.getRow(size).get(244));
			session.setAttribute("temp_admin_organization_q28_lkup",db.getRow(size).get(245));
			session.setAttribute("temp_admin_organization_q29_lkup",db.getRow(size).get(246));
			session.setAttribute("temp_admin_organization_q30_lkup",db.getRow(size).get(247));
			session.setAttribute("temp_admin_organization_q31_lkup",db.getRow(size).get(248));
			session.setAttribute("temp_admin_organization_q32_lkup",db.getRow(size).get(249));
			session.setAttribute("temp_admin_organization_q33_lkup",db.getRow(size).get(250));
			session.setAttribute("temp_admin_organization_q34_lkup",db.getRow(size).get(251));
			session.setAttribute("temp_admin_organization_q35_lkup",db.getRow(size).get(252));
			session.setAttribute("temp_admin_organization_q36_lkup",db.getRow(size).get(253));
			session.setAttribute("temp_admin_organization_q37_lkup",db.getRow(size).get(254));
			session.setAttribute("temp_admin_organization_q38_lkup",db.getRow(size).get(255));
			session.setAttribute("temp_admin_organization_q39_lkup",db.getRow(size).get(256));
			session.setAttribute("temp_admin_organization_q40_lkup",db.getRow(size).get(257));
			session.setAttribute("temp_admin_organization_q41_lkup",db.getRow(size).get(258));
			session.setAttribute("temp_admin_organization_q42_lkup",db.getRow(size).get(259));
			session.setAttribute("temp_admin_organization_last_mod_tmstmp",db.getRow(size).get(260));
			session.setAttribute("temp_admin_organization_puestos_a",db.getRow(size).get(261));
			session.setAttribute("temp_admin_organization_puestos_b",db.getRow(size).get(262));
			session.setAttribute("temp_admin_organization_puestos_c",db.getRow(size).get(263));
			session.setAttribute("temp_admin_organization_puestos_d",db.getRow(size).get(264));
			
			session.setAttribute("temp_admin_organization_dept_a",db.getRow(size).get(265));
			session.setAttribute("temp_admin_organization_dept_b",db.getRow(size).get(266));
			session.setAttribute("temp_admin_organization_dept_c",db.getRow(size).get(267));
			session.setAttribute("temp_admin_organization_dept_d",db.getRow(size).get(268));
			session.setAttribute("temp_admin_organization_dept_e",db.getRow(size).get(269));
			session.setAttribute("temp_admin_organization_coinicide_con_tabla1_mujeres",db.getRow(size).get(270));	
			session.setAttribute("temp_admin_organization_coinicide_con_tabla1_hombres",db.getRow(size).get(271));
			session.setAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_mujeres",db.getRow(size).get(272));	
			session.setAttribute("temp_admin_organization_tabla4_coinicide_con_tabla1_hombres",db.getRow(size).get(273));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa_otros_datos",db.getRow(size).get(274));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa_cb",db.getRow(size).get(275));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa_plantilla",db.getRow(size).get(276));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa_cl",db.getRow(size).get(277));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa_gestion_del_personal",db.getRow(size).get(278));
			session.setAttribute("temp_admin_organization_completed",db.getRow(size).get(279));
			session.setAttribute("temp_admin_organization_f_get_pct_complete_empresa",db.getRow(size).get(280));
			session.setAttribute("temp_admin_organization_last_mod_tmstmp",db.getRow(size).get(281));
			session.setAttribute("temp_admin_organization_q43_lkup",db.getRow(size).get(282));
			session.setAttribute("temp_admin_organization_q44_lkup",db.getRow(size).get(283));
			session.setAttribute("temp_admin_organization_q45_lkup",db.getRow(size).get(284));
			session.setAttribute("temp_admin_organization_q46_lkup",db.getRow(size).get(285));
			session.setAttribute("temp_admin_organization_q47_lkup",db.getRow(size).get(286));
			session.setAttribute("temp_admin_organization_q48_lkup",db.getRow(size).get(287));
			session.setAttribute("temp_admin_organization_q49_lkup",db.getRow(size).get(288));
			session.setAttribute("temp_admin_organization_q50_lkup",db.getRow(size).get(289));
			session.setAttribute("temp_admin_organization_q51_lkup",db.getRow(size).get(290));
			session.setAttribute("temp_admin_organization_q52_lkup",db.getRow(size).get(291));
			session.setAttribute("temp_admin_organization_q53_lkup",db.getRow(size).get(292));
			session.setAttribute("temp_admin_organization_q54_lkup",db.getRow(size).get(293));
			session.setAttribute("temp_admin_organization_q55_lkup",db.getRow(size).get(294));
			session.setAttribute("temp_admin_organization_q56_lkup",db.getRow(size).get(295));
			session.setAttribute("temp_admin_organization_q57_lkup",db.getRow(size).get(296));
			session.setAttribute("temp_admin_organization_q58_lkup",db.getRow(size).get(297));
			session.setAttribute("temp_admin_organization_q59_lkup",db.getRow(size).get(298));						
			size++;
		}	
	}
%>

<section  class="borde-superior ">
	<header>
		<div class="well">
			<h1 class="text-center text-white">RESULTADOS</h1>
		</div>
		<div class="well-2 bc-purple">
			<h3 class="text-center text-white"> EMPRESA <%= session.getAttribute("temp_admin_organization_nm").toString() %></h3>
		</div>
	</header>
	<!-- Cabezote gris -->
	<div id="cabezote-resultados" class="bc-gray padding-medium">
		<div class="container">
			<div class="col-md-6">
				<!-- h4 class="resaltado">El autodiagnositico fue recibido exitosamente el d�a: xx de xx</h4 -->
				<h4 class="resaltado">
				<%
					if (session.getAttribute("temp_admin_organization_completed").toString().equals("N")) {
				%>
						<li>A�n no hemos recibido el autodiagn�stico de la empesa</li>
				<%
					} else if (session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa").toString().equals("100") && session.getAttribute("temp_admin_organization_completed").toString().equals("Y")) {
				%>						
						<li>El autodian�stico fue recibido exitosamente el d�a <%= session.getAttribute("temp_admin_organization_last_mod_tmstmp").toString() %> </li>
				<%
					}

				%> 
				</h4>	

		</div>
		<ul>  
			<li>Caracterizaci�n b�sica- 
				<%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cb").toString() %>
			</li>
			<li>Plantilla - 
				<%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_plantilla").toString() %>
			</li>
			<li>Condiciones laborales - 
				<%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cl").toString() %>
			</li>
			<li>Gesti�n del personal - 
				<%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_gestion_del_personal").toString() %>
			</li>
			<li>Otros datos - 
				<%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_otros_datos").toString() %>
			</li>
		</ul>

	</div>
</div> <!-- fin de cabezote gris -->
<div class="container resultados">
	<h4 class="text-center separador-top separador-bottom">A continuaci�n encontrar� los resultados del formulario de valoraci�n de la empresa </h4>

	<div id="otros-comunicacion-interna">
		<h5>
			<div class="label label-primary padding-small">COMUNICACI�N INTERNA</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros1" aria-controls="otros1" role="tab" data-toggle="tab">Pregunta 1</a></li>
					<li role="presentation"><a href="#otros2" aria-controls="otros2" role="tab" data-toggle="tab">Pregunta 2</a></li>
					<li role="presentation"><a href="#otros3" aria-controls="otros3" role="tab" data-toggle="tab">Pregunta 3</a></li>
					<li role="presentation"><a href="#otros4" aria-controls="otros4" role="tab" data-toggle="tab">Pregunta 4</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros1">
						<div class="col-xs-12  panel-heading" >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene en cuenta, en la comunicaci�n interna, la utilizaci�n de un lenguaje inclusivo (im�genes no estereotipadas, visibilizando a mujeres y hombres, y lenguaje no sexista)?
							</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q1_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q1_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q1_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span>
							</h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros2">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En su opini�n, los mecanismos de comunicaci�n interna se utilizan con la intenci�n de que la informaci�n llegue al 100% de la plantilla ?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q2_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q2_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q2_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span>
							</h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros3">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">Se ha comunicado a la plantilla el compromiso de la empresa/organizaci�n con la igualdad de g�nero</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q3_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q3_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q3_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span>
							</h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros4">
						<div class="col-xs-12 panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �considera que la comunicaci�n interna contempla criterios de igualdad y no discriminaci�n por cuesti�n de sexo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q43_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q43_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q43_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-1" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin otros-comunicacion-interna -->
	<div id="otros-comunicacion-externa">
		<h5>
			<div class="label label-primary padding-small">COMUNICACI�N EXTERNA</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros5" aria-controls="otros5" role="tab" data-toggle="tab">P. 5</a></li>
					<li role="presentation"><a href="#otros6" aria-controls="otros6" role="tab" data-toggle="tab">P. 6</a></li>
					<li role="presentation"><a href="#otros7" aria-controls="otros7" role="tab" data-toggle="tab">P. 7</a></li>
					<li role="presentation"><a href="#otros8" aria-controls="otros8" role="tab" data-toggle="tab">P. 8</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros5">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene en cuenta, en la comunicaci�n externa y publicidad, la utilizaci�n de un lenguaje inclusivo (im�genes no estereotipadas, visibilizando a mujeres y hombres de manera equilibrada, y lenguaje no sexista)?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q4_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q4_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q4_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros6">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">Se ha comunicado hacia el exterior el compromiso de la empresa/organizaci�n con la igualdad de g�nero</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q5_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q5_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q5_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros7">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene en cuenta, en la comunicaci�n externa y publicidad, la utilizaci�n im�genes de hombres y de mujeres desempe�ando roles distintos de los tradicionales de g�nero ?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q6_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q6_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q6_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="otros8">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �considera que la comunicaci�n externa contempla criterios de igualdad y no discriminaci�n por cuesti�n de sexo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q44_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q44_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q44_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom "  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-2" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin otros-comunicacion-externa -->
	<div id="otros-reclutamiento">
		<h5>
			<div class="label label-primary padding-small">PROCESOS DE RECLUTAMIENTO Y SELECCI�N DE CONTRATACI�N</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros9" aria-controls="otros9" role="tab" data-toggle="tab">P. 9</a></li>
					<li role="presentation"><a href="#otros10" aria-controls="otros10" role="tab" data-toggle="tab">P. 10</a></li>
					<li role="presentation"><a href="#otros11" aria-controls="otros11" role="tab" data-toggle="tab">P. 11</a></li>
					<li role="presentation"><a href="#otros12" aria-controls="otros12" role="tab" data-toggle="tab">P. 12</a></li>
					<li role="presentation"><a href="#otros13" aria-controls="otros13" role="tab" data-toggle="tab">P. 13</a></li>
					<li role="presentation"><a href="#otros14" aria-controls="otros14" role="tab" data-toggle="tab">P. 14</a></li>
					<li role="presentation"><a href="#otros15" aria-controls="otros15" role="tab" data-toggle="tab">P. 15</a></li>
					<li role="presentation"><a href="#otros16" aria-controls="otros16" role="tab" data-toggle="tab">P. 16</a></li>
					<li role="presentation"><a href="#otros17" aria-controls="otros17" role="tab" data-toggle="tab">P. 17</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros9">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene metas de contrataci�n para la promoci�n de la equidad de g�nero en todos los niveles jer�rquicos de todas las �reas?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q7_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q7_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q7_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros10">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En la empresa/organizaci�n �Se llevan o se han llevado a cabo procesos de reclutamiento y selecci�n dirigidos espec�ficamente a contratar mujeres para equilibrar su presencia en la plantilla?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q8_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q8_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q8_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros11">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">Cuando se lleva a cabo un proceso de reclutamiento y selecci�n, en los anuncios para la captaci�n, �se pone especial cuidado en que �stos tengan un lenguaje inclusivo y sean atrayentes tanto para hombres como para mujeres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q9_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q9_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q9_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros12">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En la empresa/organizaci�n todas las personas que entran lo hacen a trav�s de un procedimiento formal y documentado de b�squeda y selecci�n de personal?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q10_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q10_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q10_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros13">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Existen, en la empresa/ organizaci�n, puestos o tipos de tareas que est�n reservados s�lo a las mujeres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q11_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q11_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q11_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros14">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Existen, en la empresa/ organizaci�n, puestos o tipos de tareas que est�n reservados s�lo a los hombres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q12_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q12_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q12_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros15">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Tienen mujeres y hombres las mismas facilidades para acceder a la promoci�n sobre puestos vacantes?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q13_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q13_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q13_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros16">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La pol�tica de la organizaci�n proh�be expresamente que se produzcan desvinculaciones de procesos de reclutamiento y selecci�n basadas en el estado civil , en la edad, en el embarazo o la posibilidad del embarazo, la etnia?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q14_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q14_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q14_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros17">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �considera que los procesos de reclutamiento, selecci�n y contrataci�n son igualitarios para mujeres y hombres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q45_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q45_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q45_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-3" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin reclutamiento -->
	<div id="otros-promoci�n">
		<h5>
			<div class="label label-primary padding-small">PROCESOS DE PROMOCI�N</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h3 class="text-center">PREGUNTAS DESGLOSADAS</h3>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros18" aria-controls="otros18" role="tab" data-toggle="tab">P. 18</a></li>
					<li role="presentation"><a href="#otros19" aria-controls="otros19" role="tab" data-toggle="tab">P. 19</a></li>
					<li role="presentation"><a href="#otros20" aria-controls="otros20" role="tab" data-toggle="tab">P. 20</a></li>
					<li role="presentation"><a href="#otros21" aria-controls="otros21" role="tab" data-toggle="tab">P. 21</a></li>
					<li role="presentation"><a href="#otros22" aria-controls="otros22" role="tab" data-toggle="tab">P. 22</a></li>
					<li role="presentation"><a href="#otros23" aria-controls="otros23" role="tab" data-toggle="tab">P. 23</a></li>
					<li role="presentation"><a href="#otros24" aria-controls="otros24" role="tab" data-toggle="tab">P. 24</a></li>
					<li role="presentation"><a href="#otros25" aria-controls="otros25" role="tab" data-toggle="tab">P. 25</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros18">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n realiza habitualmente evaluaciones objetivas y equitativas del desempe�o de las personas empleadas?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q15_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q15_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q15_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros19">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Cuenta la empresa/organizaci�n con mecanismos para asegurar que la promoci�n de personal est� en coherencia con la evaluaci�n de desempe�o del personal, sin sesgos de sexo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q16_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q16_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q16_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros20">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La pol�tica de promoci�n interna de la empresa/organizaci�n est� dise�ada para garantizar la participaci�n femenina equitativa con la masculina en los procesos decisorios y en la gesti�n en todos los niveles y �reas de la empresa/organizaci�n?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q17_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q17_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q17_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros21">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene objetivos concretos de promoci�n y movilidad horizontal que reviertan positivamente en la equidad de g�nero en todos los niveles jer�rquicos de todas las �reas o departamentos?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q18_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q18_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q18_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros22">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Los procesos de promoci�n establecen mecanismos para asegurar que tanto hombres como mujeres tengan acceso a la promoci�n sobre oportunidades de desarrollo profesional?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q19_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q19_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q19_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros23">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">Cuando se lleva a cabo un proceso de promoci�n �se asegura que, entre las candidaturas a valorar y considerar, exista una representaci�n paritaria de ambos sexos?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q20_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q20_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q20_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros24">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Cuenta la empresa/organizaci�n con planes de carrera que permiten orientar el desarrollo profesionales de las personas?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q21_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q21_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q21_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros25">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �cree que los procesos de promoci�n contemplan criterios de igualdad y no discriminaci�n por raz�n de sexo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q46_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q46_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q46_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h3 class="text-center">RESUMEN DE LAS RESPUESTAS</h3>
			<div id="gr-otros-4" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin PROMOCION -->
	<div id="otros-capacitacion">
		<h5>
			<div class="label label-primary padding-small">PROCESOS DE CAPACITACI�N</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros26" aria-controls="otros26" role="tab" data-toggle="tab">P. 26</a></li>
					<li role="presentation"><a href="#otros27" aria-controls="otros27" role="tab" data-toggle="tab">P. 27</a></li>
					<li role="presentation"><a href="#otros28" aria-controls="otros28" role="tab" data-toggle="tab">P. 28</a></li>
					<li role="presentation"><a href="#otros29" aria-controls="otros29" role="tab" data-toggle="tab">P. 29</a></li>
					<li role="presentation"><a href="#otros30" aria-controls="otros30" role="tab" data-toggle="tab">P. 30</a></li>
					<li role="presentation"><a href="#otros31" aria-controls="otros31" role="tab" data-toggle="tab">P. 31</a></li>
					<li role="presentation"><a href="#otros32" aria-controls="otros32" role="tab" data-toggle="tab">P. 32</a></li>
					<li role="presentation"><a href="#otros33" aria-controls="otros33" role="tab" data-toggle="tab">P. 33</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros26">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene un plan de capacitaci�n coherente con la detecci�n de necesidades previamente consultada entre la plantilla (hombres y mujeres)?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q22_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q22_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q22_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros27">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n tiene objetivos concretos de capacitaci�n o formaci�n interna de la equidad de g�nero en todos los niveles jer�rquicos de todas las �reas?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q23_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q23_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q23_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros28">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n cuenta con mecanismos para asegurar un acceso igualitario a la capacitaci�n en cantidad e horas de capacitaci�n, tipo de capacitaci�n y recursos asignados?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q24_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q24_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q24_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros29">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n cuenta con mecanismos/instrumentos que permitan verificar que la capacitaci�n se realiza en horario o jornada laboral?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q25_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q25_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q25_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros30">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n promueve que mujeres y hombres accedan a capacitaciones para prepararlos/as en puestos y funciones no tradicionales de su sexo o en las cuales no se encuentran adecuadamente representados?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q26_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q26_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q26_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros31">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Los cursos de capacitaci�n de la empresa/organizaci�n se realizan en las propias instalaciones, tomando en cuenta que la duraci�n, frecuencia y horarios no interfieran con las responsabilidades familiares de los/las empleados/as para asegurar su participaci�n?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q27_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q27_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q27_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros32">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n ofrece anualmente , en todos los niveles, capacitaci�n en g�nero a cargo de profesionales especializados en el tema. (Prioritariamente alta gerencia, jefaturas, recursos humanos, sindicatos/ trabajadores-as, comit�/comisiones/mesas de g�nero de la empresa/organizaci�n)?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q28_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q28_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q28_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros33">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �considera que los procesos de capacitaci�n/formaci�n contemplan criterios de igualdad y no discriminaci�n por raz�n de sexo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q47_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q47_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q47_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-5" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin capacitacion -->
	<div id="otros-salario">
		<h5>
			<div class="label label-primary padding-small">POL�TICA SALARIAL</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros35" aria-controls="otros34" role="tab" data-toggle="tab">P. 34</a></li>
					<li role="presentation"><a href="#otros35" aria-controls="otros35" role="tab" data-toggle="tab">P. 35</a></li>
					<li role="presentation"><a href="#otros36" aria-controls="otros36" role="tab" data-toggle="tab">P. 36</a></li>
					<li role="presentation"><a href="#otros37" aria-controls="otros37" role="tab" data-toggle="tab">P. 37</a></li>
					<li role="presentation"><a href="#otros38" aria-controls="otros38" role="tab" data-toggle="tab">P. 38</a></li>
				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros34">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La pol�tica de la empresa/organizaci�n es expl�cita en lo que se refiere a garantizar la remuneraci�n de la plantilla desde una perspectiva de igualdad de g�nero, asegurando que hombres y mujeres obtengan el mismo salario para un mismo trabajo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q29_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q29_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q29_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros35">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n cuenta con un sistema de informaci�n y comunicaci�n transparente sobre la pol�tica de compensaciones y que permite clarificar dudas del personal?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q30_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q30_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q30_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros36">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n cuenta con una pol�tica de remuneraci�n y compensaciones que asegure la implementaci�n del principio de igual remuneraci�n por igual trabajo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q31_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q31_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q31_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros37">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Los criterios de asignaci�n de remuneraciones aplican un m�todo de c�lculo de incentivos/prestaciones/beneficios sin sesgos de g�nero, que son informados y conocidos por toda la plantilla?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q32_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q32_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q32_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros38">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Tiene la empresa/organizaci�n una pol�tica salarial equitativa desde el punto de vista de g�nero y que es aplicada a todos los puestos de la empresa/organizaci�n?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q33_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q33_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q33_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-6" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin salario -->
	<div id="otros-prevencion-acoso">
		<h5>
			<div class="label label-primary padding-small">PREVENCI�N Y TRATAMIENTO DEL ACOSO SEXUAL Y ACOSO POR RAZ�N DE SEXO</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros39" aria-controls="otros39" role="tab" data-toggle="tab">P. 39</a></li>
					<li role="presentation"><a href="#otros40" aria-controls="otros40" role="tab" data-toggle="tab">P. 40</a></li>
					<li role="presentation"><a href="#otros41" aria-controls="otros41" role="tab" data-toggle="tab">P. 41</a></li>
					<li role="presentation"><a href="#otros42" aria-controls="otros42" role="tab" data-toggle="tab">P. 42</a></li>
					<li role="presentation"><a href="#otros43" aria-controls="otros43" role="tab" data-toggle="tab">P. 43</a></li>
					<li role="presentation"><a href="#otros44" aria-controls="otros44" role="tab" data-toggle="tab">P. 44</a></li>
					<li role="presentation"><a href="#otros45" aria-controls="otros45" role="tab" data-toggle="tab">P. 45</a></li>
					<li role="presentation"><a href="#otros46" aria-controls="otros46" role="tab" data-toggle="tab">P. 46</a></li>
					<li role="presentation"><a href="#otros47" aria-controls="otros47" role="tab" data-toggle="tab">P. 47</a></li>
					<li role="presentation"><a href="#otros48" aria-controls="otros48" role="tab" data-toggle="tab">P. 48</a></li>
					<li role="presentation"><a href="#otros49" aria-controls="otros49" role="tab" data-toggle="tab">P. 49</a></li>

				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros39">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Se informa a la plantilla sobre la prohibici�n expresa de la empresa/organizaci�n de actividades que puedan acosar a las mujeres en el �mbito laboral?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q34_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q34_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q34_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros40">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Se aplica una pol�tica institucional espec�fica que regule la prevenci�n, sanci�n y eliminaci�n del acoso sexual en base a la legislaci�n nacional?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q35_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q35_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q35_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros41">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n lleva a cabo anualmente acciones para que las personas responsables de establecer medidas para prevenir, detectar y actuar en casos de acoso tengan formaci�n actualizada sobre g�nero y acoso sexual?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q36_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q36_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q36_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros42">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Se ha asignado a una persona, comit� o comisi�n responsable de establecer medidas para prevenir, detectar y actuar en casos de acoso?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q37_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q37_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q37_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros43">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Se realiza en la empresa/organizaci�n un seguimiento de la incidencia de casos de acoso en la empresa/organizaci�n?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q38_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q38_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q38_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros44">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n ha impartido talleres o charlas de sensibilizaci�n a la todo el personal sobre el acoso sexual y laboral?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q39_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q39_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q39_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros45">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En la empresa/organizaci�n existe y se aplica un procedimiento documentado para la detecci�n y el tratamiento del acoso sexual y laboral?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q40_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q40_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q40_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros46">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Se da seguimiento, en la empresa, a las denuncias que sobre acoso laboral y se aplican sanciones si se demuestran las denuncias?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q41_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q41_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q41_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros47">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�La empresa/organizaci�n lleva a cabo anualmente acciones de sensibilizaci�n para evitar el acoso, las actitudes sexistas y el trato discriminatorio en la empresa/organizaci�n?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q42_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q42_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q42_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros48">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �cree que todas las personas de la plantilla tienen conocimiento sobre la existencia del mecanismo y/o protocolo de prevenci�n y actuaci�n en caso de acoso sexual y lo considera de f�cil acceso?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q48_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q48_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q48_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros49">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �considera que este mecanismo o protocolo puede ser eficaz si se recurre a �l?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q49_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q49_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q49_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-7" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin acoso -->
	<div id="otros-conciliacion">
		<h5>
			<div class="label label-primary padding-small">POL�TICA A FAVOR DE LA CONCILIACI�N DE LA VIDA FAMILIAR, PROFESIONAL Y PERSONAL CON CORRESPONSABILIDAD</div>
		</h5>

		<div class="col-xs-12 text-center">
			<!-- Nav tabs -->
			<div class="blockD">
				<h4 class="text-center">PREGUNTAS DESGLOSADAS</h4>
				<ul class="nav nav-pills super-letra-indicadores centeredD" role="tablist">
					<li role="presentation" class="active"><a href="#otros50" aria-controls="otros50" role="tab" data-toggle="tab">P. 50</a></li>
					<li role="presentation"><a href="#otros51" aria-controls="otros51" role="tab" data-toggle="tab">P. 51</a></li>
					<li role="presentation"><a href="#otros52" aria-controls="otros52" role="tab" data-toggle="tab">P. 52</a></li>
					<li role="presentation"><a href="#otros53" aria-controls="otros53" role="tab" data-toggle="tab">P. 53</a></li>
					<li role="presentation"><a href="#otros54" aria-controls="otros54" role="tab" data-toggle="tab">P. 54</a></li>
					<li role="presentation"><a href="#otros55" aria-controls="otros55" role="tab" data-toggle="tab">P. 55</a></li>
					<li role="presentation"><a href="#otros56" aria-controls="otros56" role="tab" data-toggle="tab">P. 56</a></li>
					<li role="presentation"><a href="#otros57" aria-controls="otros57" role="tab" data-toggle="tab">P. 57</a></li>
					<li role="presentation"><a href="#otros58" aria-controls="otros58" role="tab" data-toggle="tab">P. 58</a></li>
					<li role="presentation"><a href="#otros59" aria-controls="otros59" role="tab" data-toggle="tab">P. 59</a></li>


				</ul>
			</div>	 
			<!-- Tab panes -->
			<div class="marco-gris-pane centeredD col-xs-12">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="otros50">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Usted cree que en esta empresa/organizaci�n alguna mujer ha tenido que renunciar por situaci�n de maternidad y/o cuidado de la familia?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q50_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q50_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q50_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane " id="otros51">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En su empresa, usted considera, que se cumplen los beneficios de las licencias por maternidad y paternidad, de acuerdo a lo que estipula la legislaci�n vigente?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q51_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q51_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q51_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane " id="otros52">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En su empresa/organizaci�n se consulta a los trabajadores y trabajadoras acerca de necesidades familiares y personales que podr�an ser compatibilizadas con el trabajo?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q52_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q52_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q52_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros53">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�Considera que su empresa/organizaci�n fomenta la co-parentalidad, es decir promueve el cuidado de hijos e hijas tanto de hombres como de mujeres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q53_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q53_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q53_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros54">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En esta empresa/organizaci�n existen apoyos para servicios de cuidado para hijos/as y otras personas (detallar tipo de servicios: guarder�a en la empresa, subvenciones econ�micas para guarder�as; subvenciones para el cuidado de otro tipo de dependientes; apoyo en el verano para hijos/as, etc.).</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q54_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q54_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q54_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros55">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En su empresa/organizaci�n existe alg�n sistema de jornada reducida, horarios flexibles y tele-trabajo el personal?(por ejemplo: jornadas reducidas, semana reducida, flexibilidad de horario, jornada coincidente con horario escolar, trabajo partido, tele-trabajo, etc.).</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q55_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q55_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q55_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros56">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En la empresa/organizaci�n a las personas se les anima a que equilibren su vida de trabajo y su vida personal?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q56_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q56_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q56_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros57">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�El personal cuenta con la posibilidad de solicitar permisos para ausentarse dentro del horario laboral para atender situaciones particulares, familiares o escolares de car�cter extraordinario?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q57_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q57_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q57_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros58">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">En definitiva y a la vista de sus respuestas anteriores, �cree que estas pol�ticas en favor de la conciliaci�n de la vida familiar, laboral de la empresa/organizaci�n se realizan de forma equitativa y se hacen desde criterios de igualdad de mujeres y hombres?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q58_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q58_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q58_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane 	" id="otros59">
						<div class="col-xs-12  panel-heading " >
							<p class=" col-xs-12 reset-margin">�En definitiva y a la vista de sus respuestas anteriores, �cree que toda la plantilla conoce la existencia de las medidas de conciliaci�n que facilita la empresa/organizaci�n y las consideran de f�cil acceso?</p>
							<h4 class=" col-xs-12"><span class="badge"><% if (session.getAttribute("temp_admin_organization_q59_lkup").equals("89")) { %>Siempre <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/green_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q59_lkup").equals("90")) { %>Algunas veces <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/yellow_mini.png"><% } else if (session.getAttribute("temp_admin_organization_q59_lkup").equals("91")) { %>Nunca <img class="indicador-calificacion" alt="Evaluaci�n positiva o negativa" src="/indica/assets/images/red_mini.png"><% } %></span></h4>
						</div>
					</div>
				</div> <!-- fin de tab-content -->
			</div> <!-- fin de tab panes -->
		</div> <!-- fin de tabpanel -->
		<div class="col-xs-12 separador-bottom"  >
			<h4 class="text-center">RESUMEN DE LAS RESPUESTAS</h4>
			<div id="gr-otros-8" class="col-md-8 col-centered"></div>
		</div>
	</div> <!-- fin cfls -->
</div> <!-- fin de container -->
</section>

<!-- Jquery Framework -->
<script defer src="http://code.jquery.com/jquery-2.1.0.min.js"></script>

<!-- Bootstrap Framework -->
<script defer src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>	

<!-- ENERO 20 LIBRERIA DE HIGHCHART -->
<script defer src="/Highcharts-4.0.4/js/highcharts.js"></script>
<script defer src="/Highcharts-4.0.4/js/highcharts-more.js"></script>
<script defer src="/indica/assets/js/highchart-theme/indica.js"></script>	
<script defer src="/indica/es/otros_datos.jsp"></script>