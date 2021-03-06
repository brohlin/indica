<%
	String _message = request.getParameter("message");
	String _bad_email = request.getParameter("bad_email");
%>
	<section>
		<header>
			<div class="bc-purple text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"><fmt:message key="gestionar_encuestas.element1" /></h3>
					<h1 class="text-white"><fmt:message key="gestionar_encuestas.element2" /></h1>
				</div>
			</div>
		</header>
		<div class="bc-gray padding-medium">
			<div class="container">
				<!-- Boton enviar encuesta empresa -->	
				<div id="enviar-encuesta" class="col-xs-12 padding-small">
					<form class="form-horizontal" role="form" name="enviar_encuesta"  action="validate_enviar_encuesta.jsp" method="post">
						<fieldset class="col-sm-6">
							<legend >
								<h3 ><fmt:message key="gestionar_encuestas.element3" /></h3>
							</legend>
							
							<div id="send_by">
								<input type="radio" id="email_cellphone_survey" name="email_cellphone_survey" value="email" required checked="checked">Email&nbsp;&nbsp;&nbsp;
								<input type="radio" id="email_cellphone_survey" name="email_cellphone_survey" value="cellphone" required><fmt:message key="gestionar_encuestas.element18" />
							</div>
							
							<p>&nbsp;</p>
							<p><fmt:message key="gestionar_encuestas.element4" /></p>
						</fieldset>
						
						<br>
						
						
						<!-- Marzo 4. Integrar el campo para enviar las encuestas -->
						<fieldset class="col-sm-6">
							<div class="form-group">
	<% 
		if ((p_message != null) && (p_message.equals("bad_email_list"))) {
	%>
		<span style="color:red"><h3><fmt:message key="gestionar_encuestas.bad_email_list" /> <%= _bad_email %>.</h3></span>	
	<%
		}
	%>	
							
								<input type="hidden" value="<%= session.getAttribute("temp_user_organization_id").toString() %>" name="organization_id">
								<textarea name="email" class="form-control" rows="7" maxlength="1000" placeholder="<fmt:message key="gestionar_encuestas.element5" />"></textarea>
							</div>
							<div class="form-group">
								<button id="submit_button" type="submit" class="btn btn-primary btn-block"><fmt:message key="gestionar_encuestas.element6" /></button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="col-xs-12 col-centered">
				<h3 class="text-center separador-top "> <fmt:message key="gestionar_encuestas.element7" /></h3>
			<%	

				DynStringArray parameters = new DynStringArray();
				parameters.add(session.getAttribute("temp_user_organization_id").toString());

				DbResults db = Database.callProcResults("p_get_encuestas", parameters);

				int size=0;
				String bgColor = "bc-grayb";


				while(size<db.getRowCount())
					{
				if (size==0) {
				%>	
				<div class="scroll separador-bottom col-lg-10 col-centered">	
					<table class="table table-hover table-font-09 separador-top separador-bottom">
						<tr>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element8" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element9" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element10" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element12" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element13" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element14" /></th>
							<th nowrap class="text-center"><fmt:message key="gestionar_encuestas.element15" /></th>
						</tr>	
						<% 		
						}

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
						<td nowrap><%= db.getRow(size).get(0) %></td>
						<td nowrap><%= db.getRow(size).get(1) %></td>
						<td nowrap><%= db.getRow(size).get(2) %></td>
						<td nowrap><%= db.getRow(size).get(4) %></td>
						<td nowrap><%= db.getRow(size).get(5) %></td>
						<td nowrap><%= db.getRow(size).get(6) %></td>
						<td nowrap><%= db.getRow(size).get(7) %></td>
						</tr>
						<%
								size++;
							}

							if (size>0) {
						%>
					</table>
				</div>	
					<%
				}
			%>
			</div>

		</div>
</section>

