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

<%
	String un = (String) session.getAttribute("temp_user_id");
	String _email = request.getParameter("email");
	String _user_id = request.getParameter("user_id");
	
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=gestionar_encuestas");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<section>
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"><fmt:message key="gestionar_cuentas.element1" /></h3>
					<h1 class="text-white"><fmt:message key="gestionar_cuentas.element2" /></h1>
				</div>
			</div>
		</header>
				<div class="bc-gray padding-medium">
			<div class="container">
				<!-- Buscar cuenta -->	
				<div id="buscar-cuenta" class="col-md-6 padding-small">
					
					<form class="form-horizontal" role="form"  name="cuentas" action="./main.jsp?target=gestionar_cuentas" method="post">
						<fieldset>
						<!-- Form Name -->
						<legend>
							<h3><fmt:message key="gestionar_cuentas.element3" /></h3>
						</legend>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="user_id"><fmt:message key="gestionar_cuentas.element4" /></label>  
						  <div class="col-md-7">
						  <input id="user_id" name="user_id" type="text" placeholder="ID" class="form-control input-md">
						  </div>
						</div>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="email"><fmt:message key="gestionar_cuentas.element5" /></label>  
						  <div class="col-md-7">
						  <input id="email" name="email" type="text" placeholder="<fmt:message key="gestionar_cuentas.element6" />" class="form-control input-md">
						
						  </div>
						</div>

						<!-- Button -->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="singlebutton"></label>
						  <div class="col-md-7">
						  	<button id="singlebutton" name="singlebutton" class="btn btn-primary btn-block"><fmt:message key="gestionar_cuentas.element7" /></button>
						  </div>
						</div>

						</fieldset>
						</form>

				</div>
				<!-- Añadir empresa -->	
				<div id="anadir-empresa" class="col-md-5 padding-small">
					<fieldset>
						<legend>
							<h3><fmt:message key="gestionar_cuentas.element8" /></h3>
						</legend>
						<form name="cuenta" action="main.jsp?target=cuenta_nueva" method="post">
							<div class="col-centered col-md-7 separador-top">
								<button type="submit" class="btn btn-info padding-small btn-block"><fmt:message key="gestionar_cuentas.element9" /></button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div> <!-- fin franja gris -->		
		
		 <!-- LISTA DE CUENTAS -->	
		<div class="container">
					
			<div id="lista-cuentas" class="col-md-8 col-centered separador-bottom ">
				
				<h3 class="text-center separador-top "> <fmt:message key="gestionar_cuentas.element10" /></h3>
				
				<table class="table table-hover separador-top separador-bottom" >
					<tr>
						<th nowrap><fmt:message key="gestionar_cuentas.element11" /></th>
						<th nowrap><fmt:message key="gestionar_cuentas.element12" /></th>
						<th nowrap><fmt:message key="gestionar_cuentas.element13" /></th>
						<th nowrap><fmt:message key="gestionar_cuentas.element14" /></th>
						<th nowrap><fmt:message key="gestionar_cuentas.element15" /></th>
						<th nowrap><fmt:message key="gestionar_cuentas.element16" /></th>
					</tr>	
					<%	

						DynStringArray parameters = new DynStringArray();
						parameters.add(_user_id);
						parameters.add(_email);

						DbResults db = Database.callProcResults("p_get_users", parameters);
						
						int size=0;
						String bgColor = "bc-grayb";
						while(size<db.getRowCount())
						{
							if (bgColor.equals("bc-grayb")) {
					%>
							<tr class="bc-grayb">
					<%
								bgColor = "";
						}  else {
					%>
							<tr>
					<%
								bgColor = "bc-grayb";
						}
					%>
								<td><%= db.getRow(size).get(0) %></td>
								<td><a href="./main.jsp?target=cuenta&user_id=<%= db.getRow(size).get(0) %>"><%= db.getRow(size).get(1) %></a></td>
								<td><%= db.getRow(size).get(2) %></td>
								<td><%= db.getRow(size).get(3) %></td>
								<td><%= db.getRow(size).get(4) %></td>
								<td><%= db.getRow(size).get(5) %></td>
							</tr>
					<%
							size++;
						}
					%>

				</table>
			</div><!-- fin de cuentas -->
		</div> <!-- fin de container -->
</section>

<%
	}
%>