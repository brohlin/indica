		<section class="borde-superior fondo-gris" role="dialog">
			<h4 class="text-hide reset-margin"><fmt:message key="login.element1" /></h4>
			<div class="container" >
						<div class="cuadrado separador-top separador-bottom col-sm-8 col-md-6 col-centered">
						<fieldset>
							<legend  class="text-center"><fmt:message key="login.message.login_instructions" />	</legend>
							<form class="form-horizontal" role="form" name="login" id="formLogin" action="/indica/es/validate_login.jsp?page=<%= p_page + "&organization_id=" + p_organization_id %>" method="post">
								<div class="form-group">
								<label for="email"><fmt:message key="login.label.email" />:</label>
								<div class="col-sm-9 input-group">
									<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
									<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" >
									</div>
								</div>
								<div class="form-group">
									<label for="password"><fmt:message key="login.label.password" />:</label>
									<div class="col-sm-9 input-group">
											<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
											<input type="password" class="form-control" id="inputPassword" placeholder="Contrase&ntilde;a" name="pwd">
									</div>
								</div>
	<% 
		if ((p_message != null) && (p_message.equals("failed_login"))) {
	%>
		<fmt:message key="login.message.failed_login" />	
	<%
		}
	%>	
	
	<% 
		if ((p_message != null) && (p_message.equals("sent_password"))) {
	%>
		<fmt:message key="login.message.sent_password" />	
	<%
		}
	%>								
								<div class="form-group">
 									<div class="col-sm-offset-3 col-lg-offset-4  col-sm-9  col-lg-8  ">
										<div class="checkbox inline">
											<a href="./main.jsp?target=lost_password" title="Olvid� mi contrase�a"><span><fmt:message key="login.label.forgot_password" /></span></a> 
										</div>
									</div>  
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-info btn-block"><fmt:message key="login.button.login" /></button>
									</div>
								</div>
					  	</form>
          	</fieldset>
						</div>
			</div>        
		</section>