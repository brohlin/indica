<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="java.util.Enumeration" %>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="org.undp.i18n.text" />

<%
	String un = (String) session.getAttribute("temp_user_id");
	System.out.println(un);
	if ( un == null || un.equals("null")) {
		System.out.println("in if statement");
		response.sendRedirect("/indica/es/main.jsp?target=login&page=empresa_resultados");
		System.out.println("after redirect");
		return;
	} else {
	
		System.out.println("in else statement");
%>

<%	
	String p_organization_id2 = "";
	if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Empresa"))) {
		p_organization_id2 = session.getAttribute("temp_user_organization_id").toString();
	} else if ((session.getAttribute("temp_user_id") != null) && (session.getAttribute("temp_user_role_nm").equals("Admin"))) {
		p_organization_id2 = session.getAttribute("temp_admin_organization_id").toString();
	}
	String mEncuestas_complete = "";
	String mEncuestas_not_complete = "";
	String mEncuestas_total = "";
	String mEncuestas_pct_complete = "";
	String mEncuestas_complete_month = "";
	String mEncuestas_pct_not_complete = "";
	String ge1 = "";
	String ge2 = "";
	String ge3 = "";
	String ge4 = "";
	String ge5 = "";
	String ge6 = "";
	String ge7 = "";
	String ge8 = "";
	String cp1 = "";
	String cp2 = "";
	String cp3 = "";
	String cp4 = "";
	String cp5 = "";
	String cp6 = "";
	String cp7 = "";
	String cp8 = "";
	String cp9 = "";
	String cp10 = "";
	String rs1 = "";
	String rs2 = "";
	String rs3 = "";
	String rs4 = "";
	String rs5 = "";
	String dp1 = "";
	String dp2 = "";
	String dp3 = "";
	String dp4 = "";
	String dp5 = "";
	String dp6 = "";
	String dp7 = "";
	String dp8 = "";
	String dp9 = "";
	String r1 = "";
	String r2 = "";
	String r3 = "";
	String r4 = "";
	String r5 = "";
	String r6 = "";
	String pv1 = "";
	String pv2 = "";
	String pv3 = "";
	String pv4 = "";
	String pv5 = "";
	String pv6 = "";
	String dp1_color = "";
	String dp2_color = "";
	String dp3_color = "";
	String dp4_color = "";
	String dp5_color = "";
	String dp6_color = "";
	String dp7_color = "";
	String dp8_color = "";
	String dp9_color = "";
	String r1_color = "";
	String r2_color = "";
	String r3_color = "";
	String r4_color = "";
	String r5_color = "";	
	String r6_color = "";
	String pv1_color = "";
	String pv2_color = "";
	String pv3_color = "";
	String pv4_color = "";
	String pv5_color = "";	
	String pv6_color = "";	
	String rs1_color = "";
	String rs2_color = "";
	String rs3_color = "";
	String rs4_color = "";
	String rs5_color = "";		
	String cp1_color = "";
	String cp2_color = "";
	String cp3_color = "";
	String cp4_color = "";
	String cp5_color = "";
	String cp6_color = "";
	String cp7_color = "";
	String cp8_color = "";
	String cp9_color = "";
	String cp10_color = "";
	String ge1_color = "";
	String ge2_color = "";
	String ge3_color = "";
	String ge4_color = "";
	String ge5_color = "";
	String ge6_color = "";
	String ge7_color = "";
	String ge8_color = "";	
	
	DynStringArray parameters1 = new DynStringArray();
	parameters1.add(p_organization_id2);
	DbResults db1 = Database.callProcResults("p_get_encuesta_resultados", parameters1);
		
	int size1=0;
	
	while(size1<db1.getRowCount())
	{
		mEncuestas_complete = db1.getRow(size1).get(1);
		mEncuestas_total = db1.getRow(size1).get(2);
		mEncuestas_pct_complete = db1.getRow(size1).get(3);
		mEncuestas_complete_month = db1.getRow(size1).get(4);	
		mEncuestas_pct_not_complete = db1.getRow(size1).get(5);
		mEncuestas_not_complete = db1.getRow(size1).get(6);
		ge1 = db1.getRow(size1).get(7);
		ge2 = db1.getRow(size1).get(8);
		ge3 = db1.getRow(size1).get(9);
		ge4 = db1.getRow(size1).get(10);
		ge5 = db1.getRow(size1).get(11);
		ge6 = db1.getRow(size1).get(12);
		ge7 = db1.getRow(size1).get(13);
		ge8 = db1.getRow(size1).get(14);
		cp1 = db1.getRow(size1).get(15);
		cp2 = db1.getRow(size1).get(16);
		cp3 = db1.getRow(size1).get(17);
		cp4 = db1.getRow(size1).get(18);
		cp5 = db1.getRow(size1).get(19);
		cp6 = db1.getRow(size1).get(20);
		cp7 = db1.getRow(size1).get(21);
		cp8 = db1.getRow(size1).get(22);
		cp9 = db1.getRow(size1).get(23);
		cp10 = db1.getRow(size1).get(24);
		rs1 = db1.getRow(size1).get(25);
		rs2 = db1.getRow(size1).get(26);
		rs3 = db1.getRow(size1).get(27);
		rs4 = db1.getRow(size1).get(28);
		rs5 = db1.getRow(size1).get(29);		
		dp1 = db1.getRow(size1).get(30);
		dp2 = db1.getRow(size1).get(31);
		dp3 = db1.getRow(size1).get(32);
		dp4 = db1.getRow(size1).get(33);
		dp5 = db1.getRow(size1).get(34);
		dp6 = db1.getRow(size1).get(35);
		dp7 = db1.getRow(size1).get(36);
		dp8 = db1.getRow(size1).get(37);
		dp9 = db1.getRow(size1).get(38);
		r1 = db1.getRow(size1).get(39);
		r2 = db1.getRow(size1).get(40);
		r3 = db1.getRow(size1).get(41);
		r4 = db1.getRow(size1).get(42);
		r5 = db1.getRow(size1).get(43);		
		r6 = db1.getRow(size1).get(44);		
		pv1 = db1.getRow(size1).get(45);
		pv2 = db1.getRow(size1).get(46);
		pv3 = db1.getRow(size1).get(47);
		pv4 = db1.getRow(size1).get(48);
		pv5 = db1.getRow(size1).get(49);		
		pv6 = db1.getRow(size1).get(50);
		dp1_color = db1.getRow(size1).get(51);
		dp2_color = db1.getRow(size1).get(52);
		dp3_color = db1.getRow(size1).get(53);
		dp4_color = db1.getRow(size1).get(54);
		dp5_color = db1.getRow(size1).get(55);
		dp6_color = db1.getRow(size1).get(56);
		dp7_color = db1.getRow(size1).get(57);
		dp8_color = db1.getRow(size1).get(58);
		dp9_color = db1.getRow(size1).get(59);
		r1_color = db1.getRow(size1).get(60);
		r2_color = db1.getRow(size1).get(61);
		r3_color = db1.getRow(size1).get(62);
		r4_color = db1.getRow(size1).get(63);
		r5_color = db1.getRow(size1).get(64);		
		r6_color = db1.getRow(size1).get(65);
		pv1_color = db1.getRow(size1).get(66);
		pv2_color = db1.getRow(size1).get(67);
		pv3_color = db1.getRow(size1).get(68);
		pv4_color = db1.getRow(size1).get(69);
		pv5_color = db1.getRow(size1).get(70);		
		pv6_color = db1.getRow(size1).get(71);		
		rs1_color = db1.getRow(size1).get(72);
		rs2_color = db1.getRow(size1).get(73);
		rs3_color = db1.getRow(size1).get(74);
		rs4_color = db1.getRow(size1).get(75);
		rs5_color = db1.getRow(size1).get(76);	
		cp1_color = db1.getRow(size1).get(77);
		cp2_color = db1.getRow(size1).get(78);
		cp3_color = db1.getRow(size1).get(79);
		cp4_color = db1.getRow(size1).get(80);
		cp5_color = db1.getRow(size1).get(81);	
		cp6_color = db1.getRow(size1).get(82);
		cp7_color = db1.getRow(size1).get(83);
		cp8_color = db1.getRow(size1).get(84);
		cp9_color = db1.getRow(size1).get(85);
		cp10_color = db1.getRow(size1).get(86);
		ge1_color = db1.getRow(size1).get(87);
		ge2_color = db1.getRow(size1).get(88);
		ge3_color = db1.getRow(size1).get(89);
		ge4_color = db1.getRow(size1).get(90);
		ge5_color = db1.getRow(size1).get(91);	
		ge6_color = db1.getRow(size1).get(92);
		ge7_color = db1.getRow(size1).get(93);
		ge8_color = db1.getRow(size1).get(94);		
		
		size1++;
	}
	
	if (ge1 == null) {ge1 = "NA";}
	if (ge2 == null) {ge2 = "NA";}
	if (ge3 == null) {ge3 = "NA";}
	if (ge4 == null) {ge4 = "NA";}
	if (ge5 == null) {ge5 = "NA";}
	if (ge6 == null) {ge6 = "NA";}
	if (ge7 == null) {ge7 = "NA";}
	if (ge8 == null) {ge8 = "NA";}
	if (cp1 == null) {cp1 = "NA";}
	if (cp2 == null) {cp2 = "NA";}
	if (cp3 == null) {cp3 = "NA";}
	if (cp4 == null) {cp4 = "NA";}
	if (cp5 == null) {cp5 = "NA";}
	if (cp6 == null) {cp6 = "NA";}
	if (cp7 == null) {cp7 = "NA";}
	if (cp8 == null) {cp8 = "NA";}
	if (cp9 == null) {cp9 = "NA";}
	if (cp10 == null) {cp10 = "NA";}
	if (rs1 == null) {rs1 = "NA";}
	if (rs2 == null) {rs2 = "NA";}
	if (rs3 == null) {rs3 = "NA";}
	if (rs4 == null) {rs4 = "NA";}
	if (rs5 == null) {rs5 = "NA";}
	if (dp1 == null) {dp1 = "NA";}
	if (dp2 == null) {dp2 = "NA";}
	if (dp3 == null) {dp3 = "NA";}
	if (dp4 == null) {dp4 = "NA";}
	if (dp5 == null) {dp5 = "NA";}
	if (dp6 == null) {dp6 = "NA";}
	if (dp7 == null) {dp7 = "NA";}
	if (dp8 == null) {dp8 = "NA";}
	if (dp9 == null) {dp9 = "NA";}
	if (r1 == null) {r1 = "NA";}
	if (r2 == null) {r2 = "NA";}
	if (r3 == null) {r3 = "NA";}
	if (r4 == null) {r4 = "NA";}
	if (r5 == null) {r5 = "NA";}
	if (r6 == null) {r6 = "NA";}
	if (pv1 == null) {pv1 = "NA";}
	if (pv2 == null) {pv2 = "NA";}
	if (pv3 == null) {pv3 = "NA";}
	if (pv4 == null) {pv4 = "NA";}
	if (pv5 == null) {pv5 = "NA";}
	if (pv6 == null) {pv6 = "NA";}	
