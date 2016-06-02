<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="java.util.Enumeration" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="org.undp.i18n.text" />

<!--  %
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=encuesta");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
% -->


<%	
	String p_validation_code = request.getParameter("validation_code");
	String p_id = request.getParameter("id");
	
	if (p_validation_code == null) {
		p_validation_code = "";
	}
	
	if (p_id == null) {
		p_id = "0";
	}
		
	session.setAttribute("temp_emp_survey_id",null);
	session.setAttribute("temp_emp_survey_validation_code",null);
	session.setAttribute("temp_emp_survey_q1_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q2_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q3_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q4_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q5_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q6_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q7_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q8_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q9_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q10_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q11_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q12_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q13_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q14_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q15_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q16_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q17_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q18_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q19_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q20_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q21_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q22_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q23_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q24_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q25_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q26_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_completed",null);
	session.setAttribute("temp_emp_survey_organization_nm",null);
	session.setAttribute("temp_emp_survey_organization_id",null);
	session.setAttribute("temp_emp_survey_gender",null);
	
	
	
	DynStringArray parameters2 = new DynStringArray();
	parameters2.add(p_id);
	parameters2.add(p_validation_code);
	
		
	DbResults db = Database.callProcResults("p_get_encuesta", parameters2);
		
	int size=0;
	
	while(size<db.getRowCount())
	{
		session.setAttribute("temp_emp_survey_id",db.getRow(size).get(0));
		session.setAttribute("temp_emp_survey_validation_code",db.getRow(size).get(1));
		session.setAttribute("temp_emp_survey_q1_respuesta_lkup",db.getRow(size).get(2));
		session.setAttribute("temp_emp_survey_q2_respuesta_lkup",db.getRow(size).get(3));
		session.setAttribute("temp_emp_survey_q3_respuesta_lkup",db.getRow(size).get(4));
		session.setAttribute("temp_emp_survey_q4_respuesta_lkup",db.getRow(size).get(5));
		session.setAttribute("temp_emp_survey_q5_respuesta_lkup",db.getRow(size).get(6));
		session.setAttribute("temp_emp_survey_q6_respuesta_lkup",db.getRow(size).get(7));
		session.setAttribute("temp_emp_survey_q7_respuesta_lkup",db.getRow(size).get(8));
		session.setAttribute("temp_emp_survey_q8_respuesta_lkup",db.getRow(size).get(9));
		session.setAttribute("temp_emp_survey_q9_respuesta_lkup",db.getRow(size).get(10));
		session.setAttribute("temp_emp_survey_q10_respuesta_lkup",db.getRow(size).get(11));
		session.setAttribute("temp_emp_survey_q11_respuesta_lkup",db.getRow(size).get(12));
		session.setAttribute("temp_emp_survey_q12_respuesta_lkup",db.getRow(size).get(13));
		session.setAttribute("temp_emp_survey_q13_respuesta_lkup",db.getRow(size).get(14));
		session.setAttribute("temp_emp_survey_q14_respuesta_lkup",db.getRow(size).get(15));
		session.setAttribute("temp_emp_survey_q15_respuesta_lkup",db.getRow(size).get(16));
		session.setAttribute("temp_emp_survey_q16_respuesta_lkup",db.getRow(size).get(17));
		session.setAttribute("temp_emp_survey_q17_respuesta_lkup",db.getRow(size).get(18));
		session.setAttribute("temp_emp_survey_q18_respuesta_lkup",db.getRow(size).get(19));
		session.setAttribute("temp_emp_survey_q19_respuesta_lkup",db.getRow(size).get(20));
		session.setAttribute("temp_emp_survey_q20_respuesta_lkup",db.getRow(size).get(21));
		session.setAttribute("temp_emp_survey_q21_respuesta_lkup",db.getRow(size).get(22));
		session.setAttribute("temp_emp_survey_q22_respuesta_lkup",db.getRow(size).get(23));
		session.setAttribute("temp_emp_survey_q23_respuesta_lkup",db.getRow(size).get(24));
		session.setAttribute("temp_emp_survey_q24_respuesta_lkup",db.getRow(size).get(25));
		session.setAttribute("temp_emp_survey_q25_respuesta_lkup",db.getRow(size).get(26));
		session.setAttribute("temp_emp_survey_q26_respuesta_lkup",db.getRow(size).get(27));
		session.setAttribute("temp_emp_survey_completed",db.getRow(size).get(28));
		session.setAttribute("temp_emp_survey_organization_nm",db.getRow(size).get(29));
		session.setAttribute("temp_emp_survey_organization_id",db.getRow(size).get(30));
		session.setAttribute("temp_emp_survey_gender",db.getRow(size).get(31));
		size++;
	}	
	
