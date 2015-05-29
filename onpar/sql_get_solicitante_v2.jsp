<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%
	String mQuery = "select " +
					"replace(format(id,''),',','')," +
					"ifnull(pre_primer_nombre,''), " +
					"ifnull(pre_apellido_paterno,''), " +
					"ifnull(pre_apellido_materno,''), " +
					"ifnull(pre_otros_nombres,''), " +
					"ifnull(pre_fecha_de_nacimiento,''), " +
					"ifnull(pre_ciudad_de_nacimiento,''), " +
					"ifnull(pre_pais_de_nacimiento_lkup,''), " +
					"ifnull(pre_genero_lkup,''), " +
					"ifnull(pre_nacionalidad_lkup,''), " +
					"ifnull(pre_otro_estatus_migratoria,''), " +
					"ifnull(pre_otro_estatus_migratoria_paises,''), " +
					"ifnull(pre_etnico_o_tribu,''), " +
					"ifnull(pre_religion_lkup,''), " +
					"ifnull(pre_idioma_lkup,''), " +
					"ifnull(pre_otros_idiomas,''), " +
					"ifnull(pre_direccion_actual,''), " +
					"ifnull(pre_telefono1,''), " +
					"ifnull(pre_pasaporte,''), " +
	"if(pre_copia_pasaporte is not null,'yes',null), " +
					"ifnull(pre_otros_documentos,''), " +
	"if(pre_copia_otro_documento is not null,'yes',null), " +
					"ifnull(pre_edu_nombre,''), " +
					"ifnull(pre_edu_lugar,''), " +
					"ifnull(pre_edu_desde,''), " +
					"ifnull(pre_edu_hasta,''), " +
					"ifnull(pre_edu_titulo,''), " +
					"ifnull(pre_edu_nombre2,''), " +
					"ifnull(pre_edu_lugar2,''), " +
					"ifnull(pre_edu_desde2,''), " +
					"ifnull(pre_edu_hasta2,''), " +
					"ifnull(pre_edu_titulo2,''), " +
					"ifnull(pre_ocu_empleador,''), " +
					"ifnull(pre_ocu_lugar,''), " +
					"ifnull(pre_ocu_desde,''), " +
					"ifnull(pre_ocu_hasta,''), " +
					"ifnull(pre_ocu_puesto,''), " +
					"ifnull(pre_mil_nombre,''), " +
					"ifnull(pre_mil_lugar,''), " +
					"ifnull(pre_mil_desde,''), " +
					"ifnull(pre_mil_hasta,''), " +
					"ifnull(pre_mil_puesto,''), " +
					"ifnull(pre_org_nombre,''), " +
					"ifnull(pre_org_lugar,''), " +
					"ifnull(pre_org_desde,''), " +
					"ifnull(pre_org_hasta,''), " +
					"ifnull(pre_org_rol,''), " +
					"ifnull(pre_org_nombre2,''), " +
					"ifnull(pre_org_lugar2,''), " +
					"ifnull(pre_org_desde2,''), " +
					"ifnull(pre_org_hasta2,''), " +
					"ifnull(pre_org_rol2,''), " +
					"ifnull(pre_arrest_fecha,''), " +
					"ifnull(pre_arrest_lugar,''), " +
					"ifnull(pre_arrest_delito,''), " +
					"ifnull(pre_arrest_sentencia,''), " +
					"ifnull(pre_arrest_fecha2,''), " +
					"ifnull(pre_arrest_lugar2,''), " +
					"ifnull(pre_arrest_delito2,''), " +
					"ifnull(pre_arrest_sentencia2,''), " +
					"ifnull(pre_fam_madre_nombre,''), " +
					"ifnull(pre_fam_madre_dob,''), " +
					"ifnull(pre_fam_madre_lugar,''), " +
					"ifnull(pre_fam_padre_nombre,''), " +
					"ifnull(pre_fam_padre_dob,''), " +
					"ifnull(pre_fam_padre_lugar,''), " +
					"ifnull(pre_fam_spouse_nombre,''), " +
					"ifnull(pre_fam_spouse_dob,''), " +
					"ifnull(pre_fam_spouse_lugar,''), " +
					"ifnull(pre_fam_child1_nombre,''), " +
					"ifnull(pre_fam_child1_dob,''), " +
					"ifnull(pre_fam_child1_lugar,''), " +
					"ifnull(pre_fam_child2_nombre,''), " +
					"ifnull(pre_fam_child2_dob,''), " +
					"ifnull(pre_fam_child2_lugar,''), " +
					"ifnull(pre_fam_child3_nombre,''), " +
					"ifnull(pre_fam_child3_dob,''), " +
					"ifnull(pre_fam_child3_lugar,''), " +
					"ifnull(pre_fam_child4_nombre,''), " +
					"ifnull(pre_fam_child4_dob,''), " +
					"ifnull(pre_fam_child4_lugar,''), " +
					"ifnull(pre_fam_child5_nombre,''), " +
					"ifnull(pre_fam_child5_dob,''), " +
					"ifnull(pre_fam_child5_lugar,''), " +
					"ifnull(pre_fam_sibling1_nombre,''), " +
					"ifnull(pre_fam_sibling1_dob,''), " +
					"ifnull(pre_fam_sibling1_lugar,''), " +
					"ifnull(pre_fam_sibling2_nombre,''), " +
					"ifnull(pre_fam_sibling2_dob,''), " +
					"ifnull(pre_fam_sibling2_lugar,''), " +
					"ifnull(pre_fam_sibling3_nombre,''), " +
					"ifnull(pre_fam_sibling3_dob,''), " +
					"ifnull(pre_fam_sibling3_lugar,''), " +
					"ifnull(pre_fam_sibling4_nombre,''), " +
					"ifnull(pre_fam_sibling4_dob,''), " +
					"ifnull(pre_fam_sibling4_lugar,''), " +
					"ifnull(pre_fam_sibling5_nombre,''), " +
					"ifnull(pre_fam_sibling5_dob,''), " +
					"ifnull(pre_fam_sibling5_lugar,''), " +
					"ifnull(pre_fam_otra1_relacion,''), " +
					"ifnull(pre_fam_otra1_nombre,''), " +
					"ifnull(pre_fam_otra1_dob,''), " +
					"ifnull(pre_fam_otra1_lugar,''), " +
					"ifnull(pre_fam_otra2_relacion,''), " +
					"ifnull(pre_fam_otra2_nombre,''), " +
					"ifnull(pre_fam_otra2_dob,''), " +
					"ifnull(pre_fam_otra2_lugar,''), " +
					"ifnull(pre_fam_otra3_relacion,''), " +
					"ifnull(pre_fam_otra3_nombre,''), " +
					"ifnull(pre_fam_otra3_dob,''), " +
					"ifnull(pre_fam_otra3_lugar,''), " +
					"ifnull(pre_fecha_de_salida_origen,''), " +
					"ifnull(pre_viaje1_pais,''), " +
					"ifnull(pre_viaje1_desde,''), " +
					"ifnull(pre_viaje1_hasta,''), " +
					"ifnull(pre_viaje1_medio,''), " +
					"ifnull(pre_viaje2_pais,''), " +
					"ifnull(pre_viaje2_desde,''), " +
					"ifnull(pre_viaje2_hasta,''), " +
					"ifnull(pre_viaje2_medio,''), " +
					"ifnull(pre_viaje3_pais,''), " +
					"ifnull(pre_viaje3_desde,''), " +
					"ifnull(pre_viaje3_hasta,''), " +
					"ifnull(pre_viaje3_medio,''), " +
					"ifnull(pre_viaje4_pais,''), " +
					"ifnull(pre_viaje4_desde,''), " +
					"ifnull(pre_viaje4_hasta,''), " +
					"ifnull(pre_viaje4_medio,''), " +
					"ifnull(pre_viaje5_pais,''), " +
					"ifnull(pre_viaje5_desde,''), " +
					"ifnull(pre_viaje5_hasta,''), " +
					"ifnull(pre_viaje5_medio,''), " +
					"ifnull(pre_viaje6_pais,''), " +
					"ifnull(pre_viaje6_desde,''), " +
					"ifnull(pre_viaje6_hasta,''), " +
					"ifnull(pre_viaje6_medio,''), " +
					"ifnull(pre_fundado_temor,''), " +
					"ifnull(pre_fundado_temor_partb,''), " +
					"ifnull(pre_pref,''), " +
					"ifnull(pre_pref_sexo,''), " +
					"ifnull(pre_pref_idioma,''), " +
					"ifnull(pre_fecha_solicitud_onpar,''), " +
					"ifnull(pre_solicitud_preparado_por,''), " +
					"ifnull(pre_ui_nombre_recibio,''), " +
					"ifnull(pre_ui_fecha_recibido,''), " +
					"ifnull(pre_fecha_entrevista_legal,''), " +
					"ifnull(pre_fecha_entrevista_social,''), " +
	"if(pre_declaracion_jurada is not null,'yes',null), " +
					"ifnull(pre_estatus_lkup,''), " +
					"ifnull(pre_soc_qiii,''), " +
					"ifnull(pre_soc_qiv1,''), " +
					"ifnull(pre_soc_qiv2,''), " +
					"ifnull(pre_soc_qv11,''), " +
					"ifnull(pre_soc_qv12,''), " +
					"ifnull(pre_soc_qv13,''), " +
					"ifnull(pre_soc_qv14,''), " +
					"ifnull(pre_soc_qv21,''), " +
					"ifnull(pre_soc_qv22,''), " +
					"ifnull(pre_soc_qv23,''), " +
					"ifnull(pre_soc_qv31,''), " +
					"ifnull(pre_soc_qv32,''), " +
					"ifnull(pre_soc_qv33,''), " +
					"ifnull(pre_soc_qv41,''), " +
					"ifnull(pre_soc_qv42,''), " +
					"ifnull(pre_soc_qv43,''), " +
					"ifnull(pre_soc_qvi1,''), " +
					"ifnull(pre_soc_qvi2,''), " +
					"ifnull(pre_soc_qvi3,''), " +
					"ifnull(pre_soc_qvi4,''), " +
					"ifnull(pre_soc_qvi5,''), " +
					"ifnull(pre_soc_qvii,''), " +
					"ifnull(pre_soc_qviii,''), " +
	"if(pre_entrevista_social is not null,'yes',null), " +
	"if(pre_soc_foto_jefe_de_familia is not null,'yes',null), " +
					"ifnull(pre_leg_q1,''), " +
					"ifnull(pre_leg_q2,''), " +
					"ifnull(pre_leg_q3,''), " +
					"ifnull(pre_leg_q4,''), " +
					"ifnull(pre_leg_q5,''), " +
					"ifnull(pre_leg_q6,''), " +
					"ifnull(pre_leg_q7,''), " +
					"ifnull(pre_leg_q8,''), " +
					"ifnull(pre_leg_q9,''), " +
					"ifnull(pre_leg_q10,''), " +
					"ifnull(pre_leg_q11,''), " +
					"ifnull(pre_leg_q12,''), " +
					"ifnull(pre_leg_q13,''), " +
					"ifnull(pre_leg_q14,''), " +
					"ifnull(pre_leg_q15,''), " +
					"ifnull(pre_leg_q16,''), " +
					"ifnull(pre_leg_q17,''), " +
					"ifnull(pre_leg_q18,''), " +
					"ifnull(pre_leg_q19,''), " +
					"ifnull(pre_leg_q20,''), " +
					"ifnull(pre_leg_q21,''), " +
					"ifnull(pre_leg_q22,''), " +
					"ifnull(pre_leg_q23,''), " +
					"ifnull(pre_leg_q24,''), " +
					"ifnull(pre_leg_q25,''), " +
					"ifnull(pre_leg_q26,''), " +
	"if(pre_entrevista_legal is not null,'yes',null), " +
					"ifnull(adm_fecha_resol,''), " +
					"ifnull(adm_dec_resol_lkup,''), " +
					"ifnull(adm_dec_resol_memo,''), " +
					"ifnull(adm_fecha_noti_resol,''), " +
					"ifnull(adm_fecha_de_pedir_recon,''), " +
	"if(adm_peticion_para_la_recon is not null,'yes',null), " +
					"ifnull(adm_fecha_resol_recon,''), " +
					"ifnull(adm_dec_resol_recon_lkup,''), " +
					"ifnull(adm_dec_resol_recon_memo,''), " +
					"ifnull(adm_fecha_noti_resol_recon,''), " +
					"ifnull(adm_fecha_de_pedir_apel,''), " +
	"if(adm_peticion_para_la_apel is not null,'yes',null), " +
					"ifnull(adm_fecha_resol_apel,''), " +
					"ifnull(adm_dec_resol_apel_lkup,''), " +
					"ifnull(adm_dec_resol_apel_memo,''), " +
					"ifnull(adm_fecha_noti_resol_apel,''), " +
					"ifnull(adm_numero_de_caso,''), " +
					"ifnull(adm_fecha_expedicion_carnet,''), " +
					"ifnull(adm_estatus_lkup,''), " +
					"ifnull(ref_fecha_resol,''), " +
					"ifnull(ref_dec_resol_lkup,''), " +
					"ifnull(ref_dec_resol_memo,''), " +
					"ifnull(ref_fecha_noti_resol,''), " +
					"ifnull(ref_fecha_de_pedir_recon,''), " +
	"if(ref_peticion_para_la_recon is not null,'yes',null), " +
					"ifnull(ref_fecha_resol_recon,''), " +
					"ifnull(ref_dec_resol_recon_lkup,''), " +
					"ifnull(ref_dec_resol_recon_memo,''), " +
					"ifnull(ref_fecha_noti_resol_recon,''), " +
					"ifnull(ref_fecha_de_pedir_apel,''), " +
	"if(ref_peticion_para_la_apel is not null,'yes',null), " +
					"ifnull(ref_fecha_resol_apel,''), " +
					"ifnull(ref_dec_resol_apel_lkup,''), " +
					"ifnull(ref_dec_resol_apel_memo,''), " +
					"ifnull(ref_fecha_noti_resol_apel,''), " +
					"ifnull(ref_permiso_especial_no_de_carnet,''), " +
					"ifnull(ref_fecha_exped_permiso_de_trabajar,''), " +
					"ifnull(ref_solicito_reunificacion_familiar,''), " +
					"ifnull(ref_solicito_permiso_de_salida,''), " +
					"ifnull(ref_estatus_lkup,''), " +
					"ifnull(ref_ley25_lkup,''), " +
					"ifnull(last_mod_tmstmp,''), " +
					"ifnull(last_user_id,''), " +
					"ifnull(legal_user_id,''), " +
					"ifnull(social_user_id,''), " +
					"ifnull(fecha_de_renuncia,''), " +
	"if(renuncia is not null,'yes',null), " +
					"ifnull(format(floor(datediff(pre_fecha_solicitud_onpar,pre_fecha_de_nacimiento)/365.25),''),''), " +
					"ifnull(pre_fecha_llegada_panama,''), " +
					"ifnull(pre_estatus_civil_lkup,''), " +
					"ifnull(pre_direccion_pais_de_origen,''), " +
					"ifnull(pre_ocup_pais_de_origen,''), " +
					"ifnull(pre_lugar_de_trabajo,''), " +
					"ifnull(pre_arrest_confirm,''), " +
					"ifnull(razon_de_quitar_refug_recon,''), " +
					"ifnull(fecha_de_quitar_refug_recon,''), " +
	"if(quitar_refug_recon is not null,'yes',null) " +
					"from vw_solicitante " +
					"where id = ? " + 
					"and id > 3000 ";
	
	String mId = request.getParameter("id");

	session.setAttribute("temp_solicitante_v2_id", null);
	session.setAttribute("temp_solicitante_v2_pre_primer_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_apellido_paterno", null);
	session.setAttribute("temp_solicitante_v2_pre_apellido_materno", null);
	session.setAttribute("temp_solicitante_v2_pre_otros_nombres", null);
	session.setAttribute("temp_solicitante_v2_pre_fecha_de_nacimiento", null);
	session.setAttribute("temp_solicitante_v2_pre_ciudad_de_nacimiento", null);
	session.setAttribute("temp_solicitante_v2_pre_pais_de_nacimiento_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_genero_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_nacionalidad_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_otro_estatus_migratoria", null);
	session.setAttribute("temp_solicitante_v2_pre_otro_estatus_migratoria_paises", null);
	session.setAttribute("temp_solicitante_v2_pre_etnico_o_tribu", null);
	session.setAttribute("temp_solicitante_v2_pre_religion_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_idioma_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_otros_idiomas", null);
	session.setAttribute("temp_solicitante_v2_pre_direccion_actual", null);
	session.setAttribute("temp_solicitante_v2_pre_telefono1", null);
	session.setAttribute("temp_solicitante_v2_pre_pasaporte", null);
	session.setAttribute("temp_solicitante_v2_pre_copia_pasaporte", null);
	session.setAttribute("temp_solicitante_v2_pre_otros_documentos", null);
	session.setAttribute("temp_solicitante_v2_pre_copia_otro_documento", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_titulo", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_nombre2", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_lugar2", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_desde2", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_hasta2", null);
	session.setAttribute("temp_solicitante_v2_pre_edu_titulo2", null);
	session.setAttribute("temp_solicitante_v2_pre_ocu_empleador", null);
	session.setAttribute("temp_solicitante_v2_pre_ocu_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_ocu_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_ocu_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_ocu_puesto", null);
	session.setAttribute("temp_solicitante_v2_pre_mil_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_mil_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_mil_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_mil_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_mil_puesto", null);
	session.setAttribute("temp_solicitante_v2_pre_org_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_org_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_org_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_org_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_org_rol", null);
	session.setAttribute("temp_solicitante_v2_pre_org_nombre2", null);
	session.setAttribute("temp_solicitante_v2_pre_org_lugar2", null);
	session.setAttribute("temp_solicitante_v2_pre_org_desde2", null);
	session.setAttribute("temp_solicitante_v2_pre_org_hasta2", null);
	session.setAttribute("temp_solicitante_v2_pre_org_rol2", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_confirm", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_fecha", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_delito", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_sentencia", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_fecha2", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_lugar2", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_delito2", null);
	session.setAttribute("temp_solicitante_v2_pre_arrest_sentencia2", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_madre_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_madre_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_madre_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_padre_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_padre_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_padre_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_spouse_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_spouse_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_spouse_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child1_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child1_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child1_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child2_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child2_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child2_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child3_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child3_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child3_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child4_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child4_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child4_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child5_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child5_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_child5_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra1_relacion", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra1_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra1_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra1_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra2_relacion", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra2_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra2_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra2_lugar", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra3_relacion", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra3_nombre", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra3_dob", null);
	session.setAttribute("temp_solicitante_v2_pre_fam_otra3_lugar", null);
	
	session.setAttribute("temp_solicitante_v2_pre_fecha_de_salida_origen", null);
	
	session.setAttribute("temp_solicitante_v2_pre_viaje1_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje1_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje1_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje1_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje2_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje2_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje2_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje2_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje3_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje3_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje3_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje3_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje4_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje4_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje4_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje4_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje5_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje5_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje5_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje5_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje6_pais", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje6_desde", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje6_hasta", null);
	session.setAttribute("temp_solicitante_v2_pre_viaje6_medio", null);
	session.setAttribute("temp_solicitante_v2_pre_fundado_temor", null);
	session.setAttribute("temp_solicitante_v2_pre_fundado_temor_partb", null);
	session.setAttribute("temp_solicitante_v2_pre_pref", null);
	session.setAttribute("temp_solicitante_v2_pre_pref_sexo", null);
	session.setAttribute("temp_solicitante_v2_pre_pref_idioma", null);
	session.setAttribute("temp_solicitante_v2_pre_fecha_solicitud_onpar", null);
	session.setAttribute("temp_solicitante_v2_pre_solicitud_preparado_por", null);
	session.setAttribute("temp_solicitante_v2_pre_ui_nombre_recibio", null);
	session.setAttribute("temp_solicitante_v2_pre_ui_fecha_recibido", null);
	session.setAttribute("temp_solicitante_v2_pre_fecha_entrevista_legal", null);
	session.setAttribute("temp_solicitante_v2_pre_fecha_entrevista_social", null);
	session.setAttribute("temp_solicitante_v2_pre_declaracion_jurada", null);
	session.setAttribute("temp_solicitante_v2_pre_estatus_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qiii", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qiv1", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qiv2", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv11", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv12", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv13", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv14", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv21", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv22", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv23", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv31", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv32", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv33", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv41", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv42", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qv43", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvi1", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvi2", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvi3", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvi4", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvi5", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qvii", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_qviii", null);
	session.setAttribute("temp_solicitante_v2_pre_entrevista_social", null);
	session.setAttribute("temp_solicitante_v2_pre_soc_foto_jefe_de_familia", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q1", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q2", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q3", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q4", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q5", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q6", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q7", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q8", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q9", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q10", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q11", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q12", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q13", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q14", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q15", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q16", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q17", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q18", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q19", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q20", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q21", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q22", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q23", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q24", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q25", null);
	session.setAttribute("temp_solicitante_v2_pre_leg_q26", null);
	session.setAttribute("temp_solicitante_v2_pre_entrevista_legal", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_resol", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_lkup", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_memo", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_de_pedir_recon", null);
	session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_recon", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_resol_recon", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_recon_lkup", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_recon_memo", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol_recon", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_de_pedir_apel", null);
	session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_apel", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_resol_apel", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_apel_lkup", null);
	session.setAttribute("temp_solicitante_v2_adm_dec_resol_apel_memo", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol_apel", null);
	session.setAttribute("temp_solicitante_v2_adm_numero_de_caso", null);
	session.setAttribute("temp_solicitante_v2_adm_fecha_expedicion_carnet", null);
	session.setAttribute("temp_solicitante_v2_adm_estatus_lkup", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_resol", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_lkup", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_memo", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_de_pedir_recon", null);
	session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_recon", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_resol_recon", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_recon_lkup", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_recon_memo", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol_recon", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_de_pedir_apel", null);
	session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_apel", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_resol_apel", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_apel_lkup", null);
	session.setAttribute("temp_solicitante_v2_ref_dec_resol_apel_memo", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol_apel", null);
	session.setAttribute("temp_solicitante_v2_ref_permiso_especial_no_de_carnet", null);
	session.setAttribute("temp_solicitante_v2_ref_fecha_exped_permiso_de_trabajar", null);
	session.setAttribute("temp_solicitante_v2_ref_solicito_reunificacion_familiar", null);
	session.setAttribute("temp_solicitante_v2_ref_solicito_permiso_de_salida", null);
	session.setAttribute("temp_solicitante_v2_ref_estatus_lkup", null);
	session.setAttribute("temp_solicitante_v2_ref_ley25_lkup", null);
	session.setAttribute("temp_solicitante_v2_last_mod_tmstmp", null);
	session.setAttribute("temp_solicitante_v2_last_user_id", null);
	session.setAttribute("temp_solicitante_v2_legal_user_id", null);
	session.setAttribute("temp_solicitante_v2_social_user_id", null);
	session.setAttribute("temp_solicitante_v2_fecha_de_renuncia", null);
	session.setAttribute("temp_solicitante_v2_renuncia", null);
	session.setAttribute("temp_solicitante_v2_pre_edad", null);
	session.setAttribute("temp_solicitante_v2_pre_fecha_llegada_panama", null);
	session.setAttribute("temp_solicitante_v2_pre_estatus_civil_lkup", null);
	session.setAttribute("temp_solicitante_v2_pre_direccion_pais_de_origen", null);
	session.setAttribute("temp_solicitante_v2_pre_ocup_pais_de_origen", null);
	session.setAttribute("temp_solicitante_v2_pre_lugar_de_trabajo", null);
	session.setAttribute("temp_solicitante_v2_razon_de_quitar_refug_recon", null);
	session.setAttribute("temp_solicitante_v2_fecha_de_quitar_refug_recon", null);
	session.setAttribute("temp_solicitante_v2_quitar_refug_recon", null);
	
	Connection con = null;
	PreparedStatement prest = null;
	ResultSet rs = null;
	
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
	System.out.println("before try");
	
	
	
	try{
		if (session.getAttribute("email") != null) {


			prest=con.prepareStatement(mQuery);
			prest.setString(1,mId);
			rs=prest.executeQuery();

			int size = 0;
			
System.out.println("before while loop");

			while(rs.next())
			{
System.out.println("in while loop");			
				size++;
				session.setAttribute("temp_solicitante_v2_id", rs.getString(1));
				session.setAttribute("temp_solicitante_v2_pre_primer_nombre", rs.getString(2));
				session.setAttribute("temp_solicitante_v2_pre_apellido_paterno", rs.getString(3));
				session.setAttribute("temp_solicitante_v2_pre_apellido_materno", rs.getString(4));
				session.setAttribute("temp_solicitante_v2_pre_otros_nombres", rs.getString(5));
				session.setAttribute("temp_solicitante_v2_pre_fecha_de_nacimiento", rs.getString(6));
				session.setAttribute("temp_solicitante_v2_pre_ciudad_de_nacimiento", rs.getString(7));
				session.setAttribute("temp_solicitante_v2_pre_pais_de_nacimiento_lkup", rs.getString(8));
				session.setAttribute("temp_solicitante_v2_pre_genero_lkup", rs.getString(9));
				session.setAttribute("temp_solicitante_v2_pre_nacionalidad_lkup", rs.getString(10));
				session.setAttribute("temp_solicitante_v2_pre_otro_estatus_migratoria", rs.getString(11));
				session.setAttribute("temp_solicitante_v2_pre_otro_estatus_migratoria_paises", rs.getString(12));
				session.setAttribute("temp_solicitante_v2_pre_etnico_o_tribu", rs.getString(13));
				session.setAttribute("temp_solicitante_v2_pre_religion_lkup", rs.getString(14));
				session.setAttribute("temp_solicitante_v2_pre_idioma_lkup", rs.getString(15));
				session.setAttribute("temp_solicitante_v2_pre_otros_idiomas", rs.getString(16));
				session.setAttribute("temp_solicitante_v2_pre_direccion_actual", rs.getString(17));
				session.setAttribute("temp_solicitante_v2_pre_telefono1", rs.getString(18));
				session.setAttribute("temp_solicitante_v2_pre_pasaporte", rs.getString(19));
				session.setAttribute("temp_solicitante_v2_pre_copia_pasaporte", rs.getBlob(20));
				session.setAttribute("temp_solicitante_v2_pre_otros_documentos", rs.getString(21));
				session.setAttribute("temp_solicitante_v2_pre_copia_otro_documento", rs.getBlob(22));	
				session.setAttribute("temp_solicitante_v2_pre_edu_nombre", rs.getString(23));
				session.setAttribute("temp_solicitante_v2_pre_edu_lugar", rs.getString(24));
				session.setAttribute("temp_solicitante_v2_pre_edu_desde", rs.getString(25));
				session.setAttribute("temp_solicitante_v2_pre_edu_hasta", rs.getString(26));
				session.setAttribute("temp_solicitante_v2_pre_edu_titulo", rs.getString(27));
				session.setAttribute("temp_solicitante_v2_pre_edu_nombre2", rs.getString(28));
				session.setAttribute("temp_solicitante_v2_pre_edu_lugar2", rs.getString(29));
				session.setAttribute("temp_solicitante_v2_pre_edu_desde2", rs.getString(30));
				session.setAttribute("temp_solicitante_v2_pre_edu_hasta2", rs.getString(31));
				session.setAttribute("temp_solicitante_v2_pre_edu_titulo2", rs.getString(32));
				session.setAttribute("temp_solicitante_v2_pre_ocu_empleador", rs.getString(33));
				session.setAttribute("temp_solicitante_v2_pre_ocu_lugar", rs.getString(34));
				session.setAttribute("temp_solicitante_v2_pre_ocu_desde", rs.getString(35));
				session.setAttribute("temp_solicitante_v2_pre_ocu_hasta", rs.getString(36));
				session.setAttribute("temp_solicitante_v2_pre_ocu_puesto", rs.getString(37));
				session.setAttribute("temp_solicitante_v2_pre_mil_nombre", rs.getString(38));
				session.setAttribute("temp_solicitante_v2_pre_mil_lugar", rs.getString(39));
				session.setAttribute("temp_solicitante_v2_pre_mil_desde", rs.getString(40));
				session.setAttribute("temp_solicitante_v2_pre_mil_hasta", rs.getString(41));
				session.setAttribute("temp_solicitante_v2_pre_mil_puesto", rs.getString(42));
				session.setAttribute("temp_solicitante_v2_pre_org_nombre", rs.getString(43));
				session.setAttribute("temp_solicitante_v2_pre_org_lugar", rs.getString(44));
				session.setAttribute("temp_solicitante_v2_pre_org_desde", rs.getString(45));
				session.setAttribute("temp_solicitante_v2_pre_org_hasta", rs.getString(46));
				session.setAttribute("temp_solicitante_v2_pre_org_rol", rs.getString(47));
				session.setAttribute("temp_solicitante_v2_pre_org_nombre2", rs.getString(48));
				session.setAttribute("temp_solicitante_v2_pre_org_lugar2", rs.getString(49));
				session.setAttribute("temp_solicitante_v2_pre_org_desde2", rs.getString(50));
				session.setAttribute("temp_solicitante_v2_pre_org_hasta2", rs.getString(51));
				session.setAttribute("temp_solicitante_v2_pre_org_rol2", rs.getString(52));
				session.setAttribute("temp_solicitante_v2_pre_arrest_fecha", rs.getString(53));
				session.setAttribute("temp_solicitante_v2_pre_arrest_lugar", rs.getString(54));
				session.setAttribute("temp_solicitante_v2_pre_arrest_delito", rs.getString(55));
				session.setAttribute("temp_solicitante_v2_pre_arrest_sentencia", rs.getString(56));
				session.setAttribute("temp_solicitante_v2_pre_arrest_fecha2", rs.getString(57));
				session.setAttribute("temp_solicitante_v2_pre_arrest_lugar2", rs.getString(58));
				session.setAttribute("temp_solicitante_v2_pre_arrest_delito2", rs.getString(59));
				session.setAttribute("temp_solicitante_v2_pre_arrest_sentencia2", rs.getString(60));
				session.setAttribute("temp_solicitante_v2_pre_fam_madre_nombre", rs.getString(61));
				session.setAttribute("temp_solicitante_v2_pre_fam_madre_dob", rs.getString(62));
				session.setAttribute("temp_solicitante_v2_pre_fam_madre_lugar", rs.getString(63));
				session.setAttribute("temp_solicitante_v2_pre_fam_padre_nombre", rs.getString(64));
				session.setAttribute("temp_solicitante_v2_pre_fam_padre_dob", rs.getString(65));
				session.setAttribute("temp_solicitante_v2_pre_fam_padre_lugar", rs.getString(66));
				session.setAttribute("temp_solicitante_v2_pre_fam_spouse_nombre", rs.getString(67));
				session.setAttribute("temp_solicitante_v2_pre_fam_spouse_dob", rs.getString(68));
				session.setAttribute("temp_solicitante_v2_pre_fam_spouse_lugar", rs.getString(69));
				session.setAttribute("temp_solicitante_v2_pre_fam_child1_nombre", rs.getString(70));
				session.setAttribute("temp_solicitante_v2_pre_fam_child1_dob", rs.getString(71));
				session.setAttribute("temp_solicitante_v2_pre_fam_child1_lugar", rs.getString(72));
				session.setAttribute("temp_solicitante_v2_pre_fam_child2_nombre", rs.getString(73));
				session.setAttribute("temp_solicitante_v2_pre_fam_child2_dob", rs.getString(74));
				session.setAttribute("temp_solicitante_v2_pre_fam_child2_lugar", rs.getString(75));
				session.setAttribute("temp_solicitante_v2_pre_fam_child3_nombre", rs.getString(76));
				session.setAttribute("temp_solicitante_v2_pre_fam_child3_dob", rs.getString(77));
				session.setAttribute("temp_solicitante_v2_pre_fam_child3_lugar", rs.getString(78));
				session.setAttribute("temp_solicitante_v2_pre_fam_child4_nombre", rs.getString(79));
				session.setAttribute("temp_solicitante_v2_pre_fam_child4_dob", rs.getString(80));
				session.setAttribute("temp_solicitante_v2_pre_fam_child4_lugar", rs.getString(81));
				session.setAttribute("temp_solicitante_v2_pre_fam_child5_nombre", rs.getString(82));
				session.setAttribute("temp_solicitante_v2_pre_fam_child5_dob", rs.getString(83));
				session.setAttribute("temp_solicitante_v2_pre_fam_child5_lugar", rs.getString(84));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_nombre", rs.getString(85));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_dob", rs.getString(86));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling1_lugar", rs.getString(87));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_nombre", rs.getString(88));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_dob", rs.getString(89));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling2_lugar", rs.getString(90));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_nombre", rs.getString(91));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_dob", rs.getString(92));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling3_lugar", rs.getString(93));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_nombre", rs.getString(94));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_dob", rs.getString(95));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling4_lugar", rs.getString(96));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_nombre", rs.getString(97));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_dob", rs.getString(98));
				session.setAttribute("temp_solicitante_v2_pre_fam_sibling5_lugar", rs.getString(99));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra1_relacion", rs.getString(100));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra1_nombre", rs.getString(101));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra1_dob", rs.getString(102));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra1_lugar", rs.getString(103));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra2_relacion", rs.getString(104));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra2_nombre", rs.getString(105));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra2_dob", rs.getString(106));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra2_lugar", rs.getString(107));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra3_relacion", rs.getString(108));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra3_nombre", rs.getString(109));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra3_dob", rs.getString(110));
				session.setAttribute("temp_solicitante_v2_pre_fam_otra3_lugar", rs.getString(111));
				
				session.setAttribute("temp_solicitante_v2_pre_fecha_de_salida_origen", rs.getString(112));
				
				session.setAttribute("temp_solicitante_v2_pre_viaje1_pais", rs.getString(113));
				session.setAttribute("temp_solicitante_v2_pre_viaje1_desde", rs.getString(114));
				session.setAttribute("temp_solicitante_v2_pre_viaje1_hasta", rs.getString(115));
				session.setAttribute("temp_solicitante_v2_pre_viaje1_medio", rs.getString(116));
				session.setAttribute("temp_solicitante_v2_pre_viaje2_pais", rs.getString(117));
				session.setAttribute("temp_solicitante_v2_pre_viaje2_desde", rs.getString(118));
				session.setAttribute("temp_solicitante_v2_pre_viaje2_hasta", rs.getString(119));
				session.setAttribute("temp_solicitante_v2_pre_viaje2_medio", rs.getString(120));
				session.setAttribute("temp_solicitante_v2_pre_viaje3_pais", rs.getString(121));
				session.setAttribute("temp_solicitante_v2_pre_viaje3_desde", rs.getString(122));
				session.setAttribute("temp_solicitante_v2_pre_viaje3_hasta", rs.getString(123));
				session.setAttribute("temp_solicitante_v2_pre_viaje3_medio", rs.getString(124));
				session.setAttribute("temp_solicitante_v2_pre_viaje4_pais", rs.getString(125));
				session.setAttribute("temp_solicitante_v2_pre_viaje4_desde", rs.getString(126));
				session.setAttribute("temp_solicitante_v2_pre_viaje4_hasta", rs.getString(127));
				session.setAttribute("temp_solicitante_v2_pre_viaje4_medio", rs.getString(128));
				session.setAttribute("temp_solicitante_v2_pre_viaje5_pais", rs.getString(129));
				session.setAttribute("temp_solicitante_v2_pre_viaje5_desde", rs.getString(130));
				session.setAttribute("temp_solicitante_v2_pre_viaje5_hasta", rs.getString(131));
				session.setAttribute("temp_solicitante_v2_pre_viaje5_medio", rs.getString(132));
				session.setAttribute("temp_solicitante_v2_pre_viaje6_pais", rs.getString(133));
				session.setAttribute("temp_solicitante_v2_pre_viaje6_desde", rs.getString(134));
				session.setAttribute("temp_solicitante_v2_pre_viaje6_hasta", rs.getString(135));
				session.setAttribute("temp_solicitante_v2_pre_viaje6_medio", rs.getString(136));
				session.setAttribute("temp_solicitante_v2_pre_fundado_temor", rs.getString(137));
				session.setAttribute("temp_solicitante_v2_pre_fundado_temor_partb", rs.getString(138));
				session.setAttribute("temp_solicitante_v2_pre_pref", rs.getString(139));
				session.setAttribute("temp_solicitante_v2_pre_pref_sexo", rs.getString(140));
				session.setAttribute("temp_solicitante_v2_pre_pref_idioma", rs.getString(141));
				session.setAttribute("temp_solicitante_v2_pre_fecha_solicitud_onpar", rs.getString(142));
				session.setAttribute("temp_solicitante_v2_pre_solicitud_preparado_por", rs.getString(143));
				session.setAttribute("temp_solicitante_v2_pre_ui_nombre_recibio", rs.getString(144));
				session.setAttribute("temp_solicitante_v2_pre_ui_fecha_recibido", rs.getString(145));
				session.setAttribute("temp_solicitante_v2_pre_fecha_entrevista_legal", rs.getString(146));
				session.setAttribute("temp_solicitante_v2_pre_fecha_entrevista_social", rs.getString(147));
				session.setAttribute("temp_solicitante_v2_pre_declaracion_jurada", rs.getBlob(148));
				session.setAttribute("temp_solicitante_v2_pre_estatus_lkup", rs.getString(149));
				session.setAttribute("temp_solicitante_v2_pre_soc_qiii", rs.getString(150));
				session.setAttribute("temp_solicitante_v2_pre_soc_qiv1", rs.getString(151));
				session.setAttribute("temp_solicitante_v2_pre_soc_qiv2", rs.getString(152));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv11", rs.getString(153));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv12", rs.getString(154));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv13", rs.getString(155));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv14", rs.getString(156));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv21", rs.getString(157));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv22", rs.getString(158));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv23", rs.getString(159));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv31", rs.getString(160));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv32", rs.getString(161));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv33", rs.getString(162));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv41", rs.getString(163));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv42", rs.getString(164));
				session.setAttribute("temp_solicitante_v2_pre_soc_qv43", rs.getString(165));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvi1", rs.getString(166));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvi2", rs.getString(167));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvi3", rs.getString(168));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvi4", rs.getString(169));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvi5", rs.getString(170));
				session.setAttribute("temp_solicitante_v2_pre_soc_qvii", rs.getString(171));
				session.setAttribute("temp_solicitante_v2_pre_soc_qviii", rs.getString(172));
				session.setAttribute("temp_solicitante_v2_pre_entrevista_social", rs.getBlob(173));
				session.setAttribute("temp_solicitante_v2_pre_soc_foto_jefe_de_familia", rs.getBlob(174));
				session.setAttribute("temp_solicitante_v2_pre_leg_q1", rs.getString(175));
				session.setAttribute("temp_solicitante_v2_pre_leg_q2", rs.getString(176));
				session.setAttribute("temp_solicitante_v2_pre_leg_q3", rs.getString(177));
				session.setAttribute("temp_solicitante_v2_pre_leg_q4", rs.getString(178));
				session.setAttribute("temp_solicitante_v2_pre_leg_q5", rs.getString(179));
				session.setAttribute("temp_solicitante_v2_pre_leg_q6", rs.getString(180));
				session.setAttribute("temp_solicitante_v2_pre_leg_q7", rs.getString(181));
				session.setAttribute("temp_solicitante_v2_pre_leg_q8", rs.getString(182));
				session.setAttribute("temp_solicitante_v2_pre_leg_q9", rs.getString(183));
				session.setAttribute("temp_solicitante_v2_pre_leg_q10", rs.getString(184));
				session.setAttribute("temp_solicitante_v2_pre_leg_q11", rs.getString(185));
				session.setAttribute("temp_solicitante_v2_pre_leg_q12", rs.getString(186));
				session.setAttribute("temp_solicitante_v2_pre_leg_q13", rs.getString(187));
				session.setAttribute("temp_solicitante_v2_pre_leg_q14", rs.getString(188));
				session.setAttribute("temp_solicitante_v2_pre_leg_q15", rs.getString(189));
				session.setAttribute("temp_solicitante_v2_pre_leg_q16", rs.getString(190));
				session.setAttribute("temp_solicitante_v2_pre_leg_q17", rs.getString(191));
				session.setAttribute("temp_solicitante_v2_pre_leg_q18", rs.getString(192));
				session.setAttribute("temp_solicitante_v2_pre_leg_q19", rs.getString(193));
				session.setAttribute("temp_solicitante_v2_pre_leg_q20", rs.getString(194));
				session.setAttribute("temp_solicitante_v2_pre_leg_q21", rs.getString(195));
				session.setAttribute("temp_solicitante_v2_pre_leg_q22", rs.getString(196));
				session.setAttribute("temp_solicitante_v2_pre_leg_q23", rs.getString(197));
				session.setAttribute("temp_solicitante_v2_pre_leg_q24", rs.getString(198));
				session.setAttribute("temp_solicitante_v2_pre_leg_q25", rs.getString(199));
				session.setAttribute("temp_solicitante_v2_pre_leg_q26", rs.getString(200));
				session.setAttribute("temp_solicitante_v2_pre_entrevista_legal", rs.getBlob(201));
				session.setAttribute("temp_solicitante_v2_adm_fecha_resol", rs.getString(202));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_lkup", rs.getString(203));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_memo", rs.getString(204));
				session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol", rs.getString(205));
				session.setAttribute("temp_solicitante_v2_adm_fecha_de_pedir_recon", rs.getString(206));
				session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_recon", rs.getBlob(207));
				session.setAttribute("temp_solicitante_v2_adm_fecha_resol_recon", rs.getString(208));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_recon_lkup", rs.getString(209));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_recon_memo", rs.getString(210));
				session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol_recon", rs.getString(211));
				session.setAttribute("temp_solicitante_v2_adm_fecha_de_pedir_apel", rs.getString(212));
				session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_apel", rs.getBlob(213));
				session.setAttribute("temp_solicitante_v2_adm_fecha_resol_apel", rs.getString(214));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_apel_lkup", rs.getString(215));
				session.setAttribute("temp_solicitante_v2_adm_dec_resol_apel_memo", rs.getString(216));
				session.setAttribute("temp_solicitante_v2_adm_fecha_noti_resol_apel", rs.getString(217));
				session.setAttribute("temp_solicitante_v2_adm_numero_de_caso", rs.getString(218));
				session.setAttribute("temp_solicitante_v2_adm_fecha_expedicion_carnet", rs.getString(219));
				session.setAttribute("temp_solicitante_v2_adm_estatus_lkup", rs.getString(220));
				session.setAttribute("temp_solicitante_v2_ref_fecha_resol", rs.getString(221));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_lkup", rs.getString(222));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_memo", rs.getString(223));
				session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol", rs.getString(224));
				session.setAttribute("temp_solicitante_v2_ref_fecha_de_pedir_recon", rs.getString(225));
				session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_recon", rs.getBlob(226));
				session.setAttribute("temp_solicitante_v2_ref_fecha_resol_recon", rs.getString(227));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_recon_lkup", rs.getString(228));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_recon_memo", rs.getString(229));
				session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol_recon", rs.getString(230));
				session.setAttribute("temp_solicitante_v2_ref_fecha_de_pedir_apel", rs.getString(231));
				session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_apel", rs.getBlob(232));
				session.setAttribute("temp_solicitante_v2_ref_fecha_resol_apel", rs.getString(233));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_apel_lkup", rs.getString(234));
				session.setAttribute("temp_solicitante_v2_ref_dec_resol_apel_memo", rs.getString(235));
				session.setAttribute("temp_solicitante_v2_ref_fecha_noti_resol_apel", rs.getString(236));
				session.setAttribute("temp_solicitante_v2_ref_permiso_especial_no_de_carnet", rs.getString(237));
				session.setAttribute("temp_solicitante_v2_ref_fecha_exped_permiso_de_trabajar", rs.getString(238));
				session.setAttribute("temp_solicitante_v2_ref_solicito_reunificacion_familiar", rs.getString(239));
				session.setAttribute("temp_solicitante_v2_ref_solicito_permiso_de_salida", rs.getString(240));
				session.setAttribute("temp_solicitante_v2_ref_estatus_lkup", rs.getString(241));
				session.setAttribute("temp_solicitante_v2_ref_ley25_lkup", rs.getString(242));
				session.setAttribute("temp_solicitante_v2_last_mod_tmstmp", rs.getString(243));
				session.setAttribute("temp_solicitante_v2_last_user_id", rs.getString(244));
				session.setAttribute("temp_solicitante_v2_legal_user_id", rs.getString(245));
				session.setAttribute("temp_solicitante_v2_social_user_id", rs.getString(246));
				session.setAttribute("temp_solicitante_v2_fecha_de_renuncia", rs.getString(247));
				session.setAttribute("temp_solicitante_v2_renuncia", rs.getBlob(248));
				session.setAttribute("temp_solicitante_v2_pre_edad", rs.getString(249));
				session.setAttribute("temp_solicitante_v2_pre_fecha_llegada_panama", rs.getString(250));
				session.setAttribute("temp_solicitante_v2_pre_estatus_civil_lkup", rs.getString(251));
				session.setAttribute("temp_solicitante_v2_pre_direccion_pais_de_origen", rs.getString(252));
				session.setAttribute("temp_solicitante_v2_pre_ocup_pais_de_origen", rs.getString(253));
				session.setAttribute("temp_solicitante_v2_pre_lugar_de_trabajo", rs.getString(254));
				session.setAttribute("temp_solicitante_v2_pre_arrest_confirm", rs.getString(255));
				session.setAttribute("temp_solicitante_v2_razon_de_quitar_refug_recon", rs.getString(256));
				session.setAttribute("temp_solicitante_v2_fecha_de_quitar_refug_recon", rs.getString(257));
				session.setAttribute("temp_solicitante_v2_quitar_refug_recon", rs.getBlob(258));				
			}

			System.out.println("after the while loop");
			if (size == 0) {
				response.sendRedirect("main.jsp?target=solicitantes&search=norecfound");
			} else {
				response.sendRedirect("main.jsp?target=solicitante_upd_v2");	
			}	
			
		} else {
			response.sendRedirect("/onpar/salir.jsp");
		}
	}
	catch(Exception e){
		// throw e;
	} finally {
		if(prest != null) { prest.close(); }
		if(rs != null) { rs.close(); }
		if(con != null) { con.close(); }
	}
%>