<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
	String mQuery = "update declaracion_jurada set " + 
					"pre_primer_nombre=?, " + 
					"pre_apellido_paterno=?, " + 
					"pre_apellido_materno=?, " + 
					"pre_otros_nombres=?, " + 
					"pre_fecha_de_nacimiento=?, " + 
					"pre_ciudad_de_nacimiento=?, " + 
					"pre_pais_de_nacimiento_lkup=?, " + 
					"pre_genero_lkup=?, " + 
					"pre_nacionalidad_lkup=?, " + 
					"pre_otro_estatus_migratoria=?, " + 
					"pre_otro_estatus_migratoria_paises=?, " + 
					"pre_etnico_o_tribu=?, " + 
					"pre_religion_lkup=?, " + 
					"pre_idioma_lkup=?, " + 
					"pre_otros_idiomas=?, " + 
					"pre_direccion_actual=?, " + 
					"pre_telefono1=?, " + 
					"pre_pasaporte=?, " + 
					"pre_otros_documentos=?, " + 
					"pre_edu_nombre=?, " + 
					"pre_edu_lugar=?, " + 
					"pre_edu_desde=?, " + 
					"pre_edu_hasta=?, " + 
					"pre_edu_titulo=?, " + 
					"pre_edu_nombre2=?, " + 
					"pre_edu_lugar2=?, " + 
					"pre_edu_desde2=?, " + 
					"pre_edu_hasta2=?, " + 
					"pre_edu_titulo2=?, " + 
					"pre_ocu_empleador=?, " + 
					"pre_ocu_lugar=?, " + 
					"pre_ocu_desde=?, " + 
					"pre_ocu_hasta=?, " + 
					"pre_ocu_puesto=?, " + 
					"pre_mil_nombre=?, " + 
					"pre_mil_lugar=?, " + 
					"pre_mil_desde=?, " + 
					"pre_mil_hasta=?, " + 
					"pre_mil_puesto=?, " + 
					"pre_org_nombre=?, " + 
					"pre_org_lugar=?, " + 
					"pre_org_desde=?, " + 
					"pre_org_hasta=?, " + 
					"pre_org_rol=?, " + 
					"pre_org_nombre2=?, " + 
					"pre_org_lugar2=?, " + 
					"pre_org_desde2=?, " + 
					"pre_org_hasta2=?, " + 
					"pre_org_rol2=?, " + 
					"pre_arrest_fecha=?, " + 
					"pre_arrest_lugar=?, " + 
					"pre_arrest_delito=?, " + 
					"pre_arrest_sentencia=?, " + 
					"pre_arrest_fecha2=?, " + 
					"pre_arrest_lugar2=?, " + 
					"pre_arrest_delito2=?, " + 
					"pre_arrest_sentencia2=?, " + 
					"pre_fam_madre_nombre=?, " + 
					"pre_fam_madre_dob=?, " + 
					"pre_fam_madre_lugar=?, " + 
					"pre_fam_padre_nombre=?, " + 
					"pre_fam_padre_dob=?, " + 
					"pre_fam_padre_lugar=?, " + 
					"pre_fam_spouse_nombre=?, " + 
					"pre_fam_spouse_dob=?, " + 
					"pre_fam_spouse_lugar=?, " + 
					"pre_fam_child1_nombre=?, " + 
					"pre_fam_child1_dob=?, " + 
					"pre_fam_child1_lugar=?, " + 
					"pre_fam_child2_nombre=?, " + 
					"pre_fam_child2_dob=?, " + 
					"pre_fam_child2_lugar=?, " + 
					"pre_fam_child3_nombre=?, " + 
					"pre_fam_child3_dob=?, " + 
					"pre_fam_child3_lugar=?, " + 
					"pre_fam_child4_nombre=?, " + 
					"pre_fam_child4_dob=?, " + 
					"pre_fam_child4_lugar=?, " + 
					"pre_fam_child5_nombre=?, " + 
					"pre_fam_child5_dob=?, " + 
					"pre_fam_child5_lugar=?, " + 
					"pre_fam_sibling1_nombre=?, " + 
					"pre_fam_sibling1_dob=?, " + 
					"pre_fam_sibling1_lugar=?, " + 
					"pre_fam_sibling2_nombre=?, " + 
					"pre_fam_sibling2_dob=?, " + 
					"pre_fam_sibling2_lugar=?, " + 
					"pre_fam_sibling3_nombre=?, " + 
					"pre_fam_sibling3_dob=?, " + 
					"pre_fam_sibling3_lugar=?, " + 
					"pre_fam_sibling4_nombre=?, " + 
					"pre_fam_sibling4_dob=?, " + 
					"pre_fam_sibling4_lugar=?, " + 
					"pre_fam_sibling5_nombre=?, " + 
					"pre_fam_sibling5_dob=?, " + 
					"pre_fam_sibling5_lugar=?, " + 
					"pre_fam_otra1_relacion=?, " + 
					"pre_fam_otra1_nombre=?, " + 
					"pre_fam_otra1_dob=?, " + 
					"pre_fam_otra1_lugar=?, " + 
					"pre_fam_otra2_relacion=?, " + 
					"pre_fam_otra2_nombre=?, " + 
					"pre_fam_otra2_dob=?, " + 
					"pre_fam_otra2_lugar=?, " + 
					"pre_fam_otra3_relacion=?, " + 
					"pre_fam_otra3_nombre=?, " + 
					"pre_fam_otra3_dob=?, " + 
					"pre_fam_otra3_lugar=?, " + 
					"pre_fecha_de_salida_origen=?, " +
					"pre_viaje1_pais=?, " + 
					"pre_viaje1_desde=?, " + 
					"pre_viaje1_hasta=?, " + 
					"pre_viaje1_medio=?, " + 
					"pre_viaje2_pais=?, " + 
					"pre_viaje2_desde=?, " + 
					"pre_viaje2_hasta=?, " + 
					"pre_viaje2_medio=?, " + 
					"pre_viaje3_pais=?, " + 
					"pre_viaje3_desde=?, " + 
					"pre_viaje3_hasta=?, " + 
					"pre_viaje3_medio=?, " + 
					"pre_viaje4_pais=?, " + 
					"pre_viaje4_desde=?, " + 
					"pre_viaje4_hasta=?, " + 
					"pre_viaje4_medio=?, " + 
					"pre_viaje5_pais=?, " + 
					"pre_viaje5_desde=?, " + 
					"pre_viaje5_hasta=?, " + 
					"pre_viaje5_medio=?, " + 
					"pre_viaje6_pais=?, " + 
					"pre_viaje6_desde=?, " + 
					"pre_viaje6_hasta=?, " + 
					"pre_viaje6_medio=?, " + 
					"pre_fundado_temor=?, " + 
					"pre_fundado_temor_partb=?, " + 
					"pre_pref=?, " + 
					"pre_pref_sexo=?, " + 
					"pre_pref_idioma=?, " + 
					"pre_fecha_solicitud_onpar=?, " + 
					"pre_solicitud_preparado_por=?, " + 
					"pre_ui_nombre_recibio=?, " + 
					"pre_ui_fecha_recibido=?, " + 
					"pre_fecha_llegada_panama=?, " +
					"pre_estatus_civil_lkup=?, " +
					"pre_arrest_confirm=?, " +
					"last_mod_tmstmp = now(),  " +
					"last_user_id=? " + 
					  "where id = ?";
	
	Connection con = null;
	PreparedStatement prest = null;
	

	DataSource OnparDB;
	javax.naming.Context initCtx = new javax.naming.InitialContext();
	javax.naming.Context envCtx = (javax.naming.Context) initCtx.lookup("java:comp/env");
	OnparDB = (DataSource) envCtx.lookup("jdbc/OnparDB");

	try{
		if(OnparDB == null) {
			javax.naming.Context initCtx1 = new javax.naming.InitialContext();
			javax.naming.Context envCtx1 = (javax.naming.Context) initCtx1.lookup("java:comp/env");
			OnparDB = (DataSource) envCtx1.lookup("jdbc/OnparDB");
		}
	} catch(Exception e){
		System.out.println("inside the context exception");
		e.printStackTrace();
	}


	con = OnparDB.getConnection();	
	
	try{
		if (session.getAttribute("email") != null) {


			prest=con.prepareStatement(mQuery);
			prest.setString(1,request.getParameter("pre_primer_nombre"));
			prest.setString(2,request.getParameter("pre_apellido_paterno"));
			prest.setString(3,request.getParameter("pre_apellido_materno"));
			prest.setString(4,request.getParameter("pre_otros_nombres"));
			prest.setString(5,request.getParameter("pre_fecha_de_nacimiento"));
			prest.setString(6,request.getParameter("pre_ciudad_de_nacimiento"));
			prest.setString(7,request.getParameter("pre_pais_de_nacimiento_lkup"));
			prest.setString(8,request.getParameter("pre_genero_lkup"));
			prest.setString(9,request.getParameter("pre_nacionalidad_lkup"));
			prest.setString(10,request.getParameter("pre_otro_estatus_migratoria"));
			prest.setString(11,request.getParameter("pre_otro_estatus_migratoria_paises"));
			prest.setString(12,request.getParameter("pre_etnico_o_tribu"));
			prest.setString(13,request.getParameter("pre_religion_lkup"));
			prest.setString(14,request.getParameter("pre_idioma_lkup"));
			prest.setString(15,request.getParameter("pre_otros_idiomas"));
			prest.setString(16,request.getParameter("pre_direccion_actual"));
			prest.setString(17,request.getParameter("pre_telefono1"));
			prest.setString(18,request.getParameter("pre_pasaporte"));

			prest.setString(19,request.getParameter("pre_otros_documentos"));

			prest.setString(20,request.getParameter("pre_edu_nombre"));
			prest.setString(21,request.getParameter("pre_edu_lugar"));
			prest.setString(22,request.getParameter("pre_edu_desde"));
			prest.setString(23,request.getParameter("pre_edu_hasta"));
			prest.setString(24,request.getParameter("pre_edu_titulo"));
			prest.setString(25,request.getParameter("pre_edu_nombre2"));
			prest.setString(26,request.getParameter("pre_edu_lugar2"));
			prest.setString(27,request.getParameter("pre_edu_desde2"));
			prest.setString(28,request.getParameter("pre_edu_hasta2"));
			prest.setString(29,request.getParameter("pre_edu_titulo2"));
			prest.setString(30,request.getParameter("pre_ocu_empleador"));
			prest.setString(31,request.getParameter("pre_ocu_lugar"));
			prest.setString(32,request.getParameter("pre_ocu_desde"));
			prest.setString(33,request.getParameter("pre_ocu_hasta"));
			prest.setString(34,request.getParameter("pre_ocu_puesto"));
			prest.setString(35,request.getParameter("pre_mil_nombre"));
			prest.setString(36,request.getParameter("pre_mil_lugar"));
			prest.setString(37,request.getParameter("pre_mil_desde"));
			prest.setString(38,request.getParameter("pre_mil_hasta"));
			prest.setString(39,request.getParameter("pre_mil_puesto"));
			prest.setString(40,request.getParameter("pre_org_nombre"));
			prest.setString(41,request.getParameter("pre_org_lugar"));
			prest.setString(42,request.getParameter("pre_org_desde"));
			prest.setString(43,request.getParameter("pre_org_hasta"));
			prest.setString(44,request.getParameter("pre_org_rol"));
			prest.setString(45,request.getParameter("pre_org_nombre2"));
			prest.setString(46,request.getParameter("pre_org_lugar2"));
			prest.setString(47,request.getParameter("pre_org_desde2"));
			prest.setString(48,request.getParameter("pre_org_hasta2"));
			prest.setString(49,request.getParameter("pre_org_rol2"));
			prest.setString(50,request.getParameter("pre_arrest_fecha"));
			prest.setString(51,request.getParameter("pre_arrest_lugar"));
			prest.setString(52,request.getParameter("pre_arrest_delito"));
			prest.setString(53,request.getParameter("pre_arrest_sentencia"));
			prest.setString(54,request.getParameter("pre_arrest_fecha2"));
			prest.setString(55,request.getParameter("pre_arrest_lugar2"));
			prest.setString(56,request.getParameter("pre_arrest_delito2"));
			prest.setString(57,request.getParameter("pre_arrest_sentencia2"));
			prest.setString(58,request.getParameter("pre_fam_madre_nombre"));
			prest.setString(59,request.getParameter("pre_fam_madre_dob"));
			prest.setString(60,request.getParameter("pre_fam_madre_lugar"));
			prest.setString(61,request.getParameter("pre_fam_padre_nombre"));
			prest.setString(62,request.getParameter("pre_fam_padre_dob"));
			prest.setString(63,request.getParameter("pre_fam_padre_lugar"));
			prest.setString(64,request.getParameter("pre_fam_spouse_nombre"));
			prest.setString(65,request.getParameter("pre_fam_spouse_dob"));
			prest.setString(66,request.getParameter("pre_fam_spouse_lugar"));
			prest.setString(67,request.getParameter("pre_fam_child1_nombre"));
			prest.setString(68,request.getParameter("pre_fam_child1_dob"));
			prest.setString(69,request.getParameter("pre_fam_child1_lugar"));
			prest.setString(70,request.getParameter("pre_fam_child2_nombre"));
			prest.setString(71,request.getParameter("pre_fam_child2_dob"));
			prest.setString(72,request.getParameter("pre_fam_child2_lugar"));
			prest.setString(73,request.getParameter("pre_fam_child3_nombre"));
			prest.setString(74,request.getParameter("pre_fam_child3_dob"));
			prest.setString(75,request.getParameter("pre_fam_child3_lugar"));
			prest.setString(76,request.getParameter("pre_fam_child4_nombre"));
			prest.setString(77,request.getParameter("pre_fam_child4_dob"));
			prest.setString(78,request.getParameter("pre_fam_child4_lugar"));
			prest.setString(79,request.getParameter("pre_fam_child5_nombre"));
			prest.setString(80,request.getParameter("pre_fam_child5_dob"));
			prest.setString(81,request.getParameter("pre_fam_child5_lugar"));
			prest.setString(82,request.getParameter("pre_fam_sibling1_nombre"));
			prest.setString(83,request.getParameter("pre_fam_sibling1_dob"));
			prest.setString(84,request.getParameter("pre_fam_sibling1_lugar"));
			prest.setString(85,request.getParameter("pre_fam_sibling2_nombre"));
			prest.setString(86,request.getParameter("pre_fam_sibling2_dob"));
			prest.setString(87,request.getParameter("pre_fam_sibling2_lugar"));
			prest.setString(88,request.getParameter("pre_fam_sibling3_nombre"));
			prest.setString(89,request.getParameter("pre_fam_sibling3_dob"));
			prest.setString(90,request.getParameter("pre_fam_sibling3_lugar"));
			prest.setString(91,request.getParameter("pre_fam_sibling4_nombre"));
			prest.setString(92,request.getParameter("pre_fam_sibling4_dob"));
			prest.setString(93,request.getParameter("pre_fam_sibling4_lugar"));
			prest.setString(94,request.getParameter("pre_fam_sibling5_nombre"));
			prest.setString(95,request.getParameter("pre_fam_sibling5_dob"));
			prest.setString(96,request.getParameter("pre_fam_sibling5_lugar"));
			prest.setString(97,request.getParameter("pre_fam_otra1_relacion"));
			prest.setString(98,request.getParameter("pre_fam_otra1_nombre"));
			prest.setString(99,request.getParameter("pre_fam_otra1_dob"));
			prest.setString(100,request.getParameter("pre_fam_otra1_lugar"));
			prest.setString(101,request.getParameter("pre_fam_otra2_relacion"));
			prest.setString(102,request.getParameter("pre_fam_otra2_nombre"));
			prest.setString(103,request.getParameter("pre_fam_otra2_dob"));
			prest.setString(104,request.getParameter("pre_fam_otra2_lugar"));
			prest.setString(105,request.getParameter("pre_fam_otra3_relacion"));
			prest.setString(106,request.getParameter("pre_fam_otra3_nombre"));
			prest.setString(107,request.getParameter("pre_fam_otra3_dob"));
			prest.setString(108,request.getParameter("pre_fam_otra3_lugar"));
			
			prest.setString(109,request.getParameter("pre_fecha_de_salida_origen"));
			prest.setString(110,request.getParameter("pre_viaje1_pais"));
			prest.setString(111,request.getParameter("pre_viaje1_desde"));
			prest.setString(112,request.getParameter("pre_viaje1_hasta"));
			prest.setString(113,request.getParameter("pre_viaje1_medio"));
			prest.setString(114,request.getParameter("pre_viaje2_pais"));
			prest.setString(115,request.getParameter("pre_viaje2_desde"));
			prest.setString(116,request.getParameter("pre_viaje2_hasta"));
			prest.setString(117,request.getParameter("pre_viaje2_medio"));
			prest.setString(118,request.getParameter("pre_viaje3_pais"));
			prest.setString(119,request.getParameter("pre_viaje3_desde"));
			prest.setString(120,request.getParameter("pre_viaje3_hasta"));
			prest.setString(121,request.getParameter("pre_viaje3_medio"));
			prest.setString(122,request.getParameter("pre_viaje4_pais"));
			prest.setString(123,request.getParameter("pre_viaje4_desde"));
			prest.setString(124,request.getParameter("pre_viaje4_hasta"));
			prest.setString(125,request.getParameter("pre_viaje4_medio"));
			prest.setString(126,request.getParameter("pre_viaje5_pais"));
			prest.setString(127,request.getParameter("pre_viaje5_desde"));
			prest.setString(128,request.getParameter("pre_viaje5_hasta"));
			prest.setString(129,request.getParameter("pre_viaje5_medio"));
			prest.setString(130,request.getParameter("pre_viaje6_pais"));
			prest.setString(131,request.getParameter("pre_viaje6_desde"));
			prest.setString(132,request.getParameter("pre_viaje6_hasta"));
			prest.setString(133,request.getParameter("pre_viaje6_medio"));
			prest.setString(134,request.getParameter("pre_fundado_temor"));
			prest.setString(135,request.getParameter("pre_fundado_temor_partb"));
			prest.setString(136,request.getParameter("pre_pref"));
			prest.setString(137,request.getParameter("pre_pref_sexo"));
			prest.setString(138,request.getParameter("pre_pref_idioma"));
			prest.setString(139,request.getParameter("pre_fecha_solicitud_onpar"));
			prest.setString(140,request.getParameter("pre_solicitud_preparado_por"));
			prest.setString(141,request.getParameter("pre_ui_nombre_recibio"));
			prest.setString(142,request.getParameter("pre_ui_fecha_recibido"));
			prest.setString(143,request.getParameter("pre_fecha_llegada_panama"));
			prest.setString(144,request.getParameter("pre_estatus_civil_lkup"));
			prest.setString(145,request.getParameter("pre_arrest_confirm"));
			prest.setString(146,session.getAttribute("id").toString());  //user id
			prest.setString(147,request.getParameter("id")); //solicitante id
			

			int mCount = prest.executeUpdate();
	
			response.sendRedirect("/onpar/main.jsp?target=solicitantes");			
		} 
	}
	catch(Exception e){
		throw e;
	} finally {
		if(prest != null) { prest.close(); }
		if(con != null) { con.close(); }
	}
%>