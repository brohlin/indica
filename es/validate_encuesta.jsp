<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException" %>


<%	
	request.setCharacterEncoding("UTF-8");
	String p_id = request.getParameter("id");
	String p_validation_code = request.getParameter("validation_code");
	String p_q1_respuesta_lkup = request.getParameter("q1_respuesta_lkup");
	String p_q2_respuesta_lkup = request.getParameter("q2_respuesta_lkup");
	String p_q3_respuesta_lkup = request.getParameter("q3_respuesta_lkup");
	String p_q4_respuesta_lkup = request.getParameter("q4_respuesta_lkup");
	String p_q5_respuesta_lkup = request.getParameter("q5_respuesta_lkup");
	String p_q6_respuesta_lkup = request.getParameter("q6_respuesta_lkup");
	String p_q7_respuesta_lkup = request.getParameter("q7_respuesta_lkup");
	String p_q8_respuesta_lkup = request.getParameter("q8_respuesta_lkup");
	String p_q9_respuesta_lkup = request.getParameter("q9_respuesta_lkup");
	String p_q10_respuesta_lkup = request.getParameter("q10_respuesta_lkup");
	String p_q11_respuesta_lkup = request.getParameter("q11_respuesta_lkup");
	String p_q12_respuesta_lkup = request.getParameter("q12_respuesta_lkup");
	String p_q13_respuesta_lkup = request.getParameter("q13_respuesta_lkup");
	String p_q14_respuesta_lkup = request.getParameter("q14_respuesta_lkup");
	String p_q15_respuesta_lkup = request.getParameter("q15_respuesta_lkup");
	String p_q16_respuesta_lkup = request.getParameter("q16_respuesta_lkup");
	String p_q17_respuesta_lkup = request.getParameter("q17_respuesta_lkup");
	String p_q18_respuesta_lkup = request.getParameter("q18_respuesta_lkup");
	String p_q19_respuesta_lkup = request.getParameter("q19_respuesta_lkup");
	String p_q20_respuesta_lkup = request.getParameter("q20_respuesta_lkup");
	String p_q21_respuesta_lkup = request.getParameter("q21_respuesta_lkup");
	String p_q22_respuesta_lkup = request.getParameter("q22_respuesta_lkup");
	String p_q23_respuesta_lkup = request.getParameter("q23_respuesta_lkup");
	String p_q24_respuesta_lkup = request.getParameter("q24_respuesta_lkup");
	String p_q25_respuesta_lkup = request.getParameter("q25_respuesta_lkup");
	String p_q26_respuesta_lkup = request.getParameter("q26_respuesta_lkup");	
	String p_gender = request.getParameter("gender");
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_id);
	parameters.add(p_validation_code);
	parameters.add(p_q1_respuesta_lkup);
	parameters.add(p_q2_respuesta_lkup);
	parameters.add(p_q3_respuesta_lkup);
	parameters.add(p_q4_respuesta_lkup);
	parameters.add(p_q5_respuesta_lkup);
	parameters.add(p_q6_respuesta_lkup);
	parameters.add(p_q7_respuesta_lkup);
	parameters.add(p_q8_respuesta_lkup);	
	parameters.add(p_q9_respuesta_lkup);
	parameters.add(p_q10_respuesta_lkup);
	parameters.add(p_q11_respuesta_lkup);
	parameters.add(p_q12_respuesta_lkup);
	parameters.add(p_q13_respuesta_lkup);
	parameters.add(p_q14_respuesta_lkup);
	parameters.add(p_q15_respuesta_lkup);
	parameters.add(p_q16_respuesta_lkup);
	parameters.add(p_q17_respuesta_lkup);
	parameters.add(p_q18_respuesta_lkup);
	parameters.add(p_q19_respuesta_lkup);
	parameters.add(p_q20_respuesta_lkup);	
	parameters.add(p_q21_respuesta_lkup);
	parameters.add(p_q22_respuesta_lkup);
	parameters.add(p_q23_respuesta_lkup);
	parameters.add(p_q24_respuesta_lkup);
	parameters.add(p_q25_respuesta_lkup);
	parameters.add(p_q26_respuesta_lkup);
	parameters.add(p_gender);
	int x = 0;
	
	x = Database.callProc("p_upd_emp_survey", parameters);
%>
number of updates = <%= x %>
<%
	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=encuesta_recibida");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>