%>

<html>
	<script src="/RGraph/libraries/RGraph.common.core.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.key.js" ></script>
	<script src="/RGraph/libraries/RGraph.hbar.js" ></script>
	<script src="/RGraph/libraries/RGraph.bar.js" ></script>
	<!-- script src="/RGraph/libraries/RGraph.common.dynamic.js" ></script -->
	<script src="/RGraph/libraries/RGraph.common.tooltips.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.effects.js" ></script>
	<script src="/RGraph/libraries/RGraph.pie.js" ></script>
	<script src="/RGraph/libraries/RGraph.meter.js" ></script>
	<script src="/RGraph/libraries/RGraph.hprogress.js" ></script>
	<!--[if lt IE 9]><script src="/RGraph/excanvas/excanvas.js"></script><![endif]-->
<body>
 
<section role="dialog" class="borde-superior fondo-gris">
	<header>
		<div class="well">
			<h1 class="text-center text-white"><fmt:message key="empresa_resultados.element1" /></h1>
		</div>
		<div class="well-2 bc-purple">
			<h3 class="text-center text-white"><%= session.getAttribute("temp_admin_organization_nm").toString() %></h3>
		</div>
	</header>
<div class="container">

<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">
<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element2" /></label></h5>
<!-- nav class="col-xs-12 col-lg-3 separador-top navegacion2 side-menu" role="navigation" -->		
	<!-- ul class="nav nav-stacked text-center" -->
	<ul>
		<li><fmt:message key="empresa_resultados.element3" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cb").toString() %></li>
		<li><fmt:message key="empresa_resultados.element4" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_plantilla").toString() %></li>
		<li><fmt:message key="empresa_resultados.element5" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_cl").toString() %></li>
		<li><fmt:message key="empresa_resultados.element6" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_gestion_del_personal").toString() %></li>
		<li><fmt:message key="empresa_resultados.element7" /> - <%= session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa_otros_datos").toString() %></li>
<%
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("N")) {
%>
		<li><fmt:message key="empresa_resultados.element8" /></li>
<%
	} else if (session.getAttribute("temp_admin_organization_f_get_pct_complete_empresa").toString().equals("100") && session.getAttribute("temp_admin_organization_completed").toString().equals("Y")) {
%>						
		<li><fmt:message key="empresa_resultados.element9" /> <%= session.getAttribute("temp_admin_organization_last_mod_tmstmp").toString() %> </li>
<%
	}

%>	
	</ul>

<BR>

