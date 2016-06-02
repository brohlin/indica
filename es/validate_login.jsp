<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>



<%	
	request.setCharacterEncoding("UTF-8");
	String p_email = request.getParameter("email");
	String p_pwd = request.getParameter("pwd");
	String p_page_target = request.getParameter("page");
	String p_organization_id = request.getParameter("organization_id");
	DynStringArray parameters = new DynStringArray();
	parameters.add(p_email);
	parameters.add(p_pwd);

	DbResults db = Database.callProcResults("p_get_user", parameters);
	
	int size=0;
	
	if (db.getRowCount()>size) {
		while(size<db.getRowCount())
		{
			session.setAttribute("temp_user_id",db.getRow(size).get(0));
			session.setAttribute("temp_user_user_status_id",db.getRow(size).get(1));
			session.setAttribute("temp_user_user_status_nm",db.getRow(size).get(2));
			session.setAttribute("temp_user_role_id",db.getRow(size).get(3));
			session.setAttribute("temp_user_role_nm",db.getRow(size).get(4));
			session.setAttribute("temp_user_email",db.getRow(size).get(5));
			session.setAttribute("temp_user_pwd",db.getRow(size).get(6));
			session.setAttribute("temp_user_first_nm",db.getRow(size).get(7));
			session.setAttribute("temp_user_last_nm",db.getRow(size).get(8));
			session.setAttribute("temp_user_position_title",db.getRow(size).get(9));
			session.setAttribute("temp_user_tel_nbr",db.getRow(size).get(10));
			session.setAttribute("temp_user_skype_handle",db.getRow(size).get(11));
			session.setAttribute("temp_user_organization_id",db.getRow(size).get(12));
			session.setAttribute("temp_user_organization_nm",db.getRow(size).get(13));
			session.setAttribute("temp_user_accept_terms",db.getRow(size).get(14));
			session.setAttribute("temp_user_organization_completed",db.getRow(size).get(15));
			
			
			
			size++;
		}
		
		if (p_page_target.equals("empresa_render_resultados_highcharts")) {
			response.sendRedirect("/indica/es/" + p_page_target + ".jsp?organization_id=" + p_organization_id);
		} else if (p_page_target.equals("empresa_render_resultados_encuesta")) {
			response.sendRedirect("/indica/es/" + p_page_target + ".jsp?organization_id=" + p_organization_id);
		} else {
			response.sendRedirect("/indica/es/main.jsp?target=" + p_page_target);
		}
	} else if (db.getRowCount() == 0) { 
		response.sendRedirect("/indica/es/main.jsp?target=login&message=failed_login");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}
	
%>