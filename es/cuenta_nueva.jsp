<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=cuenta_nueva");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%	

	DynStringArray parameters = new DynStringArray();
	DbResults db_p_get_user_status_options = Database.callProcResults("p_get_user_status_options", parameters);
	DbResults db_p_get_role_options = Database.callProcResults("p_get_role_options", parameters);
	DbResults db_p_get_organization_options = Database.callProcResults("p_get_organization_options", parameters);	

%>

<section class="fondo-gris">
	<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Administración general</h3>
					<h1 class="text-white">CREAR CUENTA</h1>
				</div>
			</div>
		</header>
		
<div class="container">
	<div class="col-xs-12 col-md-8 cuadrado separador-top separador-bottom col-centered">
	
<% 
	if ((p_message != null) && (p_message.equals("user_email_already_exists"))) {
%>
		<h5>Una cuenta con el email de <font face="arial,helvetica,sanserif" color="red"><%= mEmail %></font> ya existe.</h5>			
<%
	}
%>	
	<fieldset>
		<form class="form-horizontal" role="form" name="cuenta_nueva"  action="validate_cuenta_nueva.jsp" method="post">
			<input type="hidden" value="" name="skype_handle">

			<div class="form-group">
				<label for="inputPrimerNombre">Primer nombre</label>
				<div class="col-sm-9 input-group">
					<input maxlength="25" type="text" class="form-control" id="inputPrimerNombre" placeholder="Primer Nombre" name="first_nm"  value="">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputApellido">Apellido</label>
				<div class="col-sm-9 input-group">
					<input maxlength="25" type="text" class="form-control" id="inputApellido" placeholder="Apellido" name="last_nm"  value="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail">Email</label>
				<div class="col-sm-9 input-group">
					<input maxlength="45" type="email" class="form-control" id="inputApellido" placeholder="Email" name="email"  value="">
				</div>
			</div>

			<div class="form-group">
				<label for="user_status">Estatus</label>
    			<select name="user_status"  class="form-control"> 
    				<option disabled selected>Seleccione una opción</option>
					<%= db_p_get_user_status_options.generateSelectOptions() %>
				</select>
			</div>

			<div class="form-group">
				<label for="role">Rol</label>
    			<select name="role"  class="form-control">
    				<option disabled selected>Seleccione una opción</option>
					<%= db_p_get_role_options.generateSelectOptions() %>
				</select>
			</div>		

			<div class="form-group">
				<label for="organization">Empresa</label>
    			<select name="organization"  class="form-control"> 
    				<option disabled selected>Seleccione una opción</option>
					<%= db_p_get_organization_options.generateSelectOptions() %>
				</select>
			</div>	

			<div class="form-group">
				<label for="inputPosition">Posición/Título</label>
				<div class="col-sm-9 input-group">
					<input maxlength="45" type="text" class="form-control" id="inputPosition" placeholder="Posición/Título" name="position_title"  value="">
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel_nbr">Teléfono</label>
				<div class="col-sm-9 input-group">
					<input maxlength="20" type="text" class="form-control" id="inputTel_nbr" placeholder="Teléfono" name="tel_nbr"  value="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword">Contrase&ntilde;a</label>
				<div class="col-sm-9 input-group">
						<input maxlength="45" type="password" class="form-control" id="inputPassword" placeholder="Contrase&ntilde;a" name="pwd" value="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputConfirmPassword">Confirmar Contrase&ntilde;a</label>
				<div class="col-sm-9 input-group">
						<input maxlength="45" type="password" class="form-control" id="inputConfirmPassword" placeholder="Confirmar Contrase&ntilde;a" name="confirm_pwd" value="">
				</div>
			</div>

			<button type="submit" class="btn btn-info btn-block separador-top">GRABAR</button>
		</form>
	</fieldset>
</div>
</div>
</section>

<%
	}
%>