%>



	<section class="bc-gray">
		<header>
			<div class="bc-purple text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"><fmt:message key="encuesta.element1" />:
						<%
							if (session.getAttribute("temp_emp_survey_organization_nm") != null) {	
						%>
								<%= session.getAttribute("temp_emp_survey_organization_nm").toString() %>
						<%
							} else {
						%>		
								&nbsp;	
						<%	
							}

						%>	

					</h3>
					<h1 class="text-white"><fmt:message key="encuesta.element2" /></h1>
				</div>
			</div>
		</header>
		
<%
	if (session.getAttribute("temp_emp_survey_id") != null ) {
		if (session.getAttribute("temp_emp_survey_completed") == null || session.getAttribute("temp_emp_survey_completed").toString().equals("N")) {
%>	

<div class="container">
	<div class="col-xs-12 col-md-10  col-centered cuadrado separador-top separador-bottom">
		<form class="form-plantilla" role="form" name="encuesta"  action="validate_encuesta.jsp" method="post">
			<input type="hidden" value="<%= p_validation_code %>" name="validation_code">
			<input type="hidden" value="<%= p_id %>" name="id">
			<fieldset>
				<h5><label class="label label-primary padding-small"><fmt:message key="encuesta.element3" /></label></h5>
				<div class="table">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">&nbsp;</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="gender"><fmt:message key="encuesta.element4" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="gender" name="gender"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_gender") == null || session.getAttribute("temp_emp_survey_gender").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="F" <% if (session.getAttribute("temp_emp_survey_gender") != null && session.getAttribute("temp_emp_survey_gender").equals("F")) { %> selected <% } %>><fmt:message key="encuesta.element5" /></option>
								<option value="M" <% if (session.getAttribute("temp_emp_survey_gender") != null && session.getAttribute("temp_emp_survey_gender").equals("M")) { %> selected <% } %>><fmt:message key="encuesta.element6" /></option>
							</select>
						</div>
					</div>	
				</div>
			</fieldset>
			<fieldset>
				<h5><label class="label label-primary padding-small"><fmt:message key="encuesta.element7" /></label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">1</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q1_respuesta_lkup"><fmt:message key="encuesta.element8" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q1_respuesta_lkup" name="q1_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">2</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q21_respuesta_lkup"><fmt:message key="encuesta.element15" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q21_respuesta_lkup" name="q21_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>					
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">3</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q2_respuesta_lkup"><fmt:message key="encuesta.element16" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q2_respuesta_lkup" name="q2_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">4</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q22_respuesta_lkup"><fmt:message key="encuesta.element17" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q22_respuesta_lkup" name="q22_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>
				</div>
			</fieldset>
			
			<fieldset>	
				<h5><label class="label label-primary padding-small"><fmt:message key="encuesta.element18" /></label></h5>				
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">5</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q3_respuesta_lkup"><fmt:message key="encuesta.element19" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q3_respuesta_lkup" name="q3_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
				
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">6</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q4_respuesta_lkup"><fmt:message key="encuesta.element20" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q4_respuesta_lkup" name="q4_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
						
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">7</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q23_respuesta_lkup"><fmt:message key="encuesta.element21" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q23_respuesta_lkup" name="q23_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">8</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q5_respuesta_lkup"><fmt:message key="encuesta.element22" /></label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q5_respuesta_lkup" name="q5_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">9</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q6_respuesta_lkup"><fmt:message key="encuesta.element23" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q6_respuesta_lkup" name="q6_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">10</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q24_respuesta_lkup"><fmt:message key="encuesta.element24" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q24_respuesta_lkup" name="q24_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>			
			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">11</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q7_respuesta_lkup"><fmt:message key="encuesta.element25" /> </label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q7_respuesta_lkup" name="q7_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">12</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q8_respuesta_lkup"><fmt:message key="encuesta.element26" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q8_respuesta_lkup" name="q8_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
				
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">13</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q25_respuesta_lkup"><fmt:message key="encuesta.element27" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q25_respuesta_lkup" name="q25_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">14</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q9_respuesta_lkup"><fmt:message key="encuesta.element28" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q9_respuesta_lkup" name="q9_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">15</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q10_respuesta_lkup"><fmt:message key="encuesta.element29" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q10_respuesta_lkup" name="q10_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>			

					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">16</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q26_respuesta_lkup"><fmt:message key="encuesta.element30" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q26_respuesta_lkup" name="q26_respuesta_lkup"  class="form-control" required>
								<option value="" disabled <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>	
						</div>
					</div>	
				</div>				
			</fieldset>
			
			<fieldset>
				<h5><label class="label label-primary padding-small"><fmt:message key="encuesta.element31" /></label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">17</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q11_respuesta_lkup"><fmt:message key="encuesta.element32" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q11_respuesta_lkup" name="q11_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">18</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q12_respuesta_lkup"><fmt:message key="encuesta.element33" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q12_respuesta_lkup" name="q12_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">19</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q13_respuesta_lkup"><fmt:message key="encuesta.element34" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q13_respuesta_lkup" name="q13_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">20</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q14_respuesta_lkup"><fmt:message key="encuesta.element35" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q14_respuesta_lkup" name="q14_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
				</div>				
			</fieldset>
			
			<fieldset>
				<h5><label class="label label-primary padding-small"><fmt:message key="encuesta.element36" /></label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">21</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q16_respuesta_lkup"><fmt:message key="encuesta.element37" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q16_respuesta_lkup" name="q16_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">22</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q17_respuesta_lkup"><fmt:message key="encuesta.element38" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q17_respuesta_lkup" name="q17_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>		
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">23</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q18_respuesta_lkup"><fmt:message key="encuesta.element39" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q18_respuesta_lkup" name="q18_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>		
						</div>
					</div>			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">24</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q15_respuesta_lkup"><fmt:message key="encuesta.element40" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q15_respuesta_lkup" name="q15_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">25</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q19_respuesta_lkup"><fmt:message key="encuesta.element41" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q19_respuesta_lkup" name="q19_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>		
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">26</label>
						</div>
						<div class="col-xs-7 ">
								<label class="titulo-input" for="q20_respuesta_lkup"><fmt:message key="encuesta.element42" /></label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q20_respuesta_lkup" name="q20_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("")) { %> selected <% } %>><fmt:message key="encuesta.element0" /></option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("87")) { %> selected <% } %>><fmt:message key="encuesta.element9" /></option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("85")) { %> selected <% } %>><fmt:message key="encuesta.element10" /></option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("86")) { %> selected <% } %>><fmt:message key="encuesta.element11" /></option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("88")) { %> selected <% } %>><fmt:message key="encuesta.element12" /></option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("84")) { %> selected <% } %>><fmt:message key="encuesta.element13" /></option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("83")) { %> selected <% } %>><fmt:message key="encuesta.element14" /></option>
							</select>		
						</div>
					</div>
				</div>				
			</fieldset>		
			<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="encuesta.element43" /></button>
		</form>
	</div>
</div>
<%
		} else {	
%>
		<section class="bc-gray">
		
		<div class="container">
			<div class="col-md-8 col-centered cuadrado separador-top separador-bottom text-center" >
				<h1 class="reset-margin text-orange"><i class="fa fa-check-circle"></i></h1>
				<h3>Gracias por su participación</h3>
				<p>Esta encuesta ya ha sido completada satisfactoriamente</p>
			</div>
		</div>
</section>
<%
		}
	}
%>
</section>

<!-- %
	}
% -->