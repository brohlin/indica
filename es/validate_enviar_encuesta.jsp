<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException" %>


<%	
	request.setCharacterEncoding("UTF-8");
	String p_organization_id = request.getParameter("organization_id");
	String p_email = request.getParameter("email");		
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_organization_id);
	parameters.add(p_email);
	
	int x = 0;
	
	x = Database.callProc("p_ins_emp_survey", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=gestionar_encuestas");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>