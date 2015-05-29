<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>



<%	
	request.setCharacterEncoding("UTF-8");
	String p_user_id = request.getParameter("user_id");
	String p_accept_terminos = request.getParameter("accept_terminos");
	DynStringArray parameters = new DynStringArray();
	parameters.add(p_user_id);
	parameters.add(p_accept_terminos);

	int x = Database.callProc("p_upd_user_accept_terms", parameters);

	if (x > 0 ) {
		session.setAttribute("temp_user_accept_terms","on");
		response.sendRedirect("/indica/es/main.jsp?target=empresa&organization_id=" + session.getAttribute("temp_user_organization_id"));
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}
	
%>