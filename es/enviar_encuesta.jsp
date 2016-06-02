<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=enviar_encuesta");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>


<section role="dialog" class="borde-superior fondo-gris">
	<header>
		<div class="well">
			<h1 class="text-center text-white"><fmt:message key="enviar_encuesta.element1" /></h1>
		</div>
		<div class="well-2 bc-purple">
			<h3 class="text-center text-white">&nbsp;</h3>
		</div>
	</header>
<div class="container">
	<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">	
	<fieldset>
		<form class="form-horizontal" role="form" name="enviar_encuesta"  action="validate_enviar_encuesta.jsp" method="post">
			<input type="hidden" value="<%= session.getAttribute("temp_user_organization_id").toString() %>" name="organization_id">

			<div class="form-group">
				<label for="inputPrimerNombre"><fmt:message key="enviar_encuesta.element2" /></label>
				<br><fmt:message key="enviar_encuesta.element3" />
				<div class="col-sm-9 input-group">
					<textarea name="email" rows="20" cols="50" maxlength="1000" placeholder="<fmt:message key="enviar_encuesta.element4" />"></textarea>
				</div>
			</div>

			<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="enviar_encuesta.element5" /></button>
		</form>
	</fieldset>
</div>
</div>
</section>


<%
	}
%>