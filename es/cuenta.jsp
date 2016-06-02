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
	String p_user_id = request.getParameter("user_id");
	
	if (p_user_id == null || p_user_id.equals("") || p_user_id.equals("null")) {
		p_user_id = session.getAttribute("temp_user_id").toString();
		System.out.println("no user_id param");
	} else if (session.getAttribute("temp_user_role_nm") != null && session.getAttribute("temp_user_role_nm").equals("Admin")) {
		System.out.println("admin and user_id param");
	} else if (session.getAttribute("temp_user_role_nm") != null && session.getAttribute("temp_user_role_nm").equals("Empresa")) {
		response.sendRedirect("/indica/es/main.jsp?target=error");
		System.out.println("empresa and user_id param");
	}
	
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
					<h3 class="text-white"><fmt:message key="cuenta.label.element1" /></h3>
					<h1 class="text-white"><fmt:message key="cuenta.label.element2" /></h1>
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
				<label for="inputPrimerNombre"><fmt:message key="cuenta.label.element3" /></label>
				<div class="col-sm-12 input-group">
					<input type="text" class="form-control" id="inputPrimerNombre" placeholder="Primer Nombre" name="first_nm"  value="<% if (session.getAttribute("temp_admin_user_first_nm") != null) { %><%= session.getAttribute("temp_admin_user_first_nm").toString() %><% } %>">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputApellido"><fmt:message key="cuenta.label.element4" /></label>
				<div class="col-sm-12 input-group">
					<input type="text" class="form-control" id="inputApellido" placeholder="Apellido" name="last_nm"  value="<% if (session.getAttribute("temp_admin_user_last_nm") != null) { %><%= session.getAttribute("temp_admin_user_last_nm").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail"><fmt:message key="cuenta.label.element5" /></label>
				<div class="col-sm-12 input-group">
					<input type="email" class="form-control" id="inputApellido" placeholder="Email" name="email"  value="<% if (session.getAttribute("temp_admin_user_email") != null) { %><%= session.getAttribute("temp_admin_user_email").toString() %><% } %>">
				</div>
			</div>


			<div class="form-group">
				<label for="user_status"><fmt:message key="cuenta.label.element6" /></label>
    			<select name="user_status"  class="col-sm-12 form-control" <% if(session.getAttribute("temp_user_role_nm").equals("Empresa")) { %> disabled <% } %>> 
					<%= db_p_get_user_status_options.generateSelectOptions() %>
				</select>
			</div>

			<div class="form-group">
				<label for="role"><fmt:message key="cuenta.label.element7" /></label>
    			<select name="role"  class="col-sm-12 form-control" <% if(session.getAttribute("temp_user_role_nm").equals("Empresa")) { %> disabled <% } %>>
					<%= db_p_get_role_options.generateSelectOptions() %>
				</select>
			</div>		

			<div class="form-group">
				<label for="organization"><fmt:message key="cuenta.label.element8" /></label>
    			<select name="organization"  class="col-sm-12 form-control" <% if(session.getAttribute("temp_user_role_nm").equals("Empresa")) { %> disabled <% } %>> 
					<%= db_p_get_organization_options.generateSelectOptions() %>
				</select>
			</div>	

			<div class="form-group">
				<label for="inputPosition"><fmt:message key="cuenta.label.element9" /></label>
				<div class="input-group col-sm-12">
					<input type="text" class=" form-control" id="inputPosition" placeholder="Posición/Título" name="position_title"  value="<% if (session.getAttribute("temp_admin_user_position_title") != null) { %><%= session.getAttribute("temp_admin_user_position_title").toString() %><% } %>">
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel_nbr"><fmt:message key="cuenta.label.element10" /></label>
				<div class=" input-group col-sm-12">
					<input type="text" class="form-control" id="inputTel_nbr" placeholder="Teléfono" name="tel_nbr"  value="<% if (session.getAttribute("temp_admin_user_tel_nbr") != null) { %><%= session.getAttribute("temp_admin_user_tel_nbr").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword"><fmt:message key="cuenta.label.element11" /></label>
				<div class=" input-group col-sm-12">
						<input type="password" class=" form-control" id="inputPassword" placeholder="Contrase&ntilde;a" name="pwd" value="<% if (session.getAttribute("temp_admin_user_pwd") != null) { %><%= session.getAttribute("temp_admin_user_pwd").toString() %><% } %>">
				</div>
			</div>

			<div class="form-group">
				<label for="inputConfirmPassword"><fmt:message key="cuenta.label.element12" /></label>
				<div class="input-group col-sm-12">
						<input type="password" class="col-sm-12 form-control" id="inputConfirmPassword" placeholder="Confirmar Contrase&ntilde;a" name="confirm_pwd" value="<% if (session.getAttribute("temp_admin_user_pwd") != null) { %><%= session.getAttribute("temp_admin_user_pwd").toString() %><% } %>">
				</div>
			</div>

			<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="cuenta.label.element13" /></button>
		</form>
	</fieldset>
</div>
</div>
</section>


<%
	}
%>