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
	parameters.add(request.getParameter("q1_lkup"));
	parameters.add(request.getParameter("q2_lkup"));
	parameters.add(request.getParameter("q3_lkup"));
	parameters.add(request.getParameter("q4_lkup"));
	parameters.add(request.getParameter("q5_lkup"));
	parameters.add(request.getParameter("q6_lkup"));
	parameters.add(request.getParameter("q7_lkup"));
	parameters.add(request.getParameter("q8_lkup"));
	parameters.add(request.getParameter("q9_lkup"));
	parameters.add(request.getParameter("q10_lkup"));
	parameters.add(request.getParameter("q11_lkup"));
	parameters.add(request.getParameter("q12_lkup"));
	parameters.add(request.getParameter("q13_lkup"));
	parameters.add(request.getParameter("q14_lkup"));
	parameters.add(request.getParameter("q15_lkup"));
	parameters.add(request.getParameter("q16_lkup"));
	parameters.add(request.getParameter("q17_lkup"));
	parameters.add(request.getParameter("q18_lkup"));
	parameters.add(request.getParameter("q19_lkup"));
	parameters.add(request.getParameter("q20_lkup"));
	parameters.add(request.getParameter("q21_lkup"));
	parameters.add(request.getParameter("q22_lkup"));
	parameters.add(request.getParameter("q23_lkup"));
	parameters.add(request.getParameter("q24_lkup"));
	parameters.add(request.getParameter("q25_lkup"));
	parameters.add(request.getParameter("q26_lkup"));
	parameters.add(request.getParameter("q27_lkup"));
	parameters.add(request.getParameter("q28_lkup"));
	parameters.add(request.getParameter("q29_lkup"));
	parameters.add(request.getParameter("q30_lkup"));
	parameters.add(request.getParameter("q31_lkup"));
	parameters.add(request.getParameter("q32_lkup"));
	parameters.add(request.getParameter("q33_lkup"));
	parameters.add(request.getParameter("q34_lkup"));
	parameters.add(request.getParameter("q35_lkup"));
	parameters.add(request.getParameter("q36_lkup"));
	parameters.add(request.getParameter("q37_lkup"));
	parameters.add(request.getParameter("q38_lkup"));
	parameters.add(request.getParameter("q39_lkup"));
	parameters.add(request.getParameter("q40_lkup"));
	parameters.add(request.getParameter("q41_lkup"));
	parameters.add(request.getParameter("q42_lkup"));
	parameters.add(request.getParameter("q43_lkup"));
	parameters.add(request.getParameter("q44_lkup"));
	parameters.add(request.getParameter("q45_lkup"));
	parameters.add(request.getParameter("q46_lkup"));
	parameters.add(request.getParameter("q47_lkup"));
	parameters.add(request.getParameter("q48_lkup"));
	parameters.add(request.getParameter("q49_lkup"));
	parameters.add(request.getParameter("q50_lkup"));
	parameters.add(request.getParameter("q51_lkup"));
	parameters.add(request.getParameter("q52_lkup"));
	parameters.add(request.getParameter("q53_lkup"));
	parameters.add(request.getParameter("q54_lkup"));
	parameters.add(request.getParameter("q55_lkup"));
	parameters.add(request.getParameter("q56_lkup"));
	parameters.add(request.getParameter("q57_lkup"));
	parameters.add(request.getParameter("q58_lkup"));
	parameters.add(request.getParameter("q59_lkup"));	
	int x = Database.callProc("p_upd_organization_otros_datos", parameters);

	if (x==1) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=fin&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>