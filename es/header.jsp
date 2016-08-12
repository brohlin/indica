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
	String p_target = request.getParameter("target");
	String p_message = request.getParameter("message");
	String p_bad_email = request.getParameter("bad_email");
	
	String p_organization_id = request.getParameter("organization_id");
	String p_page = request.getParameter("page");
	String p_section = request.getParameter("section");
	
	String v_descargas = "off";
	String v_auto_diagnostico = "off";
	String v_encuesta = "off";
	String v_resultados = "off";
	String v_login = "off";
	String v_gestionar_empresas = "off";
	String v_gestionar_cuentas = "off";
	String v_empresa_nueva = "off";
	String v_cuenta_nueva = "off";
	
	String _language = request.getParameter("language");
	
	if (_language == null || _language.equals("")) {
		_language = "";
	}
	
	if ((p_organization_id == null)  || p_organization_id.equals("")) {
		try {
			if ( session.getAttribute("temp_user_role_nm").equals("Empresa") ) {
				p_organization_id = session.getAttribute("temp_user_organization_id").toString();
			}
		} catch (Exception e) {
			// do nothing
		}		
	
		try {
			if ( session.getAttribute("temp_user_role_nm").equals("Admin") ) {	
				p_organization_id = request.getParameter("organization_id");
				// session.getAttribute("temp_admin_organization_id").toString();
			}
		} catch (Exception e) {
			// do nothing
		}	

	}

	if ((p_section == null) || p_section.equals("")) {
		p_section = "caracterizacion_basica";		
	}
	
	if ((p_page == null) || p_page.equals("")) {
		p_page = "inicio";
	}			
	
	try {
		if (session.getAttribute("temp_user_email") == null){
			v_login = "on";
		} else {
			if (p_target != null) {
				if (p_target.equals("auto_diagnostico") || p_target.equals("terminos") || p_target.equals("empresa")) {
					v_auto_diagnostico = "on";
				} else if (p_target.equals("encuesta")) {
					v_encuesta = "on";
				} else if (p_target.equals("resultados")) {
					v_resultados = "on";
				} else if (p_target.equals("gestionar_empresas")) {
					v_gestionar_empresas = "on";
				}  else if (p_target.equals("gestionar_cuentas")) {
					v_gestionar_cuentas = "on";
				}  else if (p_target.equals("empresa_nueva")) {
					v_empresa_nueva = "on";
				}  else if (p_target.equals("cuenta_nueva")) {
					v_cuenta_nueva = "on";
				}  else if (p_target.equals("descargas")) {
					v_descargas = "on";
				}      
				
				session.setAttribute("target",p_target);
			}		
		}
	}
	catch (Exception e) {
		throw e;
	}

	if (session.getAttribute("temp_user_role_nm") != null) {
		if ( session.getAttribute("temp_user_role_nm").equals("Empresa") && !session.getAttribute("temp_user_organization_id").toString().equals(p_organization_id)) {
			response.sendRedirect("/indica/es/main.jsp?target=error");
		}
	}

	
%>


<%
String str=request.getRequestURL()+"?";
Enumeration<String> paramNames = request.getParameterNames();
while (paramNames.hasMoreElements())
{
    String paramName = paramNames.nextElement();
    String[] paramValues = request.getParameterValues(paramName);
    for (int i = 0; i < paramValues.length; i++) 
    {
        String paramValue = paramValues[i];
		if ( !paramName.equals("language") ) {
			str=str + paramName + "=" + paramValue;
		}
    }
    str=str+"&";
	
}

	str=str.substring(0,str.length()-1);
%>

<!DOCTYPE html>
<html lang="${language}">

<head>
	<meta charset="utf-8">
	<title>Indica Igualdad</title>
	<meta name="description" content="Sistema de Indicadores Indica Igualdad">
	<meta name="author" content="PNUD">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Latest Bootstrap compiled and minified CSS -->
		<link rel="stylesheet" href="/indica/assets/css/bootstrap.min.css" media="all">
		<!--  link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" -->
		<!-- link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" -->

	<!-- Custom CSS -->
	<link rel="stylesheet" href="/indica/assets/css/custom.css" media="all">
	 <!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700%7cJosefin+Sans:400,700%7cRoboto+Condensed:300,400' rel='stylesheet' type='text/css' media="all">
	<!-- Glyphicons -->
<link rel="stylesheet" href="/indica/assets/css/font-awesome.min.css" media="all">
   <!-- Favicon-->
	<link rel="shortcut icon" href="/indica/assets/images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/indica/assets/images/favicon.ico" type="image/x-icon">
