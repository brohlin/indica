<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=empresa");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%	
	DynStringArray parameters = new DynStringArray();
	// DbResults db_p_get_pais_de_ubicacion_lkup = null;
	// DbResults db_p_get_naturaleza_juridica_lkup = null;
	// DbResults db_p_get_sector_de_actividad_lkup = null;
	// DbResults db_p_get_mercado_lkup = null;
	// DbResults db_p_get_num_de_personas_trabajadores = null;
	// DbResults db_p_get_facturacion_anual_lkup = null;
	DbResults db = null;
	int size = 0;
	
	if (p_organization_id != null) {
		
		parameters.add(p_organization_id);
		db = Database.callProcResults("p_get_admin_organization", parameters); 
		// db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_existing_pais_de_ubicacion_lkup", parameters);
		// db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_existing_naturaleza_juridica_lkup", parameters);
		// db_p_get_sector_de_actividad_lkup = Database.callProcResults("p_get_existing_sector_de_actividad_lkup", parameters);
		// db_p_get_mercado_lkup = Database.callProcResults("p_get_existing_mercado_lkup", parameters);
		// db_p_get_num_de_personas_trabajadores = Database.callProcResults("p_get_existing_num_de_personas_trabajadores", parameters);
		// db_p_get_facturacion_anual_lkup = Database.callProcResults("p_get_existing_facturacion_anual_lkup", parameters);

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
			session.setAttribute("temp_admin_organization_resultados_informe",db.getRow(size).get(299));	
			session.setAttribute("temp_admin_organization_resultados_encuesta",db.getRow(size).get(300));
			size++;
		}	
	} else {
		// db_p_get_pais_de_ubicacion_lkup = Database.callProcResults("p_get_pais_de_ubicacion_lkup", parameters);
		// db_p_get_naturaleza_juridica_lkup = Database.callProcResults("p_get_naturaleza_juridica_lkup", parameters);	
	}
	
	
%>

	<section role="dialog" class="borde-superior fondo-gris">
		<header>
			<div class="well">
				<h1 class="text-center text-white"><fmt:message key="empresa.label.element1" /></h1>
			</div>
			<div class="well-2 bc-purple">

<%
	if (p_section.equals("caracterizacion_basica")) {
%>
				<h3 class="text-center text-white"><fmt:message key="empresa.label.element2" /></h3>
<%
	} else if (p_section.equals("plantilla")) {
%>
				<h3 class="text-center text-white"><fmt:message key="empresa.label.element3" /></h3>
<%
	} else if (p_section.equals("condiciones_laborales")) {
%>
				<h3 class="text-center text-white"><fmt:message key="empresa.label.element4" /></h3>
<%
	} else if (p_section.equals("gestion_del_personal")) {
%>
				<h3 class="text-center text-white"><fmt:message key="empresa.label.element5" /></h3>
<%
	} else if (p_section.equals("otros_datos")) {
%>
				<h3 class="text-center text-white"><fmt:message key="empresa.label.element6" /></h3>
<%
	} else if (p_section.equals("empresa_fin")) {
		%>
		<h3 class="text-center text-white">&nbsp;</h3>
<%
} 
%>

			</div>
			
		<%@include file="./table_fields.jsp" %>
		
		</header>
		<div class="container">
			<nav class="col-xs-12 col-lg-3 separador-top navegacion2 side-menu" role="navigation">
					
					<ul class="nav nav-stacked text-center">
						<li class="titulo-input"><b><% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_nm").toString() %><% } %></b></li>
						<li <% if (p_section.equals("caracterizacion_basica")) { %>  class="active-item" <% } %>><a  href="/indica/es/main.jsp?target=empresa&organization_id=<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>&section=caracterizacion_basica"><fmt:message key="empresa.label.element7" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cb").toString() %></a></li>
						<li <% if (p_section.equals("plantilla")) { %>  class="active-item" <% } %>><a href="/indica/es/main.jsp?target=empresa&organization_id=<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>&section=plantilla"><fmt:message key="empresa.label.element8" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_plantilla").toString() %></a></li>
						<li <% if (p_section.equals("condiciones_laborales")) { %>  class="active-item" <% } %>><a href="/indica/es/main.jsp?target=empresa&organization_id=<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>&section=condiciones_laborales"><fmt:message key="empresa.label.element9" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cl").toString() %></a></li>
						<li <% if (p_section.equals("gestion_del_personal")) { %>  class="active-item" <% } %>><a href="/indica/es/main.jsp?target=empresa&organization_id=<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>&section=gestion_del_personal"><fmt:message key="empresa.label.element10" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_gestion_del_personal").toString() %></a></li>
						<li <% if (p_section.equals("otros_datos")) { %>  class="active-item" <% } %>><a href="/indica/es/main.jsp?target=empresa&organization_id=<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>&section=otros_datos"><fmt:message key="empresa.label.element11" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_otros_datos").toString() %></a></li>
