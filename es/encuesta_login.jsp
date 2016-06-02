		<section class="borde-superior fondo-gris" role="dialog">
			<h4 class="text-hide reset-margin"><fmt:message key="encuesta_login.element1" /></h4>
			<div class="container" >
						<div class="cuadrado separador-top separador-bottom col-sm-8 col-md-6 col-centered">
						<fieldset>
						
	<% 
		if ((p_message != null) && (p_message.equals("failed_encuesta_login"))) {
	%>
							<legend  class="text-center"><strong><fmt:message key="encuesta_login.element2" /></legend>	
	<%
		} else {
	%>							
							<legend  class="text-center"><fmt:message key="encuesta_login.element3" /></legend>
	<%
		}
	%>
							<form class="form-horizontal" role="form" name="encuesta_login" action="/indica/es/validate_encuesta_login.jsp" method="post">
								<div class="form-group">
									<label for="validate_code" class="col-sm-3 col-md-3 control-label"><fmt:message key="encuesta_login.element4" /></label>
									<div class="col-sm-9 input-group">
										<input maxlength="10" type="text" class="form-control" id="validation_code" placeholder="<fmt:message key="encuesta_login.element5" />" name="validation_code" required="required">
									</div>
									
								
								</div>


	

								<div class="form-group">								
									<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-info btn-block"><fmt:message key="encuesta_login.element6" /></button>
									</div>
								</div>
					  	</form>
          	</fieldset>
						</div>
			</div>        
		</section>