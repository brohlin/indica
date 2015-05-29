<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>

<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=encuesta");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>


<%	
	String p_validation_code = request.getParameter("validation_code");
	String p_id = request.getParameter("id");
	
	if (p_validation_code == null) {
		p_validation_code = "";
	}
	
	if (p_id == null) {
		p_id = "0";
	}
		
	session.setAttribute("temp_emp_survey_id",null);
	session.setAttribute("temp_emp_survey_validation_code",null);
	session.setAttribute("temp_emp_survey_q1_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q2_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q3_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q4_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q5_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q6_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q7_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q8_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q9_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q10_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q11_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q12_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q13_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q14_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q15_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q16_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q17_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q18_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q19_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q20_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q21_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q22_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q23_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q24_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q25_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_q26_respuesta_lkup",null);
	session.setAttribute("temp_emp_survey_completed",null);
	session.setAttribute("temp_emp_survey_organization_nm",null);
	session.setAttribute("temp_emp_survey_organization_id",null);
	session.setAttribute("temp_emp_survey_gender",null);
	
	
	
	DynStringArray parameters2 = new DynStringArray();
	parameters2.add(p_id);
	parameters2.add(p_validation_code);
	
		
	DbResults db = Database.callProcResults("p_get_encuesta", parameters2);
		
	int size=0;
	
	while(size<db.getRowCount())
	{
		session.setAttribute("temp_emp_survey_id",db.getRow(size).get(0));
		session.setAttribute("temp_emp_survey_validation_code",db.getRow(size).get(1));
		session.setAttribute("temp_emp_survey_q1_respuesta_lkup",db.getRow(size).get(2));
		session.setAttribute("temp_emp_survey_q2_respuesta_lkup",db.getRow(size).get(3));
		session.setAttribute("temp_emp_survey_q3_respuesta_lkup",db.getRow(size).get(4));
		session.setAttribute("temp_emp_survey_q4_respuesta_lkup",db.getRow(size).get(5));
		session.setAttribute("temp_emp_survey_q5_respuesta_lkup",db.getRow(size).get(6));
		session.setAttribute("temp_emp_survey_q6_respuesta_lkup",db.getRow(size).get(7));
		session.setAttribute("temp_emp_survey_q7_respuesta_lkup",db.getRow(size).get(8));
		session.setAttribute("temp_emp_survey_q8_respuesta_lkup",db.getRow(size).get(9));
		session.setAttribute("temp_emp_survey_q9_respuesta_lkup",db.getRow(size).get(10));
		session.setAttribute("temp_emp_survey_q10_respuesta_lkup",db.getRow(size).get(11));
		session.setAttribute("temp_emp_survey_q11_respuesta_lkup",db.getRow(size).get(12));
		session.setAttribute("temp_emp_survey_q12_respuesta_lkup",db.getRow(size).get(13));
		session.setAttribute("temp_emp_survey_q13_respuesta_lkup",db.getRow(size).get(14));
		session.setAttribute("temp_emp_survey_q14_respuesta_lkup",db.getRow(size).get(15));
		session.setAttribute("temp_emp_survey_q15_respuesta_lkup",db.getRow(size).get(16));
		session.setAttribute("temp_emp_survey_q16_respuesta_lkup",db.getRow(size).get(17));
		session.setAttribute("temp_emp_survey_q17_respuesta_lkup",db.getRow(size).get(18));
		session.setAttribute("temp_emp_survey_q18_respuesta_lkup",db.getRow(size).get(19));
		session.setAttribute("temp_emp_survey_q19_respuesta_lkup",db.getRow(size).get(20));
		session.setAttribute("temp_emp_survey_q20_respuesta_lkup",db.getRow(size).get(21));
		session.setAttribute("temp_emp_survey_q21_respuesta_lkup",db.getRow(size).get(22));
		session.setAttribute("temp_emp_survey_q22_respuesta_lkup",db.getRow(size).get(23));
		session.setAttribute("temp_emp_survey_q23_respuesta_lkup",db.getRow(size).get(24));
		session.setAttribute("temp_emp_survey_q24_respuesta_lkup",db.getRow(size).get(25));
		session.setAttribute("temp_emp_survey_q25_respuesta_lkup",db.getRow(size).get(26));
		session.setAttribute("temp_emp_survey_q26_respuesta_lkup",db.getRow(size).get(27));
		session.setAttribute("temp_emp_survey_completed",db.getRow(size).get(28));
		session.setAttribute("temp_emp_survey_organization_nm",db.getRow(size).get(29));
		session.setAttribute("temp_emp_survey_organization_id",db.getRow(size).get(30));
		session.setAttribute("temp_emp_survey_gender",db.getRow(size).get(31));
		size++;
	}	
	
