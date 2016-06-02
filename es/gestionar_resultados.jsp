<%@ page import="java.text.SimpleDateFormat" %>

<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=resultados");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>


<%	

	String v_pais_de_ubicacion_lkup = request.getParameter("pais_de_ubicacion_lkup");
	String v_sector_de_actividad_lkup = request.getParameter("sector_de_actividad_lkup");
	String v_num_de_personas_trabajadores = request.getParameter("num_de_personas_trabajadores");
	String v_pilar = request.getParameter("pilar");
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy @ HH:mm:ss"); 

	if (v_pais_de_ubicacion_lkup == null) {
		v_pais_de_ubicacion_lkup = "0";
	}

	if (v_sector_de_actividad_lkup == null) {
		v_sector_de_actividad_lkup = "0";
	}

	if (v_num_de_personas_trabajadores == null) {
		v_num_de_personas_trabajadores = "0";
	}

	if (v_pilar == null) {
		v_pilar = "ge";
	}
	
		DynStringArray parameters = new DynStringArray();
		parameters.add(v_pais_de_ubicacion_lkup);
		parameters.add(v_sector_de_actividad_lkup);
		parameters.add(v_num_de_personas_trabajadores);
		
		DbResults db_ge = null;
		DbResults db_ge1 = null;
		DbResults db_ge2 = null;
		DbResults db_ge3 = null;
		DbResults db_ge4 = null;
		DbResults db_ge5 = null;
		DbResults db_ge6 = null;
		DbResults db_ge7 = null;
		DbResults db_ge8 = null;		
		
		DbResults db_cp= null;
		DbResults db_cp1 = null;
		DbResults db_cp2 = null;
		DbResults db_cp3 = null;
		DbResults db_cp4 = null;
		DbResults db_cp5 = null;
		DbResults db_cp6 = null;
		DbResults db_cp7 = null;
		DbResults db_cp8 = null;			
		DbResults db_cp9 = null;
		DbResults db_cp10 = null;	
		
		DbResults db_rs= null;
		DbResults db_rs1 = null;
		DbResults db_rs2 = null;
		DbResults db_rs3 = null;
		DbResults db_rs4 = null;
		DbResults db_rs5 = null;		
		
		DbResults db_dp= null;
		DbResults db_dp1 = null;
		DbResults db_dp2 = null;
		DbResults db_dp3 = null;
		DbResults db_dp4 = null;
		DbResults db_dp5 = null;
		DbResults db_dp6 = null;
		DbResults db_dp7 = null;
		DbResults db_dp8 = null;			
		DbResults db_dp9 = null;
		
		DbResults db_r= null;
		DbResults db_r1 = null;
		DbResults db_r2 = null;
		DbResults db_r3 = null;
		DbResults db_r4 = null;
		DbResults db_r5 = null;
		DbResults db_r6 = null;		

		DbResults db_pv= null;
		DbResults db_pv1 = null;
		DbResults db_pv2 = null;
		DbResults db_pv3 = null;
		DbResults db_pv4 = null;
		DbResults db_pv5 = null;
		DbResults db_pv6 = null;	
		String myObjectId = "";

		if (v_pilar.equals("ge")) {
		    db_ge = Database.callProcResults("p_get_results_ge", parameters); 
		    
			myObjectId = db_ge.toString();
			request.getSession().setAttribute(myObjectId, db_ge);
			request.setAttribute("myObjectId", myObjectId);		    
		    
			db_ge1 = Database.callProcResults("p_get_results_ge1", parameters);
			db_ge2 = Database.callProcResults("p_get_results_ge2", parameters);
			db_ge3 = Database.callProcResults("p_get_results_ge3", parameters);
			db_ge4 = Database.callProcResults("p_get_results_ge4", parameters);
			db_ge5 = Database.callProcResults("p_get_results_ge5", parameters);
			db_ge6 = Database.callProcResults("p_get_results_ge6", parameters);
			db_ge7 = Database.callProcResults("p_get_results_ge7", parameters);
			db_ge8 = Database.callProcResults("p_get_results_ge8", parameters);
		} else if (v_pilar.equals("cp")) {
			db_cp = Database.callProcResults("p_get_results_cp", parameters); 
			
			myObjectId = db_cp.toString();
			request.getSession().setAttribute(myObjectId, db_cp);
			request.setAttribute("myObjectId", myObjectId);			
			
			db_cp1 = Database.callProcResults("p_get_results_cp1", parameters);
			db_cp2 = Database.callProcResults("p_get_results_cp2", parameters);
			db_cp3 = Database.callProcResults("p_get_results_cp3", parameters);
			db_cp4 = Database.callProcResults("p_get_results_cp4", parameters);
			db_cp5 = Database.callProcResults("p_get_results_cp5", parameters);
			db_cp6 = Database.callProcResults("p_get_results_cp6", parameters);
			db_cp7 = Database.callProcResults("p_get_results_cp7", parameters);
			db_cp8 = Database.callProcResults("p_get_results_cp8", parameters);
			db_cp9 = Database.callProcResults("p_get_results_cp9", parameters);
			db_cp10 = Database.callProcResults("p_get_results_cp10", parameters);			
		} else if (v_pilar.equals("rs")) {
			db_rs = Database.callProcResults("p_get_results_rs", parameters); 
			
			myObjectId = db_rs.toString();
			request.getSession().setAttribute(myObjectId, db_rs);
			request.setAttribute("myObjectId", myObjectId);			
			
			db_rs1 = Database.callProcResults("p_get_results_rs1", parameters);
			db_rs2 = Database.callProcResults("p_get_results_rs2", parameters);
			db_rs3 = Database.callProcResults("p_get_results_rs3", parameters);
			db_rs4 = Database.callProcResults("p_get_results_rs4", parameters);
			db_rs5 = Database.callProcResults("p_get_results_rs5", parameters);		
		} else if (v_pilar.equals("dp")) {
			db_dp = Database.callProcResults("p_get_results_dp", parameters); 
			
			myObjectId = db_dp.toString();
			request.getSession().setAttribute(myObjectId, db_dp);
			request.setAttribute("myObjectId", myObjectId);			
			
			db_dp1 = Database.callProcResults("p_get_results_dp1", parameters);
			db_dp2 = Database.callProcResults("p_get_results_dp2", parameters);
			db_dp3 = Database.callProcResults("p_get_results_dp3", parameters);
			db_dp4 = Database.callProcResults("p_get_results_dp4", parameters);
			db_dp5 = Database.callProcResults("p_get_results_dp5", parameters);
			db_dp6 = Database.callProcResults("p_get_results_dp6", parameters);
			db_dp7 = Database.callProcResults("p_get_results_dp7", parameters);
			db_dp8 = Database.callProcResults("p_get_results_dp8", parameters);
			db_dp9 = Database.callProcResults("p_get_results_dp9", parameters);
		} else if (v_pilar.equals("r")) {
			db_r = Database.callProcResults("p_get_results_r", parameters); 
			
			myObjectId = db_r.toString();
			request.getSession().setAttribute(myObjectId, db_r);
			request.setAttribute("myObjectId", myObjectId);			
			
			db_r1 = Database.callProcResults("p_get_results_r1", parameters);
			db_r2 = Database.callProcResults("p_get_results_r2", parameters);
			db_r3 = Database.callProcResults("p_get_results_r3", parameters);
			db_r4 = Database.callProcResults("p_get_results_r4", parameters);
			db_r5 = Database.callProcResults("p_get_results_r5", parameters);
			db_r6 = Database.callProcResults("p_get_results_r6", parameters);			
		} else if (v_pilar.equals("pv")) {
			db_pv = Database.callProcResults("p_get_results_pv", parameters); 
			
			myObjectId = db_pv.toString();
			request.getSession().setAttribute(myObjectId, db_pv);
			request.setAttribute("myObjectId", myObjectId);			
			
			db_pv1 = Database.callProcResults("p_get_results_pv1", parameters);
			db_pv2 = Database.callProcResults("p_get_results_pv2", parameters);
			db_pv3 = Database.callProcResults("p_get_results_pv3", parameters);
			db_pv4 = Database.callProcResults("p_get_results_pv4", parameters);
			db_pv5 = Database.callProcResults("p_get_results_pv5", parameters);		
			db_pv6 = Database.callProcResults("p_get_results_pv6", parameters);	
		}

