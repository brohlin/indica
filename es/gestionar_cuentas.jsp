<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=gestionar_encuestas");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<section>
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Administración general</h3>
					<h1 class="text-white">GESTIONAR CUENTAS</h1>
				</div>
			</div>
		</header>
				<div class="bc-gray padding-medium">
			<div class="container">
				<!-- Buscar cuenta -->	
				<div id="buscar-cuenta" class="col-md-6 padding-small">
					
					<form class="form-horizontal" role="form"  name="cuentas" action="./main.jsp?target=gestionar_cuentas" method="post">
						<fieldset>
						<!-- Form Name -->
						<legend>
							<h3 >Buscar una cuenta creada</h3>
						</legend>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="user_id">Buscar por ID</label>  
						  <div class="col-md-7">
						  <input id="user_id" name="user_id" type="text" placeholder="ID" class="form-control input-md">
						  </div>
						</div>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="email">Buscar por email</label>  
						  <div class="col-md-7">
						  <input id="email" name="email" type="text" placeholder="Ingrese el correo electrónico" class="form-control input-md">
						
						  </div>
						</div>

						<!-- Button -->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="singlebutton"></label>
						  <div class="col-md-7">
						  	<button id="singlebutton" name="singlebutton" class="btn btn-primary btn-block">Buscar</button>
						  </div>
						</div>

						</fieldset>
						</form>

				</div>
				<!-- Añadir empresa -->	
				<div id="anadir-empresa" class="col-md-5 padding-small">
					<fieldset>
						<legend>
							<h3 >Añadir una cuenta nueva</h3>
						</legend>
						<form name="cuenta" action="main.jsp?target=cuenta_nueva" method="post">
							<div class="col-centered col-md-7 separador-top">
								<button type="submit" class="btn btn-info padding-small btn-block">Pulse este botón para crear una nueva cuenta</button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div> <!-- fin franja gris -->		
		
		 <!-- LISTA DE CUENTAS -->	
		<div class="container">
					
			<div id="lista-cuentas" class="col-md-8 col-centered separador-bottom ">
				
				<h3 class="text-center separador-top "> Lista de cuentas registradas</h3>
				
				<table class="table table-hover separador-top separador-bottom" >
					<tr>
						<th nowrap>ID</th>
						<th nowrap>Nombre</th>
						<th nowrap>Email</th>
						<th nowrap>Rol</th>
						<th nowrap>Estatus</th>
						<th nowrap>Empresa</th>
					</tr>	
					<%	

						DynStringArray parameters = new DynStringArray();
						parameters.add(mUser_id);
						parameters.add(mEmail);

						DbResults db = Database.callProcResults("p_get_users", parameters);
						
						int size=0;
						String bgColor = "bc-grayb";
						while(size<db.getRowCount())
						{
							if (bgColor.equals("bc-grayb")) {
					%>
							<tr class="bc-grayb">
					<%
								bgColor = "";
						}  else {
					%>
							<tr>
					<%
								bgColor = "bc-grayb";
						}
					%>
								<td><%= db.getRow(size).get(0) %></td>
								<td><a href="./main.jsp?target=cuenta&user_id=<%= db.getRow(size).get(0) %>"><%= db.getRow(size).get(1) %></a></td>
								<td><%= db.getRow(size).get(2) %></td>
								<td><%= db.getRow(size).get(3) %></td>
								<td><%= db.getRow(size).get(4) %></td>
								<td><%= db.getRow(size).get(5) %></td>
							</tr>
					<%
							size++;
						}
					%>

				</table>
			</div><!-- fin de cuentas -->
		</div> <!-- fin de container -->
</section>

<%
	}
%>