<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element10" /></label></h5>
	<table>
	
		<tr>
<%
	if (Integer.parseInt(mEncuestas_total)>0) {
%>

			<td><div style="text-align: center"><canvas id="cvs" width="400" height="200">[No canvas support]</canvas></div></td>
			<td><div style="text-align: center"><canvas id="cvs1" width="400" height="200">[No canvas support]</canvas></div></td>

<%
	} else {
%>
			<td colspan="2"><fmt:message key="empresa_resultados.element11" /> <%= session.getAttribute("temp_admin_organization_nm").toString() %>.</td>				

<%	
	}
%>
		</tr>
	</table>
<br>
<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element12" /></label></h5>
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element13" /></label></div><div class="col-xs-4 " align="right"><%= ge1 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element14" /></label></div><div class="col-xs-4 " align="right"><%= ge2 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element15" /></label></div><div class="col-xs-4 " align="right"><%= ge3 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element16" /></label></div><div class="col-xs-4 " align="right"><%= ge4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element17" /></label></div><div class="col-xs-4 " align="right"><%= ge5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge5_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element18" /></label></div><div class="col-xs-4 " align="right"><%= ge6 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge6_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE7</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element19" /></label></div><div class="col-xs-4 " align="right"><%= ge7 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge7_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE8</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element20" /></label></div><div class="col-xs-4 " align="right"><%= ge8 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= ge8_color %>_mini.png"></div></div>
</div>

	<table align="center">
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td align="center">
				<div style="width: 450px; height: 450; background-color: white;  text-align: center; font-family: Arial;">
        			<canvas id="cvs_ge" width="450" height="350">[No canvas support]</canvas>	
				
        			<br>
        			<% if(!ge1.equals("NA")) { %><button onclick="swap_ge(1)">GE1</button>&nbsp;<% } %>
        			<% if(!ge2.equals("NA")) { %><button onclick="swap_ge(2)">GE2</button>&nbsp;<% } %>
        			<% if(!ge3.equals("NA")) { %><button onclick="swap_ge(3)">GE3</button>&nbsp;<% } %>
        			<% if(!ge4.equals("NA")) { %><button onclick="swap_ge(4)">GE4</button>&nbsp;<% } %>
        			<br><br>
        			<% if(!ge5.equals("NA")) { %><button onclick="swap_ge(5)">GE5</button><% } %>
        			<% if(!ge6.equals("NA")) { %><button onclick="swap_ge(6)">GE6</button>&nbsp;<% } %>
        			<% if(!ge7.equals("NA")) { %><button onclick="swap_ge(7)">GE7</button>&nbsp;<% } %>
        			<% if(!ge8.equals("NA")) { %><button onclick="swap_ge(8)">GE8</button>&nbsp;<% } %>
        			<br>
        			</div>
			</td>		
		</tr>
	</table>
<br>

	
		<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element21" /></label></h5>
	
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element22" /></label></div><div class="col-xs-4 " align="right"><%= cp1 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element23" /></label></div><div class="col-xs-4 " align="right"><%= cp2 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element24" /></label></div><div class="col-xs-4 " align="right"><%= cp3 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element25" /></label></div><div class="col-xs-4 " align="right"><%= cp4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element26" /></label></div><div class="col-xs-4 " align="right"><%= cp5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp5_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element27" /></label></div><div class="col-xs-4 " align="right"><%= cp6 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp6_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP7</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element28" /></label></div><div class="col-xs-4 " align="right"><%= cp7 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp7_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP8</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element29" /></label></div><div class="col-xs-4 " align="right"><%= cp8 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp8_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP9</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element30" /></label></div><div class="col-xs-4 " align="right"><%= cp9 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp9_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">CP10</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element31" /></label></div><div class="col-xs-4 " align="right"><%= cp10 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= cp10_color %>_mini.png"></div></div>
</div>

	<table align="center">
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td align="center">
				<div style="width: 450px; height: 450; background-color: white;  text-align: center; font-family: Arial;">
        			<canvas id="cvs_cp" width="450" height="350">[No canvas support]</canvas>	
				
        			<br>
        			<% if(!cp1.equals("NA")) { %><button onclick="swap(1)">CP1</button>&nbsp;<% } %>
        			<% if(!cp2.equals("NA")) { %><button onclick="swap(2)">CP2</button>&nbsp;<% } %>
        			<% if(!cp3.equals("NA")) { %><button onclick="swap(3)">CP3</button>&nbsp;<% } %>
        			<% if(!cp4.equals("NA")) { %><button onclick="swap(4)">CP4</button>&nbsp;<% } %>
        			<% if(!cp5.equals("NA")) { %><button onclick="swap(5)">CP5</button><% } %>
        			<br><br>
        			<% if(!cp6.equals("NA")) { %><button onclick="swap(6)">CP6</button>&nbsp;<% } %>
        			<% if(!cp7.equals("NA")) { %><button onclick="swap(7)">CP7</button>&nbsp;<% } %>
        			<% if(!cp8.equals("NA")) { %><button onclick="swap(8)">CP8</button>&nbsp;<% } %>
        			<% if(!cp9.equals("NA")) { %><button onclick="swap(9)">CP9</button>&nbsp;<% } %>
        			<% if(!cp10.equals("NA")) { %><button onclick="swap(10)">CP10</button><% } %>
        			<br>
        			</div>
			</td>		
		</tr>
	</table>
<br>
	<table align="center">
	
		<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element32" /></label></h5>		
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">RS1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element33" /></label></div><div class="col-xs-4 " align="right"><%= rs1 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= rs1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">RS2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element34" /></label></div><div class="col-xs-4 " align="right"><%= rs2 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= rs2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">RS3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element35" /></label></div><div class="col-xs-4 " align="right"><%= rs3 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= rs3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">RS4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element36" /></label></div><div class="col-xs-4 " align="right"><%= rs4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= rs4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">RS5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element37" /></label></div><div class="col-xs-4 " align="right"><%= rs5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= rs5_color %>_mini.png"></div></div>

</div>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td align="center">
				<div style="width: 450px; height: 450; background-color: white;  text-align: center; font-family: Arial;">
        			<canvas id="cvs_rs" width="450" height="350">[No canvas support]</canvas>	
				
        			<br>
        			<% if(!rs1.equals("NA")) { %><button onclick="swap_rs(1)">RS1</button>&nbsp;<% } %>
        			<% if(!rs2.equals("NA")) { %><button onclick="swap_rs(2)">RS2</button>&nbsp;<% } %>
        			<% if(!rs3.equals("NA")) { %><button onclick="swap_rs(3)">RS3</button>&nbsp;<% } %>
        			<% if(!rs4.equals("NA")) { %><button onclick="swap_rs(4)">RS4</button>&nbsp;<% } %>
        			<% if(!rs5.equals("NA")) { %><button onclick="swap_rs(5)">RS5</button><% } %>
        			<br><br>
        			</div>
			</td>		
		</tr>

	</table>
