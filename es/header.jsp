<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>


<%
	String p_target = request.getParameter("target");
	String p_message = request.getParameter("message");
	
	String p_organization_id = null;
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
	
	if (p_organization_id == null) {
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

%>


<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="utf-8">
	<title>Indica Igualdad</title>
	<meta name="description" content="Sistema de Indicadores Indica Igualdad">
	<meta name="author" content="PNUD">
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<!-- Latest Bootstrap compiled and minified CSS -->
		<link rel="stylesheet" href="/indica/assets/css/bootstrap.min.css">
		<!--  link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" -->
		<!-- link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" -->

	<!-- Custom CSS -->
	<link rel="stylesheet" href="/indica/assets/css/custom.css">
	 <!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700%7cJosefin+Sans:400,700%7cRoboto+Condensed:300,400' rel='stylesheet' type='text/css'>
	<!-- Glyphicons -->
<link rel="stylesheet" href="/indica/assets/css/font-awesome.min.css">
   <!-- Favicon-->
	<link rel="shortcut icon" href="/indica/assets/images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/indica/assets/images/favicon.ico" type="image/x-icon">
</head>
<body>



	<header>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<div class="logo-pnud64-3 logo-pnud-home">Logo Pnud</div>
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
								<li><a href="./main.jsp?target=inicio">INICIO</a></li>
								<%
									// Menu for Empresa
									if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Empresa"))) {

										if (v_auto_diagnostico.equals("on")) {
											if (session.getAttribute("temp_user_accept_terms") != null && session.getAttribute("temp_user_accept_terms").equals("on")) {
								%>								
												<li class="active-item"><a href="./main.jsp?target=empresa">AUTO-DIAGNÓSTICO</a>
								<%
											} else {
								%> 
												<li  class="active-item"><a href="./main.jsp?target=terminos">AUTO-DIAGNÓSTICO</a>												
								<%			
											}
										} else {
											if (session.getAttribute("temp_user_accept_terms") != null && session.getAttribute("temp_user_accept_terms").equals("on")) {
								%>
												<li><a href="./main.jsp?target=empresa">AUTO-DIAGNÓSTICO</a>
								<%
											} else {
								%>
												<li><a href="./main.jsp?target=terminos">AUTO-DIAGNÓSTICO</a>												
								<%			
											}
										}
								%>
												</li>
								<%											
										if (v_resultados.equals("on")) {
								%>								
											<!-- li class="active-item"><a href="./main.jsp?target=resultados">RESULTADOS</a -->
											<li class="active-item"><a href="/indica/es/main.jsp?target=empresa_resultados_highcharts">RESULTADOS</a>
								<%
										} else {
								%>
											<!-- li><a href="./main.jsp?target=resultados">RESULTADOS</a -->
											<li><a href="/indica/es/main.jsp?target=empresa_resultados_highcharts">RESULTADOS</a>
											
								<%
										}
								%>
											</li>
											
								<%											
										if (v_descargas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=descargas">DESCARGAS</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=descargas">DESCARGAS</a>
								<%
										}
								%>
											</li>											
								<%			
										if (v_encuesta.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_encuestas">ENCUESTA</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_encuestas">ENCUESTA</a>
								<%
										}
								%>
											</li>	
									
										<li><a href="#" data-toggle="dropdown" class=" btn btn-default navbar-btndropdown-toggle">Usuario <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="./main.jsp?target=cuenta">EDITAR PERFIL</a></li>
												<li><a href="./salir.jsp">SALIR</a></li>
											</ul>
										</li>											
								<%
									}
								%>

								<%									
									// Menu for Admin
									if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Admin"))) {
										if (v_gestionar_empresas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_empresas">EMPRESAS</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_empresas">EMPRESAS</a>
								<%
										}
								%>
											</li>
								<%			
										if (v_gestionar_cuentas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=gestionar_cuentas">CUENTAS</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=gestionar_cuentas">CUENTAS</a>
								<%
										}
								%>
											</li>
								<%			
										if (v_resultados.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=resultados">RESULTADOS</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=resultados">RESULTADOS</a>
								<%
										}
								%>
											</li>	
								<%											
										if (v_descargas.equals("on")) {
								%>								
											<li class="active-item"><a href="./main.jsp?target=descargas">DESCARGAS</a>
								<%
										} else {
								%>
											<li><a href="./main.jsp?target=descargas">DESCARGAS</a>
								<%
										}
								%>
											</li>
										<li><a href="#" data-toggle="dropdown" class=" btn btn-default navbar-btndropdown-toggle">Nombre de usuario <b class="caret"></b></a>
											<ul class="dropdown-menu">
												<li><a href="./main.jsp?target=cuenta">EDITAR PERFIL</a></li>
												<li><a href="./salir.jsp">SALIR</a></li>
											</ul>
										</li>
								<%
									} 
									
								// Menu for Login only
									if (session.getAttribute("temp_user_id") == null && p_target.equals("inicio")) {
								%>
										<li class="active-item"><a href="./main.jsp?target=login">LOGIN</a></li>
								<%
									}
								%>	
											
						   </ul>
						</div>
					</div>  
				</div> <!-- fin de row -->	
			</div>  <!-- fin de container-->	
		</nav><!-- fin de navigation -->
	</header> <!--fin de header-->