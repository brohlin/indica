<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=exito");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>


<section class="borde-superior fondo-gris" role="dialog">
	<div class="container" >
	
<table>
	<tr>
		<td colspan="2">
			<h1>Éxito</h1>
		</td>
	</tr>
	
	<tr><td>ID</td><td><%= session.getAttribute("temp_user_id") %></td></tr>
	<tr><td>Estatus ID</td><td><%= session.getAttribute("temp_user_user_status_id") %></td></tr>
	<tr><td>Estatus</td><td><%= session.getAttribute("temp_user_user_status_nm") %></td></tr>
	<tr><td>Rol ID</td><td><%= session.getAttribute("temp_user_role_id") %></td></tr>
	<tr><td>Rol</td><td><%= session.getAttribute("temp_user_role_nm") %></td></tr>
	<tr><td>Email</td><td><%= session.getAttribute("temp_user_email") %></td></tr>
	<tr><td>Contraseña</td><td><%= session.getAttribute("temp_user_pwd") %></td></tr>
	<tr><td>Primer Nombre</td><td><%= session.getAttribute("temp_user_first_nm") %></td></tr>
	<tr><td>Apellido</td><td><%= session.getAttribute("temp_user_last_nm") %></td></tr>
	<tr><td>Posición</td><td><%= session.getAttribute("temp_user_position_title") %></td></tr>
	<tr><td>Telefono</td><td><%= session.getAttribute("temp_user_tel_nbr") %></td></tr>
	<tr><td>Skype</td><td><%= session.getAttribute("temp_user_skype_handle") %></td></tr>
	<tr><td>Organizaciín ID</td><td><%= session.getAttribute("temp_user_organization_id") %></td></tr>
	<tr><td>Nombre de Organización</td><td><%= session.getAttribute("temp_user_organization_nm") %></td></tr>
</table>

	</div>        
</section>


<%
	}
%>