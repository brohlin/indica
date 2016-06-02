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

	<!-- Pilares Section -->
	<section class="borde-superior ">
		<header>
			<div class="well">
				<h1 class="text-center text-white"><fmt:message key="estructura.element1" /></h1>
			</div>
		</header>

		<div class="container">
			<h4 class="text-center separador-top separador-bottom"><fmt:message key="estructura.element2" /></h4>

			<div class="panel-group separador-top" id="accordion">
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
							<div class="icono1 pilar-acordeon col-centered ">
								<div class="pilar-borde pilar-borde-violeta-acordeon"></div>
							</div>

							<h2><fmt:message key="estructura.element3" /></h2>
						</a>
				    </div>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element4" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element5" /></p>
						</div>
						<h4><fmt:message key="estructura.element6" /></h4>
						<ul>
							<li><fmt:message key="estructura.element7" /></li>
							<li><fmt:message key="estructura.element8" /></li>
							<li><fmt:message key="estructura.element9" /></li>
							<li><fmt:message key="estructura.element10" /></li>
							<li><fmt:message key="estructura.element11" /></li>
							<li><fmt:message key="estructura.element12" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
						<div class="icono2 pilar-acordeon col-centered ">
							<div class="pilar-borde pilar-borde-gris-acordeon"></div>
						</div>
							<h2><fmt:message key="estructura.element13" /></h2>
						</a>
					</div>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element14" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element15" /></p>
						</div>
						<h4><fmt:message key="estructura.element16" /></h4>
						<ul>
							<li><fmt:message key="estructura.element17" /></li>
							<li><fmt:message key="estructura.element18" /></li>
							<li><fmt:message key="estructura.element19" /></li>
							<li><fmt:message key="estructura.element20" /></li>
							<li><fmt:message key="estructura.element21" /></li>
							<li><fmt:message key="estructura.element22" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
							<div class="icono3 pilar-acordeon col-centered ">
								<div class="pilar-borde pilar-borde-violeta-acordeon"></div>
							</div>
							<h2><fmt:message key="estructura.element23" /></h2>
						</a>
					</div>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element24" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element25" /></p>
						</div>
						<h4><fmt:message key="estructura.element26" /></h4>
						<ul>
							<li><fmt:message key="estructura.element27" /></li>
							<li><fmt:message key="estructura.element28" /></li>
							<li><fmt:message key="estructura.element29" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
							<div class="icono4 pilar-acordeon col-centered ">
								<div class="pilar-borde pilar-borde-gris-acordeon"></div>
							</div>
							<h2><fmt:message key="estructura.element30" /></h2>
						</a>
					</div>
				</div>
				<div id="collapseFour" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element31" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element32" /></p>
						</div>
						<h4><fmt:message key="estructura.element33" /></h4>
						<ul>
							<li><fmt:message key="estructura.element34" /></li>
							<li><fmt:message key="estructura.element35" /></li>
							<li><fmt:message key="estructura.element36" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
							<div class="icono5 pilar-acordeon col-centered ">
								<div class="pilar-borde pilar-borde-violeta-acordeon"></div>
							</div>
							<h2><fmt:message key="estructura.element37" /></h2>
						</a>
					</div>
				</div>
				<div id="collapseFive" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element38" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element39" /></p>
						</div>
						<h4><fmt:message key="estructura.element40" /></h4>
						<ul>
							<li><fmt:message key="estructura.element41" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
							<div class="icono6 pilar-acordeon col-centered ">
								<div class="pilar-borde pilar-borde-gris-acordeon"></div>
							</div>
							<h2><fmt:message key="estructura.element44" /></h2>
						</a>
					</div>
				</div>
				<div id="collapseSix" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element45" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element46" /></p>
						</div>
						<h4><fmt:message key="estructura.element47" /></h4>
						<ul>
							<li><fmt:message key="estructura.element48" /></li>
							<li><fmt:message key="estructura.element49" /></li>
							<li><fmt:message key="estructura.element50" /></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven">
							<div class="icono7 pilar-acordeon col-centered ">
							<div class="pilar-borde pilar-borde-violeta-acordeon"></div>
						</div>
							<h2><fmt:message key="estructura.element51" /></h2></a>
					</div>
				</div>
				<div id="collapseSeven" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="row bloque">
							<h1 class="super-letra"><fmt:message key="estructura.element52" /></h1>
							<p class="bloque-centrado"><fmt:message key="estructura.element53" /></p>
						</div>
						<h4><fmt:message key="estructura.element54" /></h4>
						<ul>
							<li><fmt:message key="estructura.element55" /></li>
							<li><fmt:message key="estructura.element56" /></li>
							<li><fmt:message key="estructura.element57" /></li>
							<li><fmt:message key="estructura.element58" /></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>