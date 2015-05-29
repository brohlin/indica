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

	<section role="dialog" class="borde-superior fondo-gris">
		<header>
			<div class="well">
				<h1 class="text-center text-white">GESTIONAR ENCUESTAS</h1>
			</div>
			<div class="well-2 bc-purple">
				<h3 class="text-center text-white">&nbsp;</h3>
			</div>
		</header>
<div class="container">
	<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">
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
		<table  cellspacing="40">
			<tr>
				<th nowrap>ID</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Empresa</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Email</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Sesión</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Fecha de envio</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Fecha de vencimiento</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Completada</th>
				<th nowrap>&nbsp;&nbsp;&nbsp;</th>
				<th nowrap>Última actualización</th>
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
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(1) %></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(2) %></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><a href="./main.jsp?target=encuesta&id=<%= db.getRow(size).get(0) + "&validation_code=" + db.getRow(size).get(3) %>" ><%= db.getRow(size).get(3) %></a></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(4) %></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(5) %></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(6) %></td>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= db.getRow(size).get(7) %></td>
			
		</tr>
<%
		size++;
	}
	
	if (size>0) {
%>
	</table>
<%
	}
%>
</div>

<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">

<!-- %@include file="./encuesta_resultados.jsp" % -->
<!-- jsp:include page="encuesta_resultados.jsp" flush="true" / -->
	<fieldset>
		<form role="form" name="cuenta" action="main.jsp?target=enviar_encuesta" method="post">
			<button type="submit" class="btn btn-info btn-block separador-top">Enviar Encuesta</button>
		</form>
	</fieldset>
</div>

</div>
</section>

<%
	}
%>