%>



	<section class="bc-gray">
		<header>
			<div class="bc-purple text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white">Empresa:
						<%
							if (session.getAttribute("temp_emp_survey_organization_nm") != null) {	
						%>
								<%= session.getAttribute("temp_emp_survey_organization_nm").toString() %>
						<%
							} else {
						%>		
								&nbsp;	
						<%	
							}

						%>	

					</h3>
					<h1 class="text-white">ENCUESTA PARA EL PERSONAL</h1>
				</div>
			</div>
		</header>
		
<%
	if (session.getAttribute("temp_emp_survey_id") != null ) {
		if (session.getAttribute("temp_emp_survey_completed") == null || session.getAttribute("temp_emp_survey_completed").toString().equals("N")) {
%>	

<div class="container">
	<div class="col-xs-12 col-md-10  col-centered cuadrado separador-top separador-bottom">
		<form class="form-plantilla" role="form" name="encuesta"  action="validate_encuesta.jsp" method="post">
			<input type="hidden" value="<%= p_validation_code %>" name="validation_code">
			<input type="hidden" value="<%= p_id %>" name="id">
			<fieldset>
				<h5><label class="label label-primary padding-small">INICIO</label></h5>
				<div class="table">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">&nbsp;</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="gender">Sexo</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="gender" name="gender"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_gender") == null || session.getAttribute("temp_emp_survey_gender").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="F" <% if (session.getAttribute("temp_emp_survey_gender") != null && session.getAttribute("temp_emp_survey_gender").equals("F")) { %> selected <% } %>>Feminino</option>
								<option value="M" <% if (session.getAttribute("temp_emp_survey_gender") != null && session.getAttribute("temp_emp_survey_gender").equals("M")) { %> selected <% } %>>Masculino</option>
							</select>
						</div>
					</div>	
				</div>
			</fieldset>
			<fieldset>
				<h5><label class="label label-primary padding-small">Comunicación</label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">1</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q1_respuesta_lkup">Cuando su empresa/organización se comunica con usted, utiliza un lenguaje, tono o imágenes incluyentes y no diferenciadoras de un sexo con respecto a otro.</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q1_respuesta_lkup" name="q1_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q1_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q1_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">2</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q21_respuesta_lkup">En definitiva y a la vista de su respuesta anterior, ¿considera que la comunicación interna de la empresa/organización contempla criterios de igualdad y no discriminación por cuestión de sexo?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q21_respuesta_lkup" name="q21_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q21_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q21_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>					
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">3</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q2_respuesta_lkup">Cuando su empresa/organización se comunica con el exterior, utiliza un lenguaje incluyente además de imágenes tanto de trabajadoras como de trabajadores</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q2_respuesta_lkup" name="q2_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q2_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q2_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">4</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q22_respuesta_lkup">En definitiva y a la vista de su respuesta anterior, ¿considera que la comunicación externa de la empresa/organización contempla criterios de igualdad y no discriminación por cuestión de sexo?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q22_respuesta_lkup" name="q22_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q22_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q22_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>
				</div>
			</fieldset>
			
			<fieldset>	
				<h5><label class="label label-primary padding-small">GESTIÓN DE RECURSOS HUMANOS</label></h5>				
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">5</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q3_respuesta_lkup">Los procesos de reclutamiento, selección y contratación se hacen a través de un procedimiento formal y velan por la igualdad de oportunidades entre hombres y mujeres</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q3_respuesta_lkup" name="q3_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q3_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q3_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
				
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">6</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q4_respuesta_lkup">Los procesos de reclutamiento y selección y de contratación se hacen pensando en puestos "reservados" sólo para mujeres y puestos "reservados" sólo para hombres</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q4_respuesta_lkup" name="q4_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q4_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q4_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
						
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">7</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q23_respuesta_lkup">En definitiva y a la vista de sus respuestas anteriores, ¿considera que los procesos de reclutamiento, selección y contratación son igualitarios para mujeres y hombres?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q23_respuesta_lkup" name="q23_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q23_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q23_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">8</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q5_respuesta_lkup">Los procesos de promoción interna de su empresa/organización son motivados por evaluaciones objetivas y equitativas de desempeño, otorgando las mismas oportunidades a mujeres y hombres.</label>
						</div>	
						<div class="col-xs-4 ">				
							<select id="q5_respuesta_lkup" name="q5_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q5_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q5_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">9</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q6_respuesta_lkup">Los procesos de promoción interna son el reconocimiento de logro y el esfuerzo de cada persona sin importar su sexo.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q6_respuesta_lkup" name="q6_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q6_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q6_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">10</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q24_respuesta_lkup">En definitiva y a la vista de sus respuestas anteriores, ¿cree que los procesos de promoción contemplan criterios de igualdad y no discriminación por razón de sexo?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q24_respuesta_lkup" name="q24_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q24_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q24_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>			
			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">11</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q7_respuesta_lkup">Trabajadoras y trabajadores tienen las mismas oportunidades de información y acceso a la capacitación profesional ofrecida por su empresa/organización, independientemente de su sexo. </label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q7_respuesta_lkup" name="q7_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q7_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q7_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">12</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q8_respuesta_lkup">Los horarios de capacitación de la empresa/organización habitualmente están dentro de la jornada laboral</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q8_respuesta_lkup" name="q8_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q8_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q8_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
				
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">13</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q25_respuesta_lkup">En definitiva y a la vista de sus respuestas anteriores, ¿considera que los procesos de capacitación contemplan criterios de igualdad y no discriminación por razón de sexo?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q25_respuesta_lkup" name="q25_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q25_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q25_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">14</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q9_respuesta_lkup">La política salarial de la empresa/organización facilita información transparente sobre la política de compensaciones a la que acudir en caso de dudas.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q9_respuesta_lkup" name="q9_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q9_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q9_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">15</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q10_respuesta_lkup">La política salarial de la empresa/organización es justa y equitativa, percibiendo, las trabajadoras y los trabajadores prestaciones similares por desempeñar el mismo trabajo.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q10_respuesta_lkup" name="q10_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q10_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q10_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>			

					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">16</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q26_respuesta_lkup">En definitiva y a la vista de sus respuestas anteriores, ¿considera que la empresa/organización tiene una política salarial equitativa desde el punto de vista de género y que es aplicada a todos los puestos de la empresa/organización?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q26_respuesta_lkup" name="q26_respuesta_lkup"  class="form-control" required>
								<option value="" disabled <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q26_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q26_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>	
						</div>
					</div>	
				</div>				
			</fieldset>
			
			<fieldset>
				<h5><label class="label label-primary padding-small">PREVENCIÓN Y TRATAMIENTO DEL ACOSO SEXUAL</label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">17</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q11_respuesta_lkup">En su empresa/organización siente que existe un ambiente laboral amistoso donde las personas no acosan ni sienten acoso sexual.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q11_respuesta_lkup" name="q11_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q11_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q11_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">18</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q12_respuesta_lkup">En su empresa/organización, los casos de acoso sexual se prohíben expresamente y las denuncias relativas a acoso sexual se resuelven con agilidad, existiendo incluso un protocolo formalizado e informado de prevención y actuación en caso de acoso.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q12_respuesta_lkup" name="q12_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q12_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q12_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">19</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q13_respuesta_lkup">En su empresa/organización existe un mecanismo al que acudir en caso de sufrir un acoso sexual y se le procurará un trato justo en todo momento. Usted tiene conocimiento de ello.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q13_respuesta_lkup" name="q13_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q13_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q13_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">20</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q14_respuesta_lkup">Usted confía que, en caso de manifestar que está sufriendo acoso o trato intimidatorio, sabe dónde acudir y allí se le escuchará y no recibirá ningún tipo de represalia o sanción. Es decir, el mecanismo en caso de necesitarlo funcionaría de modo eficaz.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q14_respuesta_lkup" name="q14_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q14_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q14_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
				</div>				
			</fieldset>
			
			<fieldset>
				<h5><label class="label label-primary padding-small">CONCILIACIÓN DE LA VIDA FAMILIAR, LABORAL Y SOCIAL CON CORRESPONSABILIDAD SOCIAL</label></h5>		
				<div class="table-responsive">
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">21</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q16_respuesta_lkup">Usted tiene conocimiento de que en su empresa/organización existen medidas de conciliación de la vida familiar, laboral y social disponibles y sabe cuáles son los mecanismos de solicitud</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q16_respuesta_lkup" name="q16_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q16_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q16_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>			
			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">22</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q17_respuesta_lkup">Usted conoce que en su empresa/organización existe un sistema de jornada reducida, horarios flexibles y teletrabajo de fácil solicitud para mujeres y hombres.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q17_respuesta_lkup" name="q17_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q17_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q17_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>		
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">23</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q18_respuesta_lkup">Los beneficios de las licencias por maternidad y paternidad siempre se cumplen de acuerdo a la normativa vigente y todas las personas que tengan una situación concreta para la obtención de estos beneficios pueden solicitarlos y disfrutarlos.</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q18_respuesta_lkup" name="q18_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q18_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q18_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>		
						</div>
					</div>			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">24</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q15_respuesta_lkup">Usted cree que la empresa/organización favorece la Conciliación de la vida familiar, laboral y social tanto de mujeres y hombres con las mismas oportunidades para ambos sexos (es decir, fomenta y anima la co-parentalidad de modo equitativo)</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q15_respuesta_lkup" name="q15_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q15_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q15_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>
						</div>
					</div>
					
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">25</label>
						</div>
						<div class="col-xs-7 ">
							<label class="titulo-input" for="q19_respuesta_lkup">Las medidas de conciliación de la vida familiar, laboral y social que facilita su empresa/organización son  conocidas de modo suficiente y son de fácil acceso tanto para mujeres como para hombres</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q19_respuesta_lkup" name="q19_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q19_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q19_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>		
						</div>
					</div>			

			
					<div class="row form-group">
						<div class="col-xs-1 ">
							<label class="numero-otros-datos">26</label>
						</div>
						<div class="col-xs-7 ">
								<label class="titulo-input" for="q20_respuesta_lkup">¿Qué grado de satisfacción tiene usted con el trato recibido por su empresa/organización desde la perspectiva de igualdad de oportunidades y no discriminación por razón de sexo?</label>					
						</div>	
						<div class="col-xs-4 ">				
							<select id="q20_respuesta_lkup" name="q20_respuesta_lkup"  class="form-control" required>
								<option value=""  disabled <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") == null || session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
								<option value="87" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("87")) { %> selected <% } %>>De acuerdo</option>
								<option value="85" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("85")) { %> selected <% } %>>En desacuerdo</option>
								<option value="86" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("86")) { %> selected <% } %>>Ni en acuerdo ni en desacuerdo</option>
								<option value="88" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("88")) { %> selected <% } %>>Totalmente en acuerdo</option>
								<option value="84" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("84")) { %> selected <% } %>>Totalmente en desacuerdo</option>
								<option value="83" <% if (session.getAttribute("temp_emp_survey_q20_respuesta_lkup") != null && session.getAttribute("temp_emp_survey_q20_respuesta_lkup").equals("83")) { %> selected <% } %>>No sabe/No contesta</option>
							</select>		
						</div>
					</div>
				</div>				
			</fieldset>		
			<button type="submit" class="btn btn-info btn-block separador-top">ENVIAR ENCUESTA</button>
		</form>
	</div>
</div>
<%
		} else {	
%>
		<section class="bc-gray">
		
		<div class="container">
			<div class="col-md-8 col-centered cuadrado separador-top separador-bottom text-center" >
				<h1 class="reset-margin text-orange"><i class="fa fa-check-circle"></i></h1>
				<h3>Gracias por su participación</h3>
				<p>Esta encuesta ya ha sido completada satisfactoriamente</p>
			</div>
		</div>
</section>
<%
		}
	}
%>
</section>

<%
	}
%>