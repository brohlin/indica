<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="org.undp.i18n.text" />

<section class="bc-gray">
		<div class="bc-purple text-white padding-small borde-inferior">
			<div class="container">
				<h3 class="text-white"><fmt:message key="encuesta_expirada.element1" /></h3>
				<h1 class="text-white"><fmt:message key="encuesta_expirada.element2" /></h1>
			</div>
		</div>
		<div class="container">
			<div class="col-md-8 col-centered cuadrado separador-top separador-bottom text-center" >
				<h1 class="reset-margin text-orange"><i class="fa fa-exclamation-circle" style = "color:#ff0000"></i></h1>
				<h3><fmt:message key="encuesta_expirada.element3" /></h3>
				<p><fmt:message key="encuesta_expirada.element4" /></p>
			</div>
		</div>
</section>
