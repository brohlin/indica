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
	parameters.add(request.getParameter("num_direccion_general_o_maximo_cargo_mujeres"));
	parameters.add(request.getParameter("num_direccion_general_o_maximo_cargo_hombres"));
	parameters.add(request.getParameter("num_puestos_directivos_como_gerencias_mujeres"));
	parameters.add(request.getParameter("num_puestos_directivos_como_gerencias_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres"));
	parameters.add(request.getParameter("num_subtotal_cargos_responsabilidad_mujeres"));
	parameters.add(request.getParameter("num_subtotal_cargos_responsabilidad_hombres"));
	parameters.add(request.getParameter("num_puestos_tecnicos_mujeres"));
	parameters.add(request.getParameter("num_puestos_tecnicos_hombres"));
	parameters.add(request.getParameter("num_puestos_administrativos_mujeres"));
	parameters.add(request.getParameter("num_puestos_administrativos_hombres"));
	parameters.add(request.getParameter("num_puestos_auxiliares_mujeres"));
	parameters.add(request.getParameter("num_puestos_auxiliares_hombres"));
	parameters.add(request.getParameter("num_puestos_operarios_mujeres"));
	parameters.add(request.getParameter("num_puestos_operarios_hombres"));
	parameters.add(request.getParameter("puestos_a"));
	parameters.add(request.getParameter("num_puestos_a_mujeres"));
	parameters.add(request.getParameter("num_puestos_a_hombres"));
	parameters.add(request.getParameter("puestos_b"));
	parameters.add(request.getParameter("num_puestos_b_mujeres"));
	parameters.add(request.getParameter("num_puestos_b_hombres"));
	parameters.add(request.getParameter("puestos_c"));
	parameters.add(request.getParameter("num_puestos_c_mujeres"));
	parameters.add(request.getParameter("num_puestos_c_hombres"));
	parameters.add(request.getParameter("puestos_d"));
	parameters.add(request.getParameter("num_puestos_d_mujeres"));
	parameters.add(request.getParameter("num_puestos_d_hombres"));
	parameters.add(request.getParameter("num_subtotal_resto_plantilla_mujeres"));
	parameters.add(request.getParameter("num_subtotal_resto_plantilla_hombres"));
	parameters.add(request.getParameter("num_total_de_la_plantilla_mujeres"));
	parameters.add(request.getParameter("num_total_de_la_plantilla_hombres"));

	
	parameters.add(request.getParameter("num_dept_administracion_mujeres"));
	parameters.add(request.getParameter("num_dept_comercial_y_ventas_mujeres"));
	parameters.add(request.getParameter("num_dept_logistica_mujeres"));
	parameters.add(request.getParameter("num_dept_produccion_mujeres"));
	parameters.add(request.getParameter("num_dept_financiero_mujeres"));
	parameters.add(request.getParameter("num_dept_recursos_humanos_mujeres"));
	parameters.add(request.getParameter("num_dept_a_mujeres"));
	parameters.add(request.getParameter("num_dept_b_mujeres"));
	parameters.add(request.getParameter("num_dept_c_mujeres"));
	parameters.add(request.getParameter("num_dept_d_mujeres"));
	parameters.add(request.getParameter("num_dept_e_mujeres"));
	parameters.add(request.getParameter("num_dept_total_mujeres"));
	parameters.add(request.getParameter("num_dept_administracion_hombres"));
	parameters.add(request.getParameter("num_dept_comercial_y_ventas_hombres"));
	parameters.add(request.getParameter("num_dept_logistica_hombres"));
	parameters.add(request.getParameter("num_dept_produccion_hombres"));
	parameters.add(request.getParameter("num_dept_financiero_hombres"));
	parameters.add(request.getParameter("num_dept_recursos_humanos_hombres"));
	parameters.add(request.getParameter("num_dept_a_hombres"));
	parameters.add(request.getParameter("num_dept_b_hombres"));
	parameters.add(request.getParameter("num_dept_c_hombres"));
	parameters.add(request.getParameter("num_dept_d_hombres"));
	parameters.add(request.getParameter("num_dept_e_hombres"));
	parameters.add(request.getParameter("num_dept_total_hombres"));
	parameters.add(request.getParameter("num_total_integrantes_consejo_de_direccion_mujeres"));
	parameters.add(request.getParameter("num_total_integrantes_consejo_de_direccion_hombres"));
	parameters.add(request.getParameter("dept_a"));
	parameters.add(request.getParameter("dept_b"));
	parameters.add(request.getParameter("dept_c"));
	parameters.add(request.getParameter("dept_d"));
	parameters.add(request.getParameter("dept_e"));
	parameters.add(request.getParameter("coinicide_con_tabla1_mujeres"));
	parameters.add(request.getParameter("coinicide_con_tabla1_hombres"));
	
	int x = Database.callProc("p_upd_organization_plantilla", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=condiciones_laborales&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>