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

	<section role="dialog" class="fondo-gris">
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"><fmt:message key="descargas.label.element1" /></h3>
					<h1 class="text-white"><fmt:message key="descargas.label.element2" /></h1>
				</div>
			</div>
		</header>
<div class="container">
	<div class="cuadrado-descargas col-md-9 col-centered">
		<div class="padding-small">
			<h3 class=""><fmt:message key="descargas.label.element3" /></h3>
		</div>
			<h2 class="text-orange"><fmt:message key="descargas.label.element4" /></h2>
			<p ><a href="/indica/assets/downloads/encuesta.pdf" target= "_blank" class="a-gris" ><span class="glyphicon glyphicon-cloud-download"></span><fmt:message key="descargas.label.element5" /></a></p>
			<h2 class="text-orange"><fmt:message key="descargas.label.element6" /></h2>
			<p ><a class="a-gris" href="/indica/assets/downloads/autodiagnostico.pdf" target= "_blank"><span class="glyphicon glyphicon-cloud-download"></span><fmt:message key="descargas.label.element7" /></a></p>
		
		<div class="padding-small ">
			<h3 class="separador-top"><fmt:message key="descargas.label.element8" /></h3>
		</div>
		<div class="col-md-9 col-centered">
			<ul class=" lista-descargas">
				<li>
					<a href="/indica/assets/downloads/guia.pdf" target= "_blank"  class="btn btn-primary btn-block">
						<h6 class="reset-margin"><fmt:message key="descargas.label.element9" /></h6>
					</a>
					</li>
				<li>
					<a href="/indica/assets/downloads/glosario.pdf" target= "_blank"  class="btn btn-gray btn-block">
						<h6 class="reset-margin"><fmt:message key="descargas.label.element10" /></h6>
					</a>
				</li>
				<li>
					<a href="/indica/assets/downloads/manual_igualdad_genero.pdf" target= "_blank"  class="btn btn-primary btn-block">
						<h6 class="reset-margin"><fmt:message key="descargas.label.element11" /></h6>
					</a>
				</li>
			</ul>
		</div>
		<div class="padding-small ">
			<h3 class="separador-top"><fmt:message key="descargas.label.element12" /></h3>
		</div>
		<h2 class="text-purple col-md-8 col-centered padding-xsmall"><fmt:message key="descargas.label.element13" /> <br> <fmt:message key="descargas.label.element14" /></h2>
		<p ><a href="/indica/assets/downloads/guia_empresas_violencia.pdf" target= "_blank" class="a-gris" ><span class="glyphicon glyphicon-cloud-download"></span><fmt:message key="descargas.label.element15" /></a></p>
		
		<h2 class="text-purple col-md-8 col-centered padding-xsmall"><fmt:message key="descargas.label.element16" /> <br><fmt:message key="descargas.label.element17" /></h2>
		<p ><a href="/indica/assets/downloads/guia_responsabilidades.pdf" target= "_blank" class="a-gris" ><span class="glyphicon glyphicon-cloud-download"></span><fmt:message key="descargas.label.element18" /></a></p>

		<div class="padding-small ">
			<h3 class="separador-top"><fmt:message key="descargas.label.element19" /> </h3>
		</div>
		<a href="http://americalatinagenera.org/newsite/index.php/es/centro-de-recursos" target="_blank"><img class="separador-bottom" alt="America Latina Genera" src="/indica/assets/images/logo-genera.png"></a>
		

	</div> <!-- fin de columna -->
</div>

</section>