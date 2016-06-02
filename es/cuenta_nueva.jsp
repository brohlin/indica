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
					<h3 class="text-white"><fmt:message key="cuenta_nueva.label.element1" /></h3>
					<h1 class="text-white"><fmt:message key="cuenta_nueva.label.element2" /></h1>
				</div>
			</div>
		</header>
		
<div class="container">
	<div class="col-xs-12 col-md-8 cuadrado separador-top separador-bottom col-centered">
	
<% 
	if ((p_message != null) && (p_message.equals("user_email_already_exists"))) {
%>
		<h5><fmt:message key="cuenta_nueva.label.element3" /> <font face="arial,helvetica,sanserif" color="red"><%= mEmail %></font> <fmt:message key="cuenta_nueva.label.element4" /></h5>			
<%
	}
%>	
	<fieldset>
		<form class="form-horizontal" role="form" name="cuenta_nueva"  action="validate_cuenta_nueva.jsp" method="post">
			<input type="hidden" value="" name="skype_handle">

			<div class="form-group">
				<label for="inputPrimerNombre"><fmt:message key="cuenta_nueva.label.element5" /></label>
				<div class="col-sm-9 input-group">
					<input maxlength="25" type="text" class="form-control" id="inputPrimerNombre" placeholder="" name="first_nm"  value=""  required="required">
				</div>
			</div>
			
			<div class="form-group">
				<label for="inputApellido"><fmt:message key="cuenta_nueva.label.element6" /></label>
				<div class="col-sm-9 input-group">
					<input maxlength="25" type="text" class="form-control" id="inputApellido" placeholder="" name="last_nm"  value=""  required="required">
				</div>
			</div>

			<div class="form-group">
				<label for="inputEmail"><fmt:message key="cuenta_nueva.label.element7" /></label>
				<div class="col-sm-9 input-group">
					<input maxlength="45" type="email" class="form-control" id="inputApellido" placeholder="" name="email"  value=""  required="required">
				</div>
			</div>

			<div class="form-group">
				<label for="user_status"><fmt:message key="cuenta_nueva.label.element8" /></label>
    			<select name="user_status"  class="form-control"  required="required"> 
    				<option disabled selected><fmt:message key="cuenta_nueva.label.element16" /></option>
					<%= db_p_get_user_status_options.generateSelectOptions() %>
				</select>
			</div>

			<div class="form-group">
				<label for="role"><fmt:message key="cuenta_nueva.label.element9" /></label>
    			<select name="role"  class="form-control"  required="required">
    				<option disabled selected><fmt:message key="cuenta_nueva.label.element16" /></option>
					<%= db_p_get_role_options.generateSelectOptions() %>
				</select>
			</div>		

			<div class="form-group">
				<label for="organization"><fmt:message key="cuenta_nueva.label.element10" /></label>
    			<select name="organization"  class="form-control" required="required"> 
    				<option disabled selected>Seleccione una opción</option>
					<%= db_p_get_organization_options.generateSelectOptions() %>
				</select>
			</div>	

			<div class="form-group">
				<label for="inputPosition"><fmt:message key="cuenta_nueva.label.element11" /></label>
				<div class="col-sm-9 input-group">
					<input maxlength="45" type="text" class="form-control" id="inputPosition" placeholder="" name="position_title"  value="" required="required">
				</div>
			</div>


			<div class="form-group">
				<label for="inputTel_nbr"><fmt:message key="cuenta_nueva.label.element12" /></label>
				<div class="col-sm-9 input-group">
					<input maxlength="20" type="text" class="form-control" id="inputTel_nbr" placeholder="" name="tel_nbr"  value="">
				</div>
			</div>

			<div class="form-group">
				<label for="inputPassword"><fmt:message key="cuenta_nueva.label.element13" /></label>
				<div class="col-sm-9 input-group">
						<input maxlength="45" type="password" class="form-control" id="inputPassword" placeholder="" name="pwd" value="" required="required">
				</div>
			</div>

			<div class="form-group">
				<label for="inputConfirmPassword"><fmt:message key="cuenta_nueva.label.element14" /></label>
				<div class="col-sm-9 input-group">
						<input maxlength="45" type="password" class="form-control" id="inputConfirmPassword" placeholder="" name="confirm_pwd" value="" required="required">
				</div>
			</div>

			<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="cuenta_nueva.label.element15" /></button>
		</form>
	</fieldset>
</div>
</div>
</section>

<%
	}
%>