</head>
<body>



	<header>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">

					<div class="<fmt:message key="header.label.logo" /> logo-pnud-home">Logo PNUD</div>

					<!-- <img class="pull-right  " alt="Logo Pnud" src="images/logoPnud.png"> -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu-colapsible">
						<span class="sr-only">Desplegar menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>  
					</button> 
				</div> <!--fin de navbar-header-->

				
				<!-- Collect the nav links, forms, and other content for toggling -->
	
				<div class="row">
				<div class=" logo-indica-home"><img alt="Indica Igualdad" src="/indica/assets/images/logo.png"></div> 
					<div class="collapse navbar-collapse" id="menu-colapsible">
						<div class="col-md-11 col-lg-9 col-centered text-center" >
							<ul class="nav navbar-nav">
								
							
								
								<%
									// Menu for Empresa
									if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Empresa"))) {
								%>
										<li><a href="./main.jsp?target=inicio"><fmt:message key="header.label.home" /></a></li>
								<%

										if (v_auto_diagnostico.equals("on")) {
											if (session.getAttribute("temp_user_accept_terms") != null && session.getAttribute("temp_user_accept_terms").equals("on")) {
								%>								
												<li class="active-item"><a href="./main.jsp?target=empresa"><fmt:message key="header.label.self-diagnosis" /></a>
								<%
											} else {
								%> 
												<li  class="active-item"><a href="./main.jsp?target=terminos"><fmt:message key="header.label.self-diagnosis" /></a>												
								<%			
											}
										} else {
											if (session.getAttribute("temp_user_accept_terms") != null && session.getAttribute("temp_user_accept_terms").equals("on")) {
								%>
												<li><a href="./main.jsp?target=empresa"><fmt:message key="header.label.self-diagnosis" /></a>
								<%
											} else {
								%>
												<li><a href="./main.jsp?target=terminos"><fmt:message key="header.label.self-diagnosis" /></a>												
								<%			
											}
										}
								%>
												</li>
								<%					
										if (session.getAttribute("temp_user_organization_completed") != null && session.getAttribute("temp_user_organization_completed").equals("Y")) {
											if (v_resultados.equals("on")) {
								%>								
												<!-- li class="active-item"><a href="./main.jsp?target=resultados">RESULTADOS</a -->
												<li class="active-item"><a href="/indica/es/main.jsp?target=empresa_resultados_highcharts"><fmt:message key="header.label.organizations" /></a>
								<%
											} else {
								%>
												<!-- li><a href="./main.jsp?target=resultados">RESULTADOS</a -->
												<li><a href="/indica/es/main.jsp?target=empresa_resultados_highcharts"><fmt:message key="header.label.organizations" /></a>
											
								<%
											}
								%>
											</li>
											
								<%			
										}
								
										if (v_descargas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=descargas"><fmt:message key="header.label.downloads" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=descargas"><fmt:message key="header.label.downloads" /></a>
								<%
										}
								%>
											</li>											
								<%			
										if (v_encuesta.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_encuestas"><fmt:message key="header.label.survey" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_encuestas"><fmt:message key="header.label.survey" /></a>
								<%
										}
								%>
											</li>	
									
										<li><a href="#" data-toggle="dropdown" class=" btn btn-default navbar-btndropdown-toggle"><fmt:message key="header.label.user" /> <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="./main.jsp?target=cuenta"><fmt:message key="header.label.edit_profile" /></a></li>
												<li><a href="./salir.jsp"><fmt:message key="header.label.exit" /></a></li>
											</ul>
										</li>											
								<%
									}
								%>

								<%									
									// Menu for Admin
									if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Admin"))) {
								%>
										<li><a href="./main.jsp?target=inicio"><fmt:message key="header.label.home" /></a></li>
								<%
										if (v_gestionar_empresas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_empresas"><fmt:message key="header.label.organizations" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_empresas"><fmt:message key="header.label.organizations" /></a>
								<%
										}
								%>
											</li>
								<%			
										if (v_gestionar_cuentas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_cuentas"><fmt:message key="header.label.users" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_cuentas"><fmt:message key="header.label.users" /></a>
								<%
										}
								%>
											</li>
								<%			
										if (v_resultados.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=resultados"><fmt:message key="header.label.results" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=resultados"><fmt:message key="header.label.results" /></a>
								<%
										}
								%>
											</li>	
								<%											
										if (v_descargas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=descargas"><fmt:message key="header.label.downloads" /></a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=descargas"><fmt:message key="header.label.downloads" /></a>
											
								<%
										}
								%>
											</li>
										<li><a href="#" data-toggle="dropdown" class=" btn btn-default navbar-btndropdown-toggle"><fmt:message key="header.label.user" /><b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="./main.jsp?target=cuenta"><fmt:message key="header.label.edit_profile" /></a></li>
												<li><a href="./salir.jsp"><fmt:message key="header.label.exit" /></a></li>
											</ul>
										</li>
								<%
									} 
									
								// Menu for Login only
									if (session.getAttribute("temp_user_id") == null ) {
								%>
								
										<li><a href="#" data-toggle="dropdown" class=" btn btn-default navbar-btndropdown-toggle"><fmt:message key="header.label.home" /><b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="./main.jsp?target=inicio#introduccion"><fmt:message key="header.label.introduction" /></a></li>
												<li><a href="./main.jsp?target=inicio#organizacion"><fmt:message key="header.label.sevenpillars" /></a></li>
												<li><a href="./main.jsp?target=inicio#herramientas"><fmt:message key="header.label.assessmenttools" /></a></li>
												<li><a href="./main.jsp?target=inicio#descargas"><fmt:message key="header.label.resources" /></a></li>	
											</ul>
										</li>								
										

										
										<li><a href="./main.jsp?target=login"><fmt:message key="header.label.login" /></a></li>	
										
								<%
									}
								%>	
				
											
						   </ul>
						   
<form method="post" action="<%= str %>">
	<select id="language" name="language" onchange="submit()">
		<option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
		<option value="es" ${language == 'es' ? 'selected' : ''}>Español</option>
	</select>
</form>						   						
						   
						   
						</div>
					</div>  
				</div> <!-- fin de row -->	
			</div>  <!-- fin de container-->	
		</nav><!-- fin de navigation -->
	</header> <!--fin de header-->