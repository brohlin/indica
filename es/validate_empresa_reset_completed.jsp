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
	parameters.add(request.getParameter("completed"));

	int x = Database.callProc("p_upd_organization_completed", parameters);

	if (x==1) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=caracterizacion_basica&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>