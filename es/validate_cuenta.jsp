<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException" %>


<%
	request.setCharacterEncoding("UTF-8");
	String p_role = request.getParameter("role");
	String p_user_status = request.getParameter("user_status");
	String p_email = request.getParameter("email");
	String p_first_nm = request.getParameter("first_nm");
	String p_last_nm = request.getParameter("last_nm");
	String p_position_title = request.getParameter("position_title");
	String p_tel_nbr = request.getParameter("tel_nbr");
	String p_skype_handle = request.getParameter("skype_handle");	
	String p_pwd = request.getParameter("pwd");
	String p_organization = request.getParameter("organization");
	String p_user_id = request.getParameter("user_id");		
	
	if (p_role == null || p_role.equals("null")) {
		p_role = session.getAttribute("temp_admin_user_role_id").toString();
	}
	
	if (p_user_status == null || p_user_status.equals("null")) {
		p_user_status = session.getAttribute("temp_admin_user_user_status_id").toString();
	}
	
	if (p_organization == null || p_organization.equals("null")) {
		p_organization = session.getAttribute("temp_admin_user_organization_id").toString();
	}	
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_user_status);
	parameters.add(p_role);
	parameters.add(p_email);
	parameters.add(p_pwd);
	parameters.add(p_first_nm);
	parameters.add(p_last_nm);
	parameters.add(p_position_title);
	parameters.add(p_tel_nbr);
	parameters.add(p_skype_handle);
	parameters.add(p_organization);
	parameters.add(p_user_id);
	
	int x = 0;
	
	x = Database.callProc("p_upd_user", parameters);

	if (x>0) {
		
		if (session.getAttribute("temp_user_role_nm") != null && session.getAttribute("temp_user_role_nm").equals("Admin")) {
			response.sendRedirect("/indica/es/main.jsp?target=gestionar_cuentas");
		} else {
			response.sendRedirect("/indica/es/main.jsp?target=inicio");
		}
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>