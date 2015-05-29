<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>

<%	
	request.setCharacterEncoding("UTF-8");
	String p_nm = request.getParameter("nm");
	String p_denominacion_social = request.getParameter("denominacion_social");
	String p_cif = request.getParameter("cif");
	String p_domicilio_social = request.getParameter("domicilio_social");
	String p_naturaleza_juridica_lkup = request.getParameter("naturaleza_juridica_lkup");
	String p_pais_de_ubicacion_lkup = request.getParameter("pais_de_ubicacion_lkup");
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_nm);
	parameters.add(p_denominacion_social);
	parameters.add(p_cif);
	parameters.add(p_domicilio_social);
	parameters.add(p_naturaleza_juridica_lkup);
	parameters.add(p_pais_de_ubicacion_lkup);

	int x = 0;
	x = Database.callProc("p_ins_organization", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=gestionar_empresas");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>