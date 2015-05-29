<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>



<%	
	request.setCharacterEncoding("UTF-8");
	String p_validation_code = request.getParameter("validation_code");
	DynStringArray parameters = new DynStringArray();
	parameters.add(p_validation_code);

	DbResults db = Database.callProcResults("p_get_encuesta_login", parameters);
	
	int size=0;
	
	if (db.getRowCount()>size) {
		while(size<db.getRowCount())
		{
			session.setAttribute("temp_emp_survey_id",db.getRow(size).get(0));
			session.setAttribute("temp_emp_survey_organizaiton_id",db.getRow(size).get(1));
			session.setAttribute("temp_emp_survey_nm",db.getRow(size).get(2));
			session.setAttribute("temp_emp_survey_email",db.getRow(size).get(3));
			session.setAttribute("temp_emp_survey_validation_code",db.getRow(size).get(4));
			session.setAttribute("temp_emp_survey_completed",db.getRow(size).get(5));
			session.setAttribute("temp_emp_survey_date_sent",db.getRow(size).get(6));
			session.setAttribute("temp_emp_survey_date_expires",db.getRow(size).get(7));
			session.setAttribute("temp_emp_survey_last_mod_tmstmp",db.getRow(size).get(8));
			
			size++;
		}
		
		if (session.getAttribute("temp_emp_survey_completed").equals("Y")) {
			response.sendRedirect("/indica/es/main.jsp?target=encuesta_recibida");
		} else {
			response.sendRedirect("/indica/es/main.jsp?target=encuesta&id=" + session.getAttribute("temp_emp_survey_id").toString() + "&validation_code=" + session.getAttribute("temp_emp_survey_validation_code").toString());	
		}
		
	} else if (db.getRowCount() == 0) { 
		response.sendRedirect("/indica/es/main.jsp?target=encuesta_login&message=failed_encuesta_login");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}
	
%>