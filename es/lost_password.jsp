		<section class="borde-superior fondo-gris " role="dialog">
			<h4 class="text-hide reset-margin">Formulario de Obtener Contraseña</h4>
			<div class="container" >
						<div class="cuadrado col-sm-8 col-md-6 col-centered separador-top separador-bottom">
						<fieldset>
							<legend  class="text-center">Por favor ingrese su email</legend>
							<form class="form-horizontal" role="form" name="login" action="/indica/es/send_password.jsp" method="post">
								<div class="form-group">
								<label for="inputEmail" class="col-sm-3 col-md-3 control-label">Email</label>
								<div class="col-sm-9 input-group">
									<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
									<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" >
									</div>
								</div>
								
	<% 
		if ((p_message != null) && (p_message.equals("no_email_found"))) {
	%>
		No se encuetra este email o cuenta.
	<%
		}
	%>									

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-info btn-block">Enviar Contraseña</button>
									</div>
								</div>
					  		</form>
						</fieldset>
						</div>
			</div>        
		</section>