<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=gestionar_empresas");
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
					<h1 class="text-white">GESTIONAR EMPRESAS</h1>
				</div>
			</div>
		</header>	
				
		<div class="bc-gray padding-medium">
			<div class="container">
				<!-- Buscar empresa -->	
				<div id="buscar-empresa" class="col-md-6 padding-small">
					
					<form class="form-horizontal" role="form"  name="cuentas" action="./main.jsp?target=gestionar_empresas" method="post">
						<fieldset>
						<!-- Form Name -->
						<legend>
							<h3 >Buscar una empresa creada</h3>
						</legend>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="id">Buscar por ID</label>  
						  <div class="col-md-7">
						  <input id="id" name="id" type="text" placeholder="ID" class="form-control input-md">
						  </div>
						</div>

						<!-- Text input-->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="name">Buscar por nombre</label>  
						  <div class="col-md-7">
						  <input id="name" name="name" type="text" placeholder="Nombre" class="form-control input-md">
						
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
							<h3 >Añadir una empresa nueva</h3>
						</legend>
						<form role="form" name="empresa" action="/indica/es/main.jsp?target=empresa_nueva" method="post">
							<div class="col-centered col-md-7 separador-top">
								<button type="submit" class="btn btn-info padding-small btn-block">Pulse este botón para crear un registro de empresa</button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div> <!-- fin franja gris -->	
		
		<!-- Lista de empresas -->
		<div class="container">
					
			<div id="lista-empresas" class="col-md-8 col-centered separador-bottom ">
				
				<h3 class="text-center separador-top "> Lista de empresas registradas</h3>
				
				<table class="table table-hover separador-top separador-bottom" >
					<tr>
						<th nowrap>ID</th>
						<th nowrap>Empresa</th>
						<th nowrap>País de Ubicación</th>
					</tr>	
					<%	

						DynStringArray parameters = new DynStringArray();
						parameters.add(mID);
						parameters.add(mName);

						DbResults db = Database.callProcResults("p_get_organizations", parameters);
						
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
							<td><a href="./main.jsp?target=empresa&organization_id=<%= db.getRow(size).get(0) %>"><%= db.getRow(size).get(1) %></a></td>			
							<td><%= db.getRow(size).get(6) %></td>
					</tr>
					<%
						size++;
					}
					%>
				</table>
			</div>

	
		</div>
	</section>

<%
	}
%>
	