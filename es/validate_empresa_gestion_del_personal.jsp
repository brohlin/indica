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
	parameters.add(request.getParameter("num_jornadas_anuales_pactadas_convenio_por_trab"));
	parameters.add(request.getParameter("num_jornadas_perdidas_mujeres"));
	parameters.add(request.getParameter("num_jornadas_perdidas_hombres"));
	parameters.add(request.getParameter("num_personas_cesaron_actividades_mujeres"));
	parameters.add(request.getParameter("num_personas_cesaron_actividades_hombres"));
	parameters.add(request.getParameter("num_total_mujeres_tomaron_licencia_de_maternidad"));
	parameters.add(request.getParameter("num_mujeres_no_se_reincoroporaron_tras_la_licencia"));
	parameters.add(request.getParameter("num_mujeres_se_reincoroporaron_tras_la_licencia"));
	parameters.add(request.getParameter("num_participantes_procesos_reclutamiento_y_seleccion_mujeres"));
	parameters.add(request.getParameter("num_participantes_procesos_reclutamiento_y_seleccion_hombres"));
	parameters.add(request.getParameter("num_contrataciones_realizadas_mujeres"));
	parameters.add(request.getParameter("num_contrataciones_realizadas_hombres"));
	parameters.add(request.getParameter("num_participantes_procesos_de_promocion_mujeres"));
	parameters.add(request.getParameter("num_participantes_procesos_de_promocion_hombres"));
	parameters.add(request.getParameter("num_promociones_realizadas_mujeres"));
	parameters.add(request.getParameter("num_promociones_realizadas_hombres"));
	parameters.add(request.getParameter("num_personas_efectivamente_formadas_mujeres"));
	parameters.add(request.getParameter("num_personas_efectivamente_formadas_hombres"));
	parameters.add(request.getParameter("num_total_horas_de_capacitacion_mujeres"));
	parameters.add(request.getParameter("num_total_horas_de_capacitacion_hombres"));
	parameters.add(request.getParameter("num_total_jornadas_anuales_pactadas_convenio_mujeres"));
	parameters.add(request.getParameter("num_total_jornadas_anuales_pactadas_convenio_hombres"));

	int x = Database.callProc("p_upd_organization_gestion_del_personal", parameters);

	if (x==1) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=otros_datos&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>