<br>
<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element38" /></label></h5>		
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element39" /></label></div><div class="col-xs-4 " align="right"><%= dp1 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element40" /></label></div><div class="col-xs-4 " align="right"><%= dp2 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element41" /></label></div><div class="col-xs-4 " align="right"><%= dp3 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element42" /></label></div><div class="col-xs-4 " align="right"><%= dp4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element43" /></label></div><div class="col-xs-4 " align="right"><%= dp5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp5_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element44" /></label></div><div class="col-xs-4 " align="right"><%= dp6 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp6_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP7</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element45" /></label></div><div class="col-xs-4 " align="right"><%= dp7 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp7_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP8</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element46" /></label></div><div class="col-xs-4 " align="right"><%= dp8 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp8_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">DP9</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element47" /></label></div><div class="col-xs-4 " align="right"><%= dp9 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= dp9_color %>_mini.png"></div></div>
</div>
<br>
<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element48" /></label></h5>
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element49" /></label></div><div class="col-xs-4 " align="right"><%= r1 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element50" /></label></div><div class="col-xs-4 " align="right"><%= r2 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element51" /></label></div><div class="col-xs-4 " align="right"><%= r3 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element52" /></label></div><div class="col-xs-4 " align="right"><%= r4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element53" /></label></div><div class="col-xs-4 " align="right"><%= r5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r5_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">R6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element54" /></label></div><div class="col-xs-4 " align="right"><%= r6 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= r6_color %>_mini.png"></div></div>
</div>
<br>
<h5><label class="label label-primary"><fmt:message key="empresa_resultados.element55" /></label></h5>
<div class="table-responsive">
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element56" /></label></div><div class="col-xs-4 " align="right"><%= pv1 %>&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv1_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element57" /></label></div><div class="col-xs-4 " align="right"><%= pv2 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv2_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element58" /></label></div><div class="col-xs-4 " align="right"><%= pv3 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv3_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element59" /></label></div><div class="col-xs-4 " align="right"><%= pv4 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv4_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element60" /></label></div><div class="col-xs-4 " align="right"><%= pv5 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv5_color %>_mini.png"></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">PV6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input"><fmt:message key="empresa_resultados.element61" /></label></div><div class="col-xs-4 " align="right"><%= pv6 %>%&nbsp;&nbsp;&nbsp;<img src="/indica/assets/images/<%= pv6_color %>_mini.png"></div></div>
</div>
</div>
</div>
	
