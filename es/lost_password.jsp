		<section class="borde-superior fondo-gris " role="dialog">
			<h4 class="text-hide reset-margin"><fmt:message key="lost_password.element1" /></h4>
			<div class="container" >
						<div class="cuadrado col-sm-8 col-md-6 col-centered separador-top separador-bottom">
						<fieldset>
							<legend  class="text-center"><fmt:message key="login.message.send_password_instructions" /></legend>
							<form class="form-horizontal" role="form" name="login" action="/indica/es/send_password.jsp" method="post">
								<div class="form-group">
								<label for="inputEmail" class="col-sm-3 col-md-3 control-label"><fmt:message key="login.label.email" /></label>
								<div class="col-sm-9 input-group">
									<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
									<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" >
									</div>
								</div>
								
	<% 
		if ((p_message != null) && (p_message.equals("no_email_found"))) {
	%>
		<fmt:message key="login.message.no_email_found" />
	<%
		}
	%>									

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-info btn-block"><fmt:message key="login.button.send_password" /></button>
									</div>
								</div>
					  		</form>
						</fieldset>
						</div>
			</div>        
		</section>