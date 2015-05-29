		<section class="borde-superior fondo-gris" role="dialog">
			<h4 class="text-hide reset-margin">Formulario de Ingreso</h4>
			<div class="container" >
						<div class="cuadrado separador-top separador-bottom col-sm-8 col-md-6 col-centered">
						<fieldset>
							<legend  class="text-center">Por favor ingrese los datos que le han sido asignados</legend>
							<form class="form-horizontal" role="form" name="login" action="/indica/es/validate_login.jsp?page=<%= p_page %>" method="post">
								<div class="form-group">
								<label for="inputEmail" class="col-sm-3 col-md-3 control-label">Email</label>
								<div class="col-sm-9 input-group">
									<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
									<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" >
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="col-sm-3  col-md-3 control-label">Contrase&ntilde;a</label>
									<div class="col-sm-9 input-group">
											<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
											<input type="password" class="form-control" id="inputPassword" placeholder="Contrase&ntilde;a" name="pwd">
									</div>
								</div>
	<% 
		if ((p_message != null) && (p_message.equals("failed_login"))) {
	%>
		El email o la contraseña que ha introducido es incorrecta.	
	<%
		}
	%>	
	
	<% 
		if ((p_message != null) && (p_message.equals("sent_password"))) {
	%>
		Acabamos de enviarte tu contraseña olvidada.	
	<%
		}
	%>								
								<div class="form-group">
 									<div class="col-sm-offset-3 col-lg-offset-4  col-sm-9  col-lg-8  ">
										<div class="checkbox inline">
											<!-- label><input type="checkbox">Recordarme &nbsp;&nbsp;</label --> 
											<!-- span>·  &nbsp;&nbsp;</span -->
											<a href="./main.jsp?target=lost_password" title="Olvidé mi contraseña"><span>Olvid&eacute; mi contrase&ntilde;a</span></a> 
										</div>
									</div>  
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-info btn-block">INGRESAR</button>
									</div>
								</div>
					  	</form>
          	</fieldset>
						</div>
			</div>        
		</section>