<script>


	function draw_type1 (x)
	{
		var meter_type1 = new RGraph.Meter('cvs_show',0,100,x);
		meter_type1.Set('chart.border', false);
		meter_type1.Set('chart.tickmarks.small.num', 20);
		meter_type1.Set('chart.tickmarks.big.num', 0);
		meter_type1.Set('chart.segment.radius.start', 140);
		meter_type1.Set('chart.text.size', 16);
		meter_type1.Set('chart.colors.ranges', [
					      [0,25,'Gradient(red:#fcc:red)'],
					      [25,35,'Gradient(yellow:#ffc:yellow)'],
					      [35,65,'Gradient(#0c0:#cfc:#0c0)'],
					      [65,75,'Gradient(yellow:#ffc:yellow)'],
					      [75,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_type1.Set('chart.needle.radius', 110);
		meter_type1.Set('chart.gutter.bottom', 35);
		meter_type1.Set('chart.gutter.top', 70);

		
		meter_type1.Draw();
	}
	chart = 1;
	
        /**
        * The swap function
        */
        function swap_ge (x)
        {

		RGraph.Reset(document.getElementById("cvs_ge"));

		if (x == 1) {
		    draw_ge1();
		} else if (x == 2){
		    draw_ge2();
		} else if (x == 3){
		    draw_ge3();
		} else if (x == 4){
		    draw_ge4();
		} else if (x == 5){
		    draw_ge5();
		} else if (x == 6){
		    draw_ge6();
		} else if (x == 7){
		    draw_ge7();
		} else if (x == 8){
		    draw_ge8();
		}
        }        
        
        
        function swap (x)
        {

		RGraph.Reset(document.getElementById("cvs_cp"));

		if (x == 1) {
		    draw_cp1();
		    chart = 1;
		} else if (x == 2){
		    draw_cp2();
		} else if (x == 3){
		    draw_cp3();
		} else if (x == 4){
		    draw_cp4();
		} else if (x == 5){
		    draw_cp5();
		} else if (x == 6){
		    draw_cp6();
		} else if (x == 7){
		    draw_cp7();
		} else if (x == 8){
		    draw_cp8();
		} else if (x == 9){
		    draw_cp9();
		} else if (x == 10){
		    draw_cp10();
		}
        }	


        function swap_rs (x)
        {

		RGraph.Reset(document.getElementById("cvs_rs"));

		if (x == 1) {
		    draw_rs1();
		} else if (x == 2){
		    draw_rs2();
		} else if (x == 3){
		    draw_rs3();
		} else if (x == 4){
		    draw_rs4();
		} else if (x == 5){
		    draw_rs5();
		}
        }
	/**
	* CP Charts Functions
	*/
	function draw_cp1 ()
	{
		var meter_cp1 = new RGraph.Meter('cvs_cp', 0,100,<%= cp1  %>);
		meter_cp1.Set('chart.border', false);
		meter_cp1.Set('chart.tickmarks.small.num', 20);
		meter_cp1.Set('chart.tickmarks.big.num', 0);
		meter_cp1.Set('chart.segment.radius.start', 140);
		meter_cp1.Set('chart.text.size', 16);
		meter_cp1.Set('chart.colors.ranges', [
					      [0,25,'Gradient(red:#fcc:red)'],
					      [25,35,'Gradient(yellow:#ffc:yellow)'],
					      [35,65,'Gradient(#0c0:#cfc:#0c0)'],
					      [65,75,'Gradient(yellow:#ffc:yellow)'],
					      [75,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_cp1.Set('chart.needle.radius', 110);
		meter_cp1.Set('chart.gutter.bottom', 35);
		meter_cp1.Set('chart.gutter.top', 70);

		meter_cp1.Set('chart.title', 'CP1 = <%= cp1 %>%');
		meter_cp1.Set('chart.title.size', 14);
		
		meter_cp1.Draw();
	}
	
	function draw_cp2 ()
	{
		var meter_cp2 = new RGraph.Meter('cvs_cp', 0,10,<%= cp2  %>);
		meter_cp2.Set('chart.border', false);
		meter_cp2.Set('chart.tickmarks.small.num', 20);
		meter_cp2.Set('chart.tickmarks.big.num', 0);
		meter_cp2.Set('chart.segment.radius.start', 140);
		meter_cp2.Set('chart.text.size', 16);
		meter_cp2.Set('chart.colors.ranges', [
						  [0,4,'Gradient(red:#fcc:red)'],
						  [4,8,'Gradient(yellow:#ffc:yellow)'],
						  [8,10,'Gradient(#0c0:#cfc:#0c0)']
						 ]);
		meter_cp2.Set('chart.needle.radius', 110);
		meter_cp2.Set('chart.gutter.bottom', 35);
		meter_cp2.Set('chart.gutter.top', 70);
		meter_cp2.Set('chart.title', 'CP2 = <%= cp2 %>');
		meter_cp2.Set('chart.title.size', 14);
		
		
		meter_cp2.Draw();
	}
	
	function draw_cp3 ()
	{
		var meter_cp3 = new RGraph.Meter('cvs_cp', 0,10,<%= cp3  %>);
		meter_cp3.Set('chart.border', false);
		meter_cp3.Set('chart.tickmarks.small.num', 20);
		meter_cp3.Set('chart.tickmarks.big.num', 0);
		meter_cp3.Set('chart.segment.radius.start', 140);
		meter_cp3.Set('chart.text.size', 16);
		meter_cp3.Set('chart.colors.ranges', [
						  [0,4,'Gradient(red:#fcc:red)'],
						  [4,8,'Gradient(yellow:#ffc:yellow)'],
						  [8,10,'Gradient(#0c0:#cfc:#0c0)']
						 ]);
		meter_cp3.Set('chart.needle.radius', 110);
		meter_cp3.Set('chart.gutter.bottom', 35);
		meter_cp3.Set('chart.gutter.top', 70);
		meter_cp3.Set('chart.title', 'CP3 = <%= cp3 %>');
		meter_cp3.Set('chart.title.size', 14);
		
		
		meter_cp3.Draw();
	}	
	
	function draw_cp4 ()
	{
		var meter_cp4 = new RGraph.Meter('cvs_cp',-100,100,<%= cp4  %>);
		meter_cp4.Set('chart.border', false);
		meter_cp4.Set('chart.tickmarks.small.num', 20);
		meter_cp4.Set('chart.tickmarks.big.num', 0);
		meter_cp4.Set('chart.segment.radius.start', 140);
		meter_cp4.Set('chart.text.size', 16);
		meter_cp4.Set('chart.colors.ranges', [
						      [-100,-40,'Gradient(red:#fcc:red)'],
						      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
						      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
						      [20,40,'Gradient(yellow:#ffc:yellow)'],
						      [40,100,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp4.Set('chart.needle.radius', 110);
		meter_cp4.Set('chart.gutter.bottom', 35);
		meter_cp4.Set('chart.gutter.top', 70);
		meter_cp4.Set('chart.title', 'CP4 = <%= cp4 %>%');
		meter_cp4.Set('chart.title.size', 14);
		
		
		meter_cp4.Draw();
	}	

	function draw_cp5 ()
	{
		var meter_cp5 = new RGraph.Meter('cvs_cp',-100,100,<%= cp5  %>);
		meter_cp5.Set('chart.border', false);
		meter_cp5.Set('chart.tickmarks.small.num', 20);
		meter_cp5.Set('chart.tickmarks.big.num', 0);
		meter_cp5.Set('chart.segment.radius.start', 140);
		meter_cp5.Set('chart.text.size', 16);
		meter_cp5.Set('chart.colors.ranges', [
						      [-100,-40,'Gradient(red:#fcc:red)'],
						      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
						      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
						      [20,40,'Gradient(yellow:#ffc:yellow)'],
						      [40,100,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp5.Set('chart.needle.radius', 110);
		meter_cp5.Set('chart.gutter.bottom', 35);
		meter_cp5.Set('chart.gutter.top', 70);
		meter_cp5.Set('chart.title', 'CP5 = <%= cp5 %>%');
		meter_cp5.Set('chart.title.size', 14);
		
		
		meter_cp5.Draw();
	}
	
	function draw_cp6 ()
	{
		var meter_cp6 = new RGraph.Meter('cvs_cp',0,10,<%= cp6  %>);
		meter_cp6.Set('chart.border', false);
		meter_cp6.Set('chart.tickmarks.small.num', 20);
		meter_cp6.Set('chart.tickmarks.big.num', 0);
		meter_cp6.Set('chart.segment.radius.start', 140);
		meter_cp6.Set('chart.text.size', 16);
		meter_cp6.Set('chart.colors.ranges', [
						      [0,0.5,'Gradient(red:#fcc:red)'],
						      [0.5,0.67,'Gradient(yellow:#ffc:yellow)'],
						      [0.67,1.5,'Gradient(#0c0:#cfc:#0c0)'],
						      [1.50,2,'Gradient(yellow:#ffc:yellow)'],
						      [2,10,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp6.Set('chart.needle.radius', 110);
		meter_cp6.Set('chart.gutter.bottom', 35);
		meter_cp6.Set('chart.gutter.top', 70);
		meter_cp6.Set('chart.title', 'CP6 = <%= cp6 %>');
		meter_cp6.Set('chart.title.size', 14);
		
		
		meter_cp6.Draw();
	}	
	
	function draw_cp7 ()
	{
		var meter_cp7 = new RGraph.Meter('cvs_cp',0,10,<%= cp7  %>);
		meter_cp7.Set('chart.border', false);
		meter_cp7.Set('chart.tickmarks.small.num', 20);
		meter_cp7.Set('chart.tickmarks.big.num', 0);
		meter_cp7.Set('chart.segment.radius.start', 140);
		meter_cp7.Set('chart.text.size', 16);
		meter_cp7.Set('chart.colors.ranges', [
						      [0,0.5,'Gradient(red:#fcc:red)'],
						      [0.5,0.67,'Gradient(yellow:#ffc:yellow)'],
						      [0.67,1.5,'Gradient(#0c0:#cfc:#0c0)'],
						      [1.50,2,'Gradient(yellow:#ffc:yellow)'],
						      [2,10,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp7.Set('chart.needle.radius', 110);
		meter_cp7.Set('chart.gutter.bottom', 35);
		meter_cp7.Set('chart.gutter.top', 70);
		meter_cp7.Set('chart.title', 'CP7 = <%= cp7 %>');
		meter_cp7.Set('chart.title.size', 14);
		
		
		meter_cp7.Draw();
	}	
	
	function draw_cp8 ()
	{
		var meter_cp8 = new RGraph.Meter('cvs_cp',-100,100,<%= cp8  %>);
		meter_cp8.Set('chart.border', false);
		meter_cp8.Set('chart.tickmarks.small.num', 20);
		meter_cp8.Set('chart.tickmarks.big.num', 0);
		meter_cp8.Set('chart.segment.radius.start', 140);
		meter_cp8.Set('chart.text.size', 16);
		meter_cp8.Set('chart.colors.ranges', [
						      [-100,-40,'Gradient(red:#fcc:red)'],
						      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
						      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
						      [20,40,'Gradient(yellow:#ffc:yellow)'],
						      [40,100,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp8.Set('chart.needle.radius', 110);
		meter_cp8.Set('chart.gutter.bottom', 35);
		meter_cp8.Set('chart.gutter.top', 70);
		meter_cp8.Set('chart.title', 'CP8 = <%= cp8 %>%');
		meter_cp8.Set('chart.title.size', 14);
		
		
		meter_cp8.Draw();
	}	
	
	function draw_cp9 ()
	{
		var meter_cp9 = new RGraph.Meter('cvs_cp',0,10,<%= cp9  %>);
		meter_cp9.Set('chart.border', false);
		meter_cp9.Set('chart.tickmarks.small.num', 20);
		meter_cp9.Set('chart.tickmarks.big.num', 0);
		meter_cp9.Set('chart.segment.radius.start', 140);
		meter_cp9.Set('chart.text.size', 16);
		meter_cp9.Set('chart.colors.ranges', [
						      [0,0.5,'Gradient(red:#fcc:red)'],
						      [0.5,0.67,'Gradient(yellow:#ffc:yellow)'],
						      [0.67,1.5,'Gradient(#0c0:#cfc:#0c0)'],
						      [1.50,2,'Gradient(yellow:#ffc:yellow)'],
						      [2,10,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp9.Set('chart.needle.radius', 110);
		meter_cp9.Set('chart.gutter.bottom', 35);
		meter_cp9.Set('chart.gutter.top', 70);
		meter_cp9.Set('chart.title', 'CP9 = <%= cp9 %>');
		meter_cp9.Set('chart.title.size', 14);
		
		
		meter_cp9.Draw();
	}	
	
	function draw_cp10 ()
	{
		var meter_cp10 = new RGraph.Meter('cvs_cp',-100,100,<%= cp10  %>);
		meter_cp10.Set('chart.border', false);
		meter_cp10.Set('chart.tickmarks.small.num', 20);
		meter_cp10.Set('chart.tickmarks.big.num', 0);
		meter_cp10.Set('chart.segment.radius.start', 140);
		meter_cp10.Set('chart.text.size', 16);
		meter_cp10.Set('chart.colors.ranges', [
						      [-100,-40,'Gradient(red:#fcc:red)'],
						      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
						      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
						      [20,40,'Gradient(yellow:#ffc:yellow)'],
						      [40,100,'Gradient(red:#fcc:red)']
						 ]);
		meter_cp10.Set('chart.needle.radius', 110);
		meter_cp10.Set('chart.gutter.bottom', 35);
		meter_cp10.Set('chart.gutter.top', 70);
		meter_cp10.Set('chart.title', 'CP10 = <%= cp10 %>%');
		meter_cp10.Set('chart.title.size', 14);
		
		
		meter_cp10.Draw();
	}
	
	
	/**
	* RS Charts Functions
	*/
	function draw_rs1 ()
	{
		var meter_rs1 = new RGraph.Meter('cvs_rs', 0,100,<%= rs1  %>);
		meter_rs1.Set('chart.border', false);
		meter_rs1.Set('chart.tickmarks.small.num', 20);
		meter_rs1.Set('chart.tickmarks.big.num', 0);
		meter_rs1.Set('chart.segment.radius.start', 140);
		meter_rs1.Set('chart.text.size', 16);
		meter_rs1.Set('chart.colors.ranges', [
					      [0,25,'Gradient(red:#fcc:red)'],
					      [25,35,'Gradient(yellow:#ffc:yellow)'],
					      [35,65,'Gradient(#0c0:#cfc:#0c0)'],
					      [65,75,'Gradient(yellow:#ffc:yellow)'],
					      [75,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_rs1.Set('chart.needle.radius', 110);
		meter_rs1.Set('chart.gutter.bottom', 35);
		meter_rs1.Set('chart.gutter.top', 70);

		meter_rs1.Set('chart.title', 'RS1 = <%= rs1 %>%');
		meter_rs1.Set('chart.title.size', 14);
		
		meter_rs1.Draw();
	}	
	
	function draw_rs2 ()
	{
		var meter_rs2 = new RGraph.Meter('cvs_rs',0,10,<%= rs2  %>);
		meter_rs2.Set('chart.border', false);
		meter_rs2.Set('chart.tickmarks.small.num', 20);
		meter_rs2.Set('chart.tickmarks.big.num', 0);
		meter_rs2.Set('chart.segment.radius.start', 140);
		meter_rs2.Set('chart.text.size', 16);
		meter_rs2.Set('chart.colors.ranges', [
						      [0,0.5,'Gradient(red:#fcc:red)'],
						      [0.5,0.67,'Gradient(yellow:#ffc:yellow)'],
						      [0.67,1.5,'Gradient(#0c0:#cfc:#0c0)'],
						      [1.50,2,'Gradient(yellow:#ffc:yellow)'],
						      [2,10,'Gradient(red:#fcc:red)']
						 ]);
		meter_rs2.Set('chart.needle.radius', 110);
		meter_rs2.Set('chart.gutter.bottom', 25);
		meter_rs2.Set('chart.gutter.top', 80);
		meter_rs2.Set('chart.title', 'RS2 = <%= rs2 %>');
		meter_rs2.Set('chart.title.size', 14);
		
		
		meter_rs2.Draw();
	}
	
	function draw_rs3 ()
	{
		var meter_rs3 = new RGraph.Meter('cvs_rs', 0,100,<%= rs3 %>);
		meter_rs3.Set('chart.border', false);
		meter_rs3.Set('chart.tickmarks.small.num', 20);
		meter_rs3.Set('chart.tickmarks.big.num', 0);
		meter_rs3.Set('chart.segment.radius.start', 140);
		meter_rs3.Set('chart.text.size', 16);
		meter_rs3.Set('chart.colors.ranges', [
					      [0,30,'Gradient(red:#fcc:red)'],
					      [30,65,'Gradient(yellow:#ffc:yellow)'],
					      [65,100,'Gradient(#0c0:#cfc:#0c0)']
					     ]);
		meter_rs3.Set('chart.needle.radius', 110);
		meter_rs3.Set('chart.gutter.bottom', 35);
		meter_rs3.Set('chart.gutter.top', 70);
		meter_rs3.Set('chart.title', 'RS3 = <%= rs3 %>%');
		meter_rs3.Set('chart.title.size', 14);			
		meter_rs3.Draw();
	}
	
	
	function draw_rs4 ()
	{
		var meter_rs4 = new RGraph.Meter('cvs_rs', 0,100,<%= rs4 %>);
		meter_rs4.Set('chart.border', false);
		meter_rs4.Set('chart.tickmarks.small.num', 20);
		meter_rs4.Set('chart.tickmarks.big.num', 0);
		meter_rs4.Set('chart.segment.radius.start', 140);
		meter_rs4.Set('chart.text.size', 16);
		meter_rs4.Set('chart.colors.ranges', [
					      [0,50,'Gradient(red:#fcc:red)'],
					      [50,65,'Gradient(yellow:#ffc:yellow)'],
					      [65,100,'Gradient(#0c0:#cfc:#0c0)']
					     ]);
		meter_rs4.Set('chart.needle.radius', 110);
		meter_rs4.Set('chart.gutter.bottom', 35);
		meter_rs4.Set('chart.gutter.top', 70);
		meter_rs4.Set('chart.title', 'RS4 = <%= rs4 %>%');
		meter_rs4.Set('chart.title.size', 14);			
		meter_rs4.Draw();
	}	
	
	
	function draw_rs5 ()
	{
		var meter_rs5 = new RGraph.Meter('cvs_rs',-100,100,<%= rs5  %>);
		meter_rs5.Set('chart.border', false);
		meter_rs5.Set('chart.tickmarks.small.num', 20);
		meter_rs5.Set('chart.tickmarks.big.num', 0);
		meter_rs5.Set('chart.segment.radius.start', 140);
		meter_rs5.Set('chart.text.size', 16);
		meter_rs5.Set('chart.colors.ranges', [
						      [-100,-40,'Gradient(red:#fcc:red)'],
						      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
						      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
						      [20,40,'Gradient(yellow:#ffc:yellow)'],
						      [40,100,'Gradient(red:#fcc:red)']
						 ]);
		meter_rs5.Set('chart.needle.radius', 110);
		meter_rs5.Set('chart.gutter.bottom', 35);
		meter_rs5.Set('chart.gutter.top', 70);
		meter_rs5.Set('chart.title', 'RS5 = <%= rs5 %>%');
		meter_rs5.Set('chart.title.size', 14);
		
		
		meter_rs5.Draw();
	}
	
	function draw_ge1 ()
	{
		var meter = new RGraph.Meter('cvs_ge', 0,10,<%= ge1  %>);
		meter.Set('chart.border', false);
		meter.Set('chart.tickmarks.small.num', 0);
		meter.Set('chart.tickmarks.big.num', 0);
		meter.Set('chart.segment.radius.start', 140);
		meter.Set('chart.text.size', 16);
		meter.Set('chart.colors.ranges', [
					      [0,2.5,'Gradient(#0c0:#cfc:#0c0)'],
					      [2.5,7.5,'Gradient(yellow:#ffc:yellow)'],
					      [7.5,10,'Gradient(red:#fcc:red)']
					     ]);
		meter.Set('chart.needle.radius', 110);
		meter.Set('chart.gutter.bottom', 35);
		meter.Set('chart.gutter.top', 70);
		meter.Set('chart.title', 'GE1 = <%= ge1 %>%');
		meter.Set('chart.title.size', 14);
		meter.Draw();
	}
	
	function draw_ge2 ()
	{
		var meter_ge2 = new RGraph.Meter('cvs_ge', 0,10,<%= ge2  %>);
		meter_ge2.Set('chart.border', false);
		meter_ge2.Set('chart.tickmarks.small.num', 0);
		meter_ge2.Set('chart.tickmarks.big.num', 0);
		meter_ge2.Set('chart.segment.radius.start', 140);
		meter_ge2.Set('chart.text.size', 16);
		meter_ge2.Set('chart.colors.ranges', [
					      [0,2.5,'Gradient(#0c0:#cfc:#0c0)'],
					      [2.5,7.5,'Gradient(yellow:#ffc:yellow)'],
					      [7.5,10,'Gradient(red:#fcc:red)']
					     ]);
		meter_ge2.Set('chart.needle.radius', 110);
		meter_ge2.Set('chart.gutter.bottom', 35);
		meter_ge2.Set('chart.gutter.top', 70);
		meter_ge2.Set('chart.title', 'GE2 = <%= ge2 %>%');
		meter_ge2.Set('chart.title.size', 14);
		meter_ge2.Draw();
	}

	function draw_ge3 ()
	{
		var meter_ge3 = new RGraph.Meter('cvs_ge', 0,10,<%= ge3  %>);
		meter_ge3.Set('chart.border', false);
		meter_ge3.Set('chart.tickmarks.small.num', 20);
		meter_ge3.Set('chart.tickmarks.big.num', 0);
		meter_ge3.Set('chart.segment.radius.start', 140);
		meter_ge3.Set('chart.text.size', 16);
		meter_ge3.Set('chart.colors.ranges', [
					      [0,0.5,'Gradient(red:#fcc:red)'],
					      [0.5,0.67,'Gradient(yellow:#ffc:yellow)'],
					      [0.67,1.5,'Gradient(#0c0:#cfc:#0c0)'],
					      [1.50,2,'Gradient(yellow:#ffc:yellow)'],
					      [2,10,'Gradient(red:#fcc:red)']
					     ]);
		meter_ge3.Set('chart.needle.radius', 110);
		meter_ge3.Set('chart.gutter.bottom', 35);
		meter_ge3.Set('chart.gutter.top', 70);
		meter_ge3.Set('chart.title', 'GE3 = <%= ge3 %>%');
		meter_ge3.Set('chart.title.size', 14);
		meter_ge3.Draw();
	}

	function draw_ge4 ()
	{
		var meter_ge4 = new RGraph.Meter('cvs_ge', 0,100,<%= ge4 %>);
		meter_ge4.Set('chart.border', false);
		meter_ge4.Set('chart.tickmarks.small.num', 0);
		meter_ge4.Set('chart.tickmarks.big.num', 0);
		meter_ge4.Set('chart.segment.radius.start', 140);
		meter_ge4.Set('chart.text.size', 16);
		meter_ge4.Set('chart.colors.ranges', [
					      [0,30,'Gradient(#0c0:#cfc:#0c0)'],
					      [30,65,'Gradient(yellow:#ffc:yellow)'],
					      [65,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_ge4.Set('chart.needle.radius', 110);
		meter_ge4.Set('chart.gutter.bottom', 35);
		meter_ge4.Set('chart.gutter.top', 70);
		meter_ge4.Set('chart.title', 'GE4 = <%= ge4 %>%');
		meter_ge4.Set('chart.title.size', 14);
		meter_ge4.Draw();	
	}

	function draw_ge5 ()
	{
		var meter_ge5 = new RGraph.Meter('cvs_ge', 0,100,<%= ge5 %>);
		meter_ge5.Set('chart.border', false);
		meter_ge5.Set('chart.tickmarks.small.num', 20);
		meter_ge5.Set('chart.tickmarks.big.num', 0);
		meter_ge5.Set('chart.segment.radius.start', 140);
		meter_ge5.Set('chart.text.size', 16);
		meter_ge5.Set('chart.colors.ranges', [
					      [0,50,'Gradient(red:#fcc:red)'],
					      [50,65,'Gradient(yellow:#ffc:yellow)'],
					      [65,100,'Gradient(#0c0:#cfc:#0c0)']
					     ]);
		meter_ge5.Set('chart.needle.radius', 110);
		meter_ge5.Set('chart.gutter.bottom', 35);
		meter_ge5.Set('chart.gutter.top', 70);
		meter_ge5.Set('chart.title', 'GE5 = <%= ge5 %>%');
		meter_ge5.Set('chart.title.size', 14);
		meter_ge5.Draw();
	}
	
	function draw_ge6 ()
	{
		var meter_ge6 = new RGraph.Meter('cvs_ge',-100,100,<%= ge6 %>);
		meter_ge6.Set('chart.border', false);
		meter_ge6.Set('chart.tickmarks.small.num', 0);
		meter_ge6.Set('chart.tickmarks.big.num', 0);
		meter_ge6.Set('chart.segment.radius.start', 140);
		meter_ge6.Set('chart.text.size', 16);
		meter_ge6.Set('chart.colors.ranges', [
					      [-100,-40,'Gradient(red:#fcc:red)'],
					      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
					      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
					      [20,40,'Gradient(yellow:#ffc:yellow)'],
					      [40,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_ge6.Set('chart.needle.radius', 110);
		meter_ge6.Set('chart.gutter.bottom', 35);
		meter_ge6.Set('chart.gutter.top', 70);
		meter_ge6.Set('chart.title', 'GE6 = <%= ge6 %>%');
		meter_ge6.Set('chart.title.size', 14);
		meter_ge6.Draw();
	}
	
	function draw_ge7 ()
	{	
		var meter_ge7 = new RGraph.Meter('cvs_ge',-100,100,<%= ge7 %>);
		meter_ge7.Set('chart.border', false);
		meter_ge7.Set('chart.tickmarks.small.num', 0);
		meter_ge7.Set('chart.tickmarks.big.num', 0);
		meter_ge7.Set('chart.segment.radius.start', 140);
		meter_ge7.Set('chart.text.size', 16);
		meter_ge7.Set('chart.colors.ranges', [
					      [-100,-40,'Gradient(red:#fcc:red)'],
					      [-40,-20,'Gradient(yellow:#ffc:yellow)'],
					      [-20,20,'Gradient(#0c0:#cfc:#0c0)'],
					      [20,40,'Gradient(yellow:#ffc:yellow)'],
					      [40,100,'Gradient(red:#fcc:red)']
					     ]);
		meter_ge7.Set('chart.needle.radius', 110);
		meter_ge7.Set('chart.gutter.bottom', 35);
		meter_ge7.Set('chart.gutter.top', 70);
		meter_ge7.Set('chart.title', 'GE7 = <%= ge7 %>%');
		meter_ge7.Set('chart.title.size', 14);
		meter_ge7.Draw();
	}
	
	function draw_ge8 ()
	{	
		var meter_ge8 = new RGraph.Meter('cvs_ge', 0,100,<%= ge8 %>);
		meter_ge8.Set('chart.border', false);
		meter_ge8.Set('chart.tickmarks.small.num', 20);
		meter_ge8.Set('chart.tickmarks.big.num', 0);
		meter_ge8.Set('chart.segment.radius.start', 140);
		meter_ge8.Set('chart.text.size', 16);
		meter_ge8.Set('chart.colors.ranges', [
					      [0,50,'Gradient(red:#fcc:red)'],
					      [50,65,'Gradient(yellow:#ffc:yellow)'],
					      [65,100,'Gradient(#0c0:#cfc:#0c0)']
					     ]);
		meter_ge8.Set('chart.needle.radius', 110);
		meter_ge8.Set('chart.gutter.bottom', 35);
		meter_ge8.Set('chart.gutter.top', 70);
		meter_ge8.Set('chart.title', 'GE8 = <%= ge8 %>%');
		meter_ge8.Set('chart.title.size', 14);
		meter_ge8.Draw();			
	}
	
	CreateCharts = function (e)
		{			
			var hbar = new RGraph.HBar('cvs', [<%= mEncuestas_pct_complete %>]);
			hbar.Set('chart.labels', ['% Comp']);

			hbar.Set('chart.background.grid', true);
			hbar.Set('chart.xmax', '100');
			hbar.Set('chart.units.post', '%');
			hbar.Set('chart.title', '<%= mEncuestas_complete_month %>');
			hbar.Set('chart.colors',['#0c0', 'rgb(0,0,255)', '#0f0', '#00f', '#ff0', '#0ff']);
			// hbar.Set('chart.labels.above', true);
			// hbar.Set('chart.events.click', myClick);

			/*
			if (!RGraph.isOld()) {
			 hbar.Set('chart.tooltips', ['Encuestas completadas']);
			 hbar.Set('chart.tooltips.event', 'onmousemove');
			}
			*/
			
			// RGraph.isOld() ? hbar.Draw() : RGraph.Effects.HBar.Grow(hbar);
			hbar.Draw();

			var pie1 = new RGraph.Pie('cvs1', [<%= mEncuestas_complete %>,<%= mEncuestas_not_complete %>]);
			// pie1.Set('chart.tooltips', ['Sí','No']);
			pie1.Set('chart.labels', ['Sí','No']);
			pie1.Set('chart.title','Total <%= mEncuestas_total %> Encuestas\n # Completadas');
			pie1.Set('chart.units.pre', '');
			pie1.Set('chart.units.post', '');
			pie1.Set('chart.labels.above', true);
			pie1.Set('chart.labels.sticks', true);
			pie1.Set('chart.labels.sticks.length', 5);
			pie1.Set('chart.gutter.top', 50);

			/*
			if (!RGraph.isOld()) {
			pie1.Set('chart.shadow', true);
			pie1.Set('chart.shadow.offsetx', 0);
			pie1.Set('chart.shadow.offsety', 0);
			pie1.Set('chart.shadow.blur', 10);
			pie1.Set('chart.tooltips', ['Sí','No']);
			pie1.Set('chart.tooltips.event', 'onmousemove');
			}			    
			*/
			
			var data1 = [<%= mEncuestas_complete %>,<%= mEncuestas_not_complete %>];
			for (var i=0; i<data1.length; ++i) {
			pie1.Get('chart.labels')[i] = pie1.Get('chart.labels')[i] + ' - ' + data1[i] + '';
			}			    

			pie1.Draw();

			
			/**
			* GE Charts
			*/
			draw_ge1();
        
			/**
			* CP Charts
			*/
			draw_cp1();
	
			/**
			* RS Charts
			*/
			draw_rs1();	
		}

		// if(!RGraph.isOld()) {
		//    CreateCharts();
		// }else {
		    window.onload = CreateCharts;
		// }			

	</script>

</section>
</body>
</html>


<%
	}
%>