<%
	if ( session.getAttribute("temp_admin_organization_completed").toString().equals("N")) {
%>
						<li>
							<form role="form" action="validate_empresa_completed.jsp" method="post" class="form-plantilla" name="empresa_completed">
								<input name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
								<input name="completed" value="Y" type="hidden">		
								<input name="language" value="${language}" type="hidden">		
								<button type="submit" class="btn btn-info btn-block separador-top" 
	<%
		if ( !session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa").toString().equals("100") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa") ) {
	%>
			onclick="return confirm('<fmt:message key="empresa.label.element12" />')"
	<%
		} else if ( session.getAttribute("temp_user_role_nm").toString().equals("Empresa") ) {
	%>
			onclick="return confirm('<fmt:message key="empresa.label.element13" />')"
	<%
		}
	%>			
								><fmt:message key="empresa.label.element14" /></button>
							</form>
						</li>
<%
	} else if ( session.getAttribute("temp_admin_organization_completed").toString().equals("Y") ) {
%>						
						<li><fmt:message key="empresa.label.element15" /> <%= session.getAttribute("temp_admin_organization_last_mod_tmstmp").toString() %> </li>
						<li><a href="/indica/ViewPDF?file=resultados_informe&organization_id=<%= session.getAttribute("temp_admin_organization_id").toString() %>" target="_blank"><img alt="PDF" src="/indica/assets/images/download.jpg" width="50" height="50"></a> <fmt:message key="empresa.label.element16" /></li>
						<li><a href="/indica/ViewPDF?file=resultados_encuesta&organization_id=<%= session.getAttribute("temp_admin_organization_id").toString() %>" target="_blank"><img alt="PDF" src="/indica/assets/images/download.jpg" width="50" height="50"></a> <fmt:message key="empresa.label.element17" /></li>
<%
	}
%>	

<%
	if (session.getAttribute("temp_user_role_nm").toString().equals("Admin") && session.getAttribute("temp_admin_organization_completed").toString().equals("Y")) {
%>
						
						<li><a href="/indica/es/main.jsp?target=empresa_resultados_highcharts&organization_id=<%= session.getAttribute("temp_admin_organization_id").toString() %>"><fmt:message key="empresa.label.element18" /></a></li>
						<li>
							<form role="form" action="validate_empresa_reset_completed.jsp" method="post" class="form-plantilla" name="empresa_reset_completed">
								<input name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
								<input name="completed" value="N" type="hidden">				
								<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa.label.element19" /></button>
							</form>
						</li>
<%
	}
%>
					</ul>
			</nav>
			<div class="col-xs-12 col-lg-8 cuadrado separador-top separador-bottom">
<%
	if (p_section.equals("caracterizacion_basica")) {
%>
		<!-- %@include file="empresa_caracterizacion_basica.jsp"% -->
		<jsp:include page="empresa_caracterizacion_basica.jsp" flush="true" />
<%
	} else if (p_section.equals("plantilla")) {
%>
		<jsp:include page="empresa_plantilla.jsp" flush="true" />
<%
	} else if (p_section.equals("condiciones_laborales")) {
%>
		<jsp:include page="empresa_condiciones_laborales.jsp" flush="true" />
<%
	} else if (p_section.equals("gestion_del_personal")) {
%>
		<jsp:include page="empresa_gestion_del_personal.jsp" flush="true" />
<%
	} else if (p_section.equals("otros_datos")) {
%>
 		<jsp:include page="empresa_otros_datos.jsp" flush="true" />
<%
	} else if (p_section.equals("empresa_fin")) {
%>
		<%@include file="./empresa_fin.jsp" %>
<%
	}
%>

		</div> <!-- end col-8 -->
		</div> <!-- end container -->
	</section>

<%
	}
%>
	