%>
<html>
	<script src="/RGraph/libraries/RGraph.common.core.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.key.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.context.js" ></script>
	<script src="/RGraph/libraries/RGraph.hbar.js" ></script>
	<script src="/RGraph/libraries/RGraph.bar.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.dynamic.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.tooltips.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.effects.js" ></script>
	<script src="/RGraph/libraries/RGraph.pie.js" ></script>
	<script src="/RGraph/libraries/RGraph.meter.js" ></script>
	<script src="/RGraph/libraries/RGraph.hprogress.js" ></script>
	<script src="/RGraph/libraries/RGraph.line.js" ></script>
	<script src="/RGraph/libraries/RGraph.drawing.rect.js" ></script>
	<script src="/RGraph/libraries/RGraph.drawing.yaxis.js" ></script>
	<script src="/RGraph/libraries/RGraph.drawing.image.js" ></script>
	<!--[if lt IE 9]><script src="/RGraph/excanvas/excanvas.js"></script><![endif]-->
	
	<style>
	    span#png_link {
	        position: absolute;
	        left: 450px;
	        top: 30px;
	        border: 1px black solid;
	        padding: 1px;
	        background-color: #eee;
	        cursor: pointer;
	    }
	</style>
	
<body>
<section>
		<header>
			<div class="bc-gray-2d text-white padding-small borde-inferior">
				<div class="container">
					<h3 class="text-white"></h3>
					<h1 class="text-white"><fmt:message key="gestionar_resultados.element1" /></h1>
				</div>
			</div>
		</header>
				<div class="bc-gray padding-medium">
			<div class="container">
				<div id="buscar-cuenta" class="col-md-6 padding-small">
					
					<form class="form-horizontal" role="form"  name="cuentas" action="./main.jsp?target=resultados" method="post">
						<fieldset>
						<!-- Form Name -->
						<legend>
							<h3><fmt:message key="gestionar_resultados.element2" /></h3>
						</legend>

						<div class="form-group">
							<label class="col-md-4 control-label" for="pais_de_ubicacion_lkup"><fmt:message key="gestionar_resultados.element3" /></label>
							<div class="col-md-7">
								<select id="pais_de_ubicacion_lkup" name="pais_de_ubicacion_lkup" class="form-control" required="required" >
									<option value="0" <% if (v_pais_de_ubicacion_lkup.equals("0")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element4" /></option>
<option value="5" <% if (v_pais_de_ubicacion_lkup.equals("5")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element5" /></option>
<option value="4" <% if (v_pais_de_ubicacion_lkup.equals("4")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element6" /></option>
<option value="12" <% if (v_pais_de_ubicacion_lkup.equals("12")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element7" /></option>
<option value="7" <% if (v_pais_de_ubicacion_lkup.equals("7")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element8" /></option>
<option value="13" <% if (v_pais_de_ubicacion_lkup.equals("13")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element9" /></option>
<option value="14" <% if (v_pais_de_ubicacion_lkup.equals("14")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element10" /></option>
<option value="15" <% if (v_pais_de_ubicacion_lkup.equals("15")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element11" /></option>
<option value="8" <% if (v_pais_de_ubicacion_lkup.equals("8")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element12" /></option>
<option value="9" <% if (v_pais_de_ubicacion_lkup.equals("9")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element13" /></option>
<option value="10" <% if (v_pais_de_ubicacion_lkup.equals("10")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element14" /></option>
<option value="11" <% if (v_pais_de_ubicacion_lkup.equals("11")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element15" /></option>
<option value="16" <% if (v_pais_de_ubicacion_lkup.equals("16")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element16" /></option>
<option value="105" <% if (v_pais_de_ubicacion_lkup.equals("105")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element64" /></option>
<option value="19" <% if (v_pais_de_ubicacion_lkup.equals("19")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element17" /></option>
<option value="20" <% if (v_pais_de_ubicacion_lkup.equals("20")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element18" /></option>
<option value="22" <% if (v_pais_de_ubicacion_lkup.equals("22")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element19" /></option>
<option value="23" <% if (v_pais_de_ubicacion_lkup.equals("23")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element20" /></option>
<option value="27" <% if (v_pais_de_ubicacion_lkup.equals("27")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element21" /></option>
<option value="106" <% if (v_pais_de_ubicacion_lkup.equals("106")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element65" /></option>
<option value="107" <% if (v_pais_de_ubicacion_lkup.equals("107")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element66" /></option>
<option value="29" <% if (v_pais_de_ubicacion_lkup.equals("29")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element22" /></option>
<option value="109" <% if (v_pais_de_ubicacion_lkup.equals("109")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element68" /></option>
<option value="30" <% if (v_pais_de_ubicacion_lkup.equals("30")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element23" /></option>
<option value="108" <% if (v_pais_de_ubicacion_lkup.equals("108")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element67" /></option>
<option value="31" <% if (v_pais_de_ubicacion_lkup.equals("31")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element24" /></option>
<option value="32" <% if (v_pais_de_ubicacion_lkup.equals("32")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element25" /></option>
<option value="33" <% if (v_pais_de_ubicacion_lkup.equals("33")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element26" /></option>
<option value="35" <% if (v_pais_de_ubicacion_lkup.equals("35")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element27" /></option>
<option value="40" <% if (v_pais_de_ubicacion_lkup.equals("40")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element28" /></option>
<option value="41" <% if (v_pais_de_ubicacion_lkup.equals("41")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element29" /></option>
<option value="42" <% if (v_pais_de_ubicacion_lkup.equals("42")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element30" /></option>
<option value="43" <% if (v_pais_de_ubicacion_lkup.equals("43")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element31" /></option>
  
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="sector_de_actividad_lkup"><fmt:message key="gestionar_resultados.element32" /></label>
							<div class="col-md-7">
								<select id="sector_de_actividad_lkup" name="sector_de_actividad_lkup" class="form-control" required="required" >
									<option value="0" <% if (v_sector_de_actividad_lkup.equals("0")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element33" /></option>
<option value="118" <% if (v_sector_de_actividad_lkup.equals("118")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element34" /></option>
<option value="120" <% if (v_sector_de_actividad_lkup.equals("120")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element35" /></option>
<option value="121" <% if (v_sector_de_actividad_lkup.equals("121")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element36" /></option>
<option value="122" <% if (v_sector_de_actividad_lkup.equals("122")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element37" /></option>
<option value="123" <% if (v_sector_de_actividad_lkup.equals("123")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element38" /></option>
<option value="125" <% if (v_sector_de_actividad_lkup.equals("125")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element39" /></option>
<option value="126" <% if (v_sector_de_actividad_lkup.equals("126")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element40" /></option>
<option value="119" <% if (v_sector_de_actividad_lkup.equals("119")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element41" /></option>
<option value="127" <% if (v_sector_de_actividad_lkup.equals("127")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element42" /></option>
<option value="128" <% if (v_sector_de_actividad_lkup.equals("128")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element43" /></option>
<option value="124" <% if (v_sector_de_actividad_lkup.equals("124")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element44" /></option>
<option value="129" <% if (v_sector_de_actividad_lkup.equals("129")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element45" /></option>
<option value="130" <% if (v_sector_de_actividad_lkup.equals("130")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element46" /></option>

								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label" for="num_de_personas_trabajadores"><fmt:message key="gestionar_resultados.element47" /></label>
							<div class="col-md-7">
								<select id="num_de_personas_trabajadores" name="num_de_personas_trabajadores" class="form-control" required="required" >
									<!-- option disabled>Seleccione una opción</option -->
									<option value="0" <% if (v_num_de_personas_trabajadores.equals("0")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element48" /></option>
<option value="63" <% if (v_num_de_personas_trabajadores.equals("63")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element49" /></option>
<option value="64" <% if (v_num_de_personas_trabajadores.equals("64")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element50" /></option>
<option value="67" <% if (v_num_de_personas_trabajadores.equals("67")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element51" /></option>
<option value="65" <% if (v_num_de_personas_trabajadores.equals("65")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element52" /></option>
<option value="66" <% if (v_num_de_personas_trabajadores.equals("66")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element53" /></option>
<option value="68" <% if (v_num_de_personas_trabajadores.equals("68")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element54" /></option>

								</select>
							</div>
						</div>	

						<div class="form-group">
							<label class="col-md-4 control-label" for="num_de_personas_trabajadores"><fmt:message key="gestionar_resultados.element55" /></label>
							<div class="col-md-7">
								<select id="pilar" name="pilar" class="form-control" required="required" >
									<option disabled>Seleccione una opción</option>
									<option value="ge" <% if (v_pilar.equals("ge")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element56" /></option>  
									<option value="cp" <% if (v_pilar.equals("cp")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element57" /></option>  
									<option value="rs" <% if (v_pilar.equals("rs")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element58" /></option>  
									<option value="dp" <% if (v_pilar.equals("dp")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element59" /></option> 
									<option value="r" <% if (v_pilar.equals("r")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element60" /></option> 
									<option value="pv" <% if (v_pilar.equals("pv")) { %> selected <% } %>><fmt:message key="gestionar_resultados.element61" /></option> 

								</select>
							</div>
						</div>	

						<!-- Button -->
						<div class="form-group">
						  <label class="col-md-4 control-label" for="singlebutton"></label>
						  <div class="col-md-7">
						  	<button id="singlebutton" name="singlebutton" class="btn btn-primary btn-block"><fmt:message key="gestionar_resultados.element62" /></button>
						  </div>
						</div>

						</fieldset>
						</form>

				</div>
			</div>
		</div> <!-- fin franja gris -->		
		
		<div class="container">
					
			<div id="lista-resultados" class="col-md-8 col-centered separador-bottom ">
				
				<!-- h3 class="text-center separador-top "> Resultados</h3 -->
<br>

			<form action="/indica/HSSFCreate" method="POST">
				<input type="hidden" name="myObjectId" value="<%= myObjectId %>">
				<input type="hidden" name="mysheetname" value="Resultados">
				<input type="hidden" name="myfilename" value="Indica Igualdad">
				<input type="hidden" name="pais_de_ubicacion_lkup" value="<%= v_pais_de_ubicacion_lkup %>">
				<input type="hidden" name="sector_de_actividad_lkup" value="<%= v_sector_de_actividad_lkup %>">
				<input type="hidden" name="num_de_personas_trabajadores" value="<%= v_num_de_personas_trabajadores %>">
				<input type="hidden" name="pilar" value="<%= v_pilar %>">
				
				<input type="submit" class="butnTxt" value="<fmt:message key="gestionar_resultados.element69" />" name="export">
			</form>
<br>
			<fmt:message key="gestionar_resultados.element63" />: <%= sdf.format(new java.util.Date()) %>
<br>		
<%
	if (v_pilar.equals("ge")) {
			
 %>
				<%=  db_ge.generateHtmlTableCss2() %>
 				<div id="graph_ge1"><canvas id="cvs_ge1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge1'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge2"><canvas id="cvs_ge2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge2'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge3"><canvas id="cvs_ge3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge3'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge4"><canvas id="cvs_ge4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge4'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge5"><canvas id="cvs_ge5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge5'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge6"><canvas id="cvs_ge6" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge6'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge7"><canvas id="cvs_ge7" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge7'), event)">[No canvas support]</canvas></div>
        		<div id="graph_ge8"><canvas id="cvs_ge8" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_ge8'), event)">[No canvas support]</canvas></div>

<%
	} else if (v_pilar.equals("cp")) {
%>
				<%=  db_cp.generateHtmlTableCss2() %>
 				<div id="graph_cp1"><canvas id="cvs_cp1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp1'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp2"><canvas id="cvs_cp2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp2'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp3"><canvas id="cvs_cp3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp3'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp4"><canvas id="cvs_cp4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp4'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp5"><canvas id="cvs_cp5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp5'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp6"><canvas id="cvs_cp6" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp6'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp7"><canvas id="cvs_cp7" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp7'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp8"><canvas id="cvs_cp8" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp8'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp9"><canvas id="cvs_cp9" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp9'), event)">[No canvas support]</canvas></div>
 				<div id="graph_cp10"><canvas id="cvs_cp10" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_cp10'), event)">[No canvas support]</canvas></div>
				
<%
	} else if (v_pilar.equals("rs")) {
%>
				<%=  db_rs.generateHtmlTableCss2() %>
 				<div id="graph_rs1"><canvas id="cvs_rs1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_rs1'), event)">[No canvas support]</canvas></div>
 				<div id="graph_rs2"><canvas id="cvs_rs2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_rs2'), event)">[No canvas support]</canvas></div>
 				<div id="graph_rs3"><canvas id="cvs_rs3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_rs3'), event)">[No canvas support]</canvas></div>
 				<div id="graph_rs4"><canvas id="cvs_rs4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_rs4'), event)">[No canvas support]</canvas></div>
 				<div id="graph_rs5"><canvas id="cvs_rs5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_rs5'), event)">[No canvas support]</canvas></div>

<%
	} else if (v_pilar.equals("dp")) {
%>
				<%=  db_dp.generateHtmlTableCss2() %>
 				<div id="graph_dp1"><canvas id="cvs_dp1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp1'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp2"><canvas id="cvs_dp2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp2'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp3"><canvas id="cvs_dp3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp3'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp4"><canvas id="cvs_dp4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp4'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp5"><canvas id="cvs_dp5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp5'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp6"><canvas id="cvs_dp6" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp6'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp7"><canvas id="cvs_dp7" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp7'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp8"><canvas id="cvs_dp8" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp8'), event)">[No canvas support]</canvas></div>
 				<div id="graph_dp9"><canvas id="cvs_dp9" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_dp9'), event)">[No canvas support]</canvas></div>

<%
	} else if (v_pilar.equals("r")) {
%>
				<%=  db_r.generateHtmlTableCss2() %>
 				<div id="graph_r1"><canvas id="cvs_r1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r1'), event)">[No canvas support]</canvas></div>
 				<div id="graph_r2"><canvas id="cvs_r2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r2'), event)">[No canvas support]</canvas></div>
 				<div id="graph_r3"><canvas id="cvs_r3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r3'), event)">[No canvas support]</canvas></div>
 				<div id="graph_r4"><canvas id="cvs_r4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r4'), event)">[No canvas support]</canvas></div>
 				<div id="graph_r5"><canvas id="cvs_r5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r5'), event)">[No canvas support]</canvas></div>
 				<div id="graph_r6"><canvas id="cvs_r6" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_r6'), event)">[No canvas support]</canvas></div>

<%
	} else if (v_pilar.equals("pv")) {
%>
				<%=  db_pv.generateHtmlTableCss2() %>
 				<div id="graph_pv1"><canvas id="cvs_pv1" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv1'), event)">[No canvas support]</canvas></div>
 				<div id="graph_pv2"><canvas id="cvs_pv2" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv2'), event)">[No canvas support]</canvas></div>
 				<div id="graph_pv3"><canvas id="cvs_pv3" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv3'), event)">[No canvas support]</canvas></div>
 				<div id="graph_pv4"><canvas id="cvs_pv4" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv4'), event)">[No canvas support]</canvas></div>
 				<div id="graph_pv5"><canvas id="cvs_pv5" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv5'), event)">[No canvas support]</canvas></div>
 				<div id="graph_pv6"><canvas id="cvs_pv6" width="800" height="450" ondblclick="RGraph.showPNG(document.getElementById('cvs_pv6'), event)">[No canvas support]</canvas></div>
<%
	}
%>

			</div><!-- fin -->
		</div> <!-- fin de container -->

<script src="/indica/assets/js/jquery-2.1.0.min.js"></script>
<script> 

$(document).ready(function(){
    
		resetCanvas = function(){
				$('#cvs').remove(); // this is my <canvas> element
				$('#graph-container').append('<canvas id="cvs"><canvas>');
				canvas = document.querySelector('#cvs');
				ctx = canvas.getContext('2d');
				ctx.canvas.width = 800; // resize to parent width
				ctx.canvas.height = 450; // resize to parent height
				// var x = canvas.width/2;
				// bvar y = canvas.height/2;
				// ctx.font = '10pt Verdana';
				// ctx.textAlign = 'center';
				// ctx.fillText('This text is centered on the canvas', x, y);
				
				// alert('I made it to reset the canvas.');
		};

		remove_ge1 = function(){ $('#cvs_ge1').remove(); };
		remove_ge2 = function(){ $('#cvs_ge2').remove(); };
		remove_ge3 = function(){ $('#cvs_ge3').remove(); };
		remove_ge4 = function(){ $('#cvs_ge4').remove(); };
		remove_ge5 = function(){ $('#cvs_ge5').remove(); };
		remove_ge6 = function(){ $('#cvs_ge6').remove(); };
		remove_ge7 = function(){ $('#cvs_ge7').remove(); };
		remove_ge8 = function(){ $('#cvs_ge8').remove(); };	
		
		remove_cp1 = function(){ $('#cvs_cp1').remove(); };
		remove_cp2 = function(){ $('#cvs_cp2').remove(); };
		remove_cp3 = function(){ $('#cvs_cp3').remove(); };
		remove_cp4 = function(){ $('#cvs_cp4').remove(); };
		remove_cp5 = function(){ $('#cvs_cp5').remove(); };
		remove_cp6 = function(){ $('#cvs_cp6').remove(); };
		remove_cp7 = function(){ $('#cvs_cp7').remove(); };
		remove_cp8 = function(){ $('#cvs_cp8').remove(); };
		remove_cp9 = function(){ $('#cvs_cp9').remove(); };
		remove_cp10 = function(){ $('#cvs_cp10').remove(); };
		
		remove_rs1 = function(){ $('#cvs_rs1').remove(); };
		remove_rs2 = function(){ $('#cvs_rs2').remove(); };
		remove_rs3 = function(){ $('#cvs_rs3').remove(); };
		remove_rs4 = function(){ $('#cvs_rs4').remove(); };
		remove_rs5 = function(){ $('#cvs_rs5').remove(); };
		
		remove_dp1 = function(){ $('#cvs_dp1').remove(); };
		remove_dp2 = function(){ $('#cvs_dp2').remove(); };
		remove_dp3 = function(){ $('#cvs_dp3').remove(); };
		remove_dp4 = function(){ $('#cvs_dp4').remove(); };
		remove_dp5 = function(){ $('#cvs_dp5').remove(); };
		remove_dp6 = function(){ $('#cvs_dp6').remove(); };
		remove_dp7 = function(){ $('#cvs_dp7').remove(); };
		remove_dp8 = function(){ $('#cvs_dp8').remove(); };
		remove_dp9 = function(){ $('#cvs_dp9').remove(); };
		
		remove_r1 = function(){ $('#cvs_r1').remove(); };
		remove_r2 = function(){ $('#cvs_r2').remove(); };
		remove_r3 = function(){ $('#cvs_r3').remove(); };
		remove_r4 = function(){ $('#cvs_r4').remove(); };
		remove_r5 = function(){ $('#cvs_r5').remove(); };
		remove_r6 = function(){ $('#cvs_r6').remove(); };
		
		remove_pv1 = function(){ $('#cvs_pv1').remove(); };
		remove_pv2 = function(){ $('#cvs_pv2').remove(); };
		remove_pv3 = function(){ $('#cvs_pv3').remove(); };
		remove_pv4 = function(){ $('#cvs_pv4').remove(); };
		remove_pv5 = function(){ $('#cvs_pv5').remove(); };
		remove_pv6 = function(){ $('#cvs_pv6').remove(); };
});

        function swap (x)
        {
			resetCanvas();
			
			if (x == 'GE1') {
				draw_ge1();
			} else if (x == 'GE2'){
			    draw_ge2();
			} else if (x == 'GE3'){
			    draw_ge3();
			} else if (x == 'GE4'){	
			    draw_ge4();
			} else if (x == 'GE5'){	
				draw_ge5();
			} else if (x == 'GE6'){
			    draw_ge6();
			} else if (x == 'GE7'){
			    draw_ge7();
			} else if (x == 'GE8'){	
			    draw_ge8();
			} else if (x == 'CP1') {
			    draw_cp1();
			} else if (x == 'CP2'){
			    draw_cp2();
			} else if (x == 'CP3'){
			    draw_cp3();
			} else if (x == 'CP4'){
			    draw_cp4();
			} else if (x == 'CP5'){
			    draw_cp5();
			} else if (x == 'CP6'){
			    draw_cp6();
			} else if (x == 'CP7'){
			    draw_cp7();
			} else if (x == 'CP8'){
			    draw_cp8();
			} else if (x == 'CP9'){
			    draw_cp9();
			} else if (x == 'CP10'){
			    draw_cp10();
			} else if (x == 'RS1') {
			    draw_rs1();
			} else if (x == 'RS2'){
			    draw_rs2();
			} else if (x == 'RS3'){
			    draw_rs3();
			} else if (x == 'RS4'){
			    draw_rs4();
			} else if (x == 'RS5'){
			    draw_rs5();
			} else if (x == 'DP1') {
			    draw_dp1();
			} else if (x == 'DP2'){
			    draw_dp2();
			} else if (x == 'DP3'){
			    draw_dp3();
			} else if (x == 'DP4'){
			    draw_dp4();
			} else if (x == 'DP5'){
			    draw_dp5();
			} else if (x == 'DP6'){
			    draw_dp6();
			} else if (x == 'DP7'){
			    draw_dp7();
			} else if (x == 'DP8'){
			    draw_dp8();
			} else if (x == 'DP9'){
			    draw_dp9();
			} else if (x == 'R1') {
			    draw_r1();
			} else if (x == 'R2'){
			    draw_r2();
			} else if (x == 'R3'){
			    draw_r3();
			} else if (x == 'R4'){
			    draw_r4();
			} else if (x == 'R5'){
			    draw_r5();
			} else if (x == 'R6'){
			    draw_r6();
			} else if (x == 'PV1') {
			    draw_pv1();
			} else if (x == 'PV2'){
			    draw_pv2();
			} else if (x == 'PV3'){
			    draw_pv3();
			} else if (x == 'PV4'){
			    draw_pv4();
			} else if (x == 'PV5'){
			    draw_pv5();
			} else if (x == 'PV6'){
			    draw_pv6();
			}  
        }   

<%
	if (v_pilar.equals("ge")) {
%>		
		<%=  db_ge1.generateJsLineGraph("draw_ge1","GE1","cvs_ge1",7) %>
		<%=  db_ge2.generateJsLineGraph("draw_ge2","GE2","cvs_ge2",7) %>
		<%=  db_ge3.generateJsLineGraph("draw_ge3","GE3","cvs_ge3",2) %>
		<%=  db_ge4.generateJsLineGraph("draw_ge4","GE4","cvs_ge4",4) %>
		<%=  db_ge5.generateJsLineGraph("draw_ge5","GE5","cvs_ge5",6) %>
		<%=  db_ge6.generateJsLineGraph("draw_ge6","GE6","cvs_ge6",3) %>
		<%=  db_ge7.generateJsLineGraph("draw_ge7","GE7","cvs_ge7",3) %>
		<%=  db_ge8.generateJsLineGraph("draw_ge8","GE8","cvs_ge8",6) %>
<%
	} else if (v_pilar.equals("cp")) {
%>		
		<%=  db_cp1.generateJsLineGraph("draw_cp1","CP1","cvs_cp1",1) %>
		<%=  db_cp2.generateJsLineGraph("draw_cp2","CP2","cvs_cp2",5) %>
		<%=  db_cp3.generateJsLineGraph("draw_cp3","CP3","cvs_cp3",5) %>
		<%=  db_cp4.generateJsLineGraph("draw_cp4","CP4","cvs_cp4",3) %>
		<%=  db_cp5.generateJsLineGraph("draw_cp5","CP5","cvs_cp5",3) %>
		<%=  db_cp6.generateJsLineGraph("draw_cp6","CP6","cvs_cp6",2) %>
		<%=  db_cp7.generateJsLineGraph("draw_cp7","CP7","cvs_cp7",2) %>
		<%=  db_cp8.generateJsLineGraph("draw_cp8","CP8","cvs_cp8",3) %>
		<%=  db_cp9.generateJsLineGraph("draw_cp9","CP9","cvs_cp9",2) %>
		<%=  db_cp10.generateJsLineGraph("draw_cp10","CP10","cvs_cp10",3) %>		
<%
	} else if (v_pilar.equals("rs")) {
%>		
		<%=  db_rs1.generateJsLineGraph("draw_rs1","RS1","cvs_rs1",4) %>
		<%=  db_rs2.generateJsLineGraph("draw_rs2","RS2","cvs_rs2",2) %>
		<%=  db_rs3.generateJsLineGraph("draw_rs3","RS3","cvs_rs3",4) %>
		<%=  db_rs4.generateJsLineGraph("draw_rs4","RS4","cvs_rs4",6) %>
		<%=  db_rs5.generateJsLineGraph("draw_rs5","RS5","cvs_rs5",3) %>
<%
	} else if (v_pilar.equals("dp")) {
%>		
		<%=  db_dp1.generateJsLineGraph("draw_dp1","DP1","cvs_dp1",1) %>
		<%=  db_dp2.generateJsLineGraph("draw_dp2","DP2","cvs_dp2",2) %>
		<%=  db_dp3.generateJsLineGraph("draw_dp3","DP3","cvs_dp3",4) %>
		<%=  db_dp4.generateJsLineGraph("draw_dp4","DP4","cvs_dp4",6) %>
		<%=  db_dp5.generateJsLineGraph("draw_dp5","DP5","cvs_dp5",3) %>
		<%=  db_dp6.generateJsLineGraph("draw_dp6","DP6","cvs_dp6",2) %>
		<%=  db_dp7.generateJsLineGraph("draw_dp7","DP7","cvs_dp7",4) %>
		<%=  db_dp8.generateJsLineGraph("draw_dp8","DP8","cvs_dp8",6) %>
		<%=  db_dp9.generateJsLineGraph("draw_dp9","DP9","cvs_dp9",3) %>
<%
	} else if (v_pilar.equals("r")) {
%>		
		<%=  db_r1.generateJsLineGraph("draw_r1","R1","cvs_r1",3) %>
		<%=  db_r2.generateJsLineGraph("draw_r2","R2","cvs_r2",3) %>
		<%=  db_r3.generateJsLineGraph("draw_r3","R3","cvs_r3",3) %>
		<%=  db_r4.generateJsLineGraph("draw_r4","R4","cvs_r4",4) %>
		<%=  db_r5.generateJsLineGraph("draw_r5","R5","cvs_r5",5) %>
		<%=  db_r6.generateJsLineGraph("draw_r6","R6","cvs_r6",6) %>	
<%
	} else if (v_pilar.equals("pv")) {
%>		
		<%=  db_pv1.generateJsLineGraph("draw_pv1","PV1","cvs_pv1",2) %>
		<%=  db_pv2.generateJsLineGraph("draw_pv2","PV2","cvs_pv2",4) %>
		<%=  db_pv3.generateJsLineGraph("draw_pv3","PV3","cvs_pv3",6) %>
		<%=  db_pv4.generateJsLineGraph("draw_pv4","PV4","cvs_pv4",3) %>
		<%=  db_pv5.generateJsLineGraph("draw_pv5","PV5","cvs_pv5",6) %>
		<%=  db_pv6.generateJsLineGraph("draw_pv6","PV6","cvs_pv6",3) %>
<%
	}   
%>

	CreateCharts = function (e) { 
	
<%
	if (v_pilar.equals("ge")) {
%>		
		draw_ge1();
		draw_ge2();
		draw_ge3();
		draw_ge4();
		draw_ge5();
		draw_ge6();
		draw_ge7();
		draw_ge8();

<%
	} else if (v_pilar.equals("cp")) {
%>	
		draw_cp1();
		draw_cp2();
		draw_cp3();
		draw_cp4();
		draw_cp5();
		draw_cp6();
		draw_cp7();
		draw_cp8();
		draw_cp9();
		draw_cp10();
<%
	} else if (v_pilar.equals("rs")) {
%>	
		draw_rs1();
		draw_rs2();
		draw_rs3();
		draw_rs4();
		draw_rs5();
<%
	} else if (v_pilar.equals("r")) {
%>	
		draw_r1();
		draw_r2();
		draw_r3();
		draw_r4();
		draw_r5();
		draw_r6();
<%
	} else if (v_pilar.equals("dp")) {
%>	
		draw_dp1();
		draw_dp2();
		draw_dp3();
		draw_dp4();
		draw_dp5();
		draw_dp6();
		draw_dp7();
		draw_dp8();
		draw_dp9();
<%
	} else if (v_pilar.equals("pv")) {
%>	
		draw_pv1();
		draw_pv2();
		draw_pv3();
		draw_pv4();
		draw_pv5();
		draw_pv6();
<%
	}
%>

	}

	window.onload = CreateCharts;

</script

</section>

</body>
</html>

<%
	}
%>