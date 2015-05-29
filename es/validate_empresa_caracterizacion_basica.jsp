ï»¿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 


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
	parameters.add(request.getParameter("nm"));
	// parameters.add(request.getParameter("denominacion_social"));
	// parameters.add(request.getParameter("cif"));
	parameters.add(request.getParameter(""));
	parameters.add(request.getParameter(""));
	
	parameters.add(request.getParameter("domicilio_social"));
	parameters.add(request.getParameter("naturaleza_juridica_lkup"));
	parameters.add(request.getParameter("pais_de_ubicacion_lkup"));
	parameters.add(request.getParameter("contacto_nombre"));
	parameters.add(request.getParameter("contacto_cargo"));
	parameters.add(request.getParameter("contacto_tel"));
	parameters.add(request.getParameter("contacto_fax"));
	parameters.add(request.getParameter("contacto_email"));
	parameters.add(request.getParameter("sector_de_actividad_lkup"));
	// parameters.add(request.getParameter("ciiu"));
	parameters.add(request.getParameter(""));
	
	parameters.add(request.getParameter("mercado_lkup"));
	parameters.add(request.getParameter("num_de_personas_trabajadores"));
	parameters.add(request.getParameter("facturacion_anual_lkup"));

	int x = Database.callProc("p_upd_organization_cb", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=plantilla&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>