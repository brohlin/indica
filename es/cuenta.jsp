<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=cuenta");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%	
	String p_user_id = session.getAttribute("temp_user_id").toString();
	DbResults db_p_get_user_status_options = null;
	DbResults db_p_get_role_options = null;
	DbResults db_p_get_organization_options = null;
		
	if (p_user_id != null) {
	
		DynStringArray parameters2 = new DynStringArray();
		parameters2.add(p_user_id);
		
		DbResults db = Database.callProcResults("p_get_admin_user", parameters2);
		db_p_get_user_status_options = Database.callProcResults("p_get_existing_user_status_options", parameters2);
		db_p_get_role_options = Database.callProcResults("p_get_existing_role_options", parameters2);
		db_p_get_organization_options = Database.callProcResults("p_get_existing_organization_options", parameters2);		
		
		int size=0;
		
		while(size<db.getRowCount())
		{
			session.setAttribute("temp_admin_user_id",db.getRow(size).get(0));
			session.setAttribute("temp_admin_user_user_status_id",db.getRow(size).get(1));
			session.setAttribute("temp_admin_user_user_status_nm",db.getRow(size).get(2));
			session.setAttribute("temp_admin_user_role_id",db.getRow(size).get(3));
			session.setAttribute("temp_admin_user_role_nm",db.getRow(size).get(4));
			session.setAttribute("temp_admin_user_email",db.getRow(size).get(5));
			session.setAttribute("temp_admin_user_pwd",db.getRow(size).get(6));
			session.setAttribute("temp_admin_user_first_nm",db.getRow(size).get(7));
			session.setAttribute("temp_admin_user_last_nm",db.getRow(size).get(8));
			session.setAttribute("temp_admin_user_position_title",db.getRow(size).get(9));
			session.setAttribute("temp_admin_user_tel_nbr",db.getRow(size).get(10));
			session.setAttribute("temp_admin_user_skype_handle",db.getRow(size).get(11));
			session.setAttribute("temp_admin_user_organization_id",db.getRow(size).get(12));
			session.setAttribute("temp_admin_user_organization_nm",db.getRow(size).get(13));
			session.setAttribute("temp_admin_user_accept_terms",db.getRow(size).get(13));
			
			size++;
		}	
	}
%>

	<section role="dialog" class="fondo-gris">
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Administración general</h3>
					<h1 class="text-white">EDITAR CUENTA</h1>
				</div>
			</div>
		</header>
<div class="container">
	<div class="col-xs-12 col-md-8 cuadrado separador-top separador-bottom col-centered">
	<fieldset>
		<form class="form-horizontal" role="form" name="cuenta"  action="validate_cuenta.jsp" method="post">
			<input type="hidden" value="<% if (session.getAttribute("temp_admin_user_id") != null) { %><%= session.getAttribute("temp_admin_user_id").toString() %><% } %>" name="user_id">
			<input type="hidden" value="<% if (session.getAttribute("temp_admin_user_skype_handle") != null) { %><%= session.getAttribute("temp_admin_user_skype_handle").toString() %><% } %>" name="skype_handle">

			<div class="form-group">
				<label for="inputPrimerNombre">Primer Nombre</label>
				<div class="col-sm-12 input-group">
					<input type="text" class="form-control" id="inputPrimerNombre" placeholder="Primer Nombre" name="first_nm"  value="<% if (session.getAttribute("temp_admin_user_first_nm") != null) { %><%= session.getAttribute("temp_admin_user_first_nm").toString() %><% } %>">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputApellido">Apellido</label>
				<div class="col-sm-12 input-group">
					<input type="text" class="form-control" id="inputApellido" placeholder="Apellido" name="last_nm"  value="<% if (session.getAttribute("temp_admin_user_last_nm") != null) { %><%= session.getAttribute("temp_admin_user_last_nm").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail">Email</label>
				<div class="col-sm-12 input-group">
					<input type="email" class="form-control" id="inputApellido" placeholder="Email" name="email"  value="<% if (session.getAttribute("temp_admin_user_email") != null) { %><%= session.getAttribute("temp_admin_user_email").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="user_status">Estatus</label>
    			<select name="user_status"  class="col-sm-12 form-control"> 
					<%= db_p_get_user_status_options.generateSelectOptions() %>
				</select>
			</div>

			<div class="form-group">
				<label for="role">Rol</label>
    			<select name="role"  class="col-sm-12 form-control">
					<%= db_p_get_role_options.generateSelectOptions() %>
				</select>
			</div>		

			<div class="form-group">
				<label for="organization">Empresa</label>
    			<select name="organization"  class="col-sm-12 form-control"> 
					<%= db_p_get_organization_options.generateSelectOptions() %>
				</select>
			</div>	

			<div class="form-group">
				<label for="inputPosition">Posición/Título</label>
				<div class="input-group col-sm-12">
					<input type="text" class=" form-control" id="inputPosition" placeholder="Posición/Título" name="position_title"  value="<% if (session.getAttribute("temp_admin_user_position_title") != null) { %><%= session.getAttribute("temp_admin_user_position_title").toString() %><% } %>">
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel_nbr">Teléfono</label>
				<div class=" input-group col-sm-12">
					<input type="text" class="form-control" id="inputTel_nbr" placeholder="Teléfono" name="tel_nbr"  value="<% if (session.getAttribute("temp_admin_user_tel_nbr") != null) { %><%= session.getAttribute("temp_admin_user_tel_nbr").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword">Contrase&ntilde;a</label>
				<div class=" input-group col-sm-12">
						<input type="password" class=" form-control" id="inputPassword" placeholder="Contrase&ntilde;a" name="pwd" value="<% if (session.getAttribute("temp_admin_user_pwd") != null) { %><%= session.getAttribute("temp_admin_user_pwd").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputConfirmPassword">Confirmar Contrase&ntilde;a</label>
				<div class="input-group col-sm-12">
						<input type="password" class="col-sm-12 form-control" id="inputConfirmPassword" placeholder="Confirmar Contrase&ntilde;a" name="confirm_pwd" value="<% if (session.getAttribute("temp_admin_user_pwd") != null) { %><%= session.getAttribute("temp_admin_user_pwd").toString() %><% } %>">
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