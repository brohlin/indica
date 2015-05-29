<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>

<%	
	String pais = "";
	String prev_pais = "";
	String rating = "";
	String prev_rating = "";
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
	
	
	DynStringArray parameters1 = new DynStringArray();
	// parameters1.add("31");
	// DbResults db1 = Database.callProcResults("p_get_results_1country", parameters1);
	DbResults db1 = Database.callProcResults("p_get_results_by_country", parameters1);
	
	String bgColor = "bc-grayb";
	int size1=0;	
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
			<h1 class="text-center text-white">RESULTADOS</h1>
		</div>
		<div class="well-2 bc-purple">
			<h3 class="text-center text-white"><%= pais %></h3>
		</div>
	</header>
<div class="container">

<div class="col-xs-12 col-sm-8 col-md-8 cuadrado">
<!-- h5><label class="label label-primary">Ámbitos generales de empresas u organizaciones (GE)</label></h5 -->
<div class="table-responsive">
	<!-- div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE1</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Tasa de absentismo total en la empresa/organización</label></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE2</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Equilibrio en las tasas de absentismo de mujeres y hombres</label></div><div style="text-align: center"><canvas id="cvs_ge2" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE3</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Equilibrio en las tasas de cese de actividad de la empresa/organización de las mujeres y los hombres (índice de rotación)</label></div><div style="text-align: center"><canvas id="cvs_ge3" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE4</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Uso de comunicación a favor de la igualdad y no discriminación entre mujeres y hombres (comunicación incluyente)</label></div><div style="text-align: center"><canvas id="cvs_ge4" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE5</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Valoración/percepción de la plantilla sobre si la comunicación interna contempla criterios de igualdad y no discriminación por razón de sexo</label></div><div style="text-align: center"><canvas id="cvs_ge5" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE6</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Equilibrio en la Valoración/percepción de la mujeres y hombres sobre si la comunicación interna contempla criterios de igualdad y no discriminación por razón de sexo</label></div><div style="text-align: center"><canvas id="cvs_ge6" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE7</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Equilibrio en la Valoración/percepción de la mujeres y hombres sobre si la comunicación externa contempla criterios de igualdad y no discriminación por razón de sexo</label></div><div style="text-align: center"><canvas id="cvs_ge7" width="400" height="200">[No canvas support]</canvas></div></div>
	<div class="row form-group"><div class="col-xs-1 "><label class="numero-otros-datos">GE8</label></div><div class="col-xs-6 col-sm-7"><label class="titulo-input">Valoración/percepción de la plantilla sobre si la comunicación externa contempla criterios de igualdad y no discriminación por razón de sexo</label></div><div style="text-align: center"><canvas id="cvs_ge8" width="400" height="200">[No canvas support]</canvas></div></div -->
	
	<!-- div class="row form-group">
		<div class="col-xs-1 "><label class="numero-otros-datos">País</label></div>
		<div class="col-xs-1 "><label class="numero-otros-datos"></label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE1</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE2</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE3</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE4</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE5</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE6</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE7</label></div>
		<div class="col-xs-1 " align="right"><label class="numero-otros-datos">GE8</label></div>
	</div -->
	
	<table  cellspacing="40" align="center">
		<tr>
			<th nowrap>País</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap>Valuación</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE1</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE2</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE3</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE4</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE5</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE6</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE7</th>
			<th nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
			<th nowrap align="center">GE8</th>			
		</tr>	
	
<%
	while(size1<db1.getRowCount())
	{		
		pais = db1.getRow(size1).get(0);			
		rating = db1.getRow(size1).get(1);
		ge1 = db1.getRow(size1).get(2);
		ge2 = db1.getRow(size1).get(3);
		ge3 = db1.getRow(size1).get(4);
		ge4 = db1.getRow(size1).get(5);
		ge5 = db1.getRow(size1).get(6);
		ge6 = db1.getRow(size1).get(7);
		ge7 = db1.getRow(size1).get(8);
		ge8 = db1.getRow(size1).get(9);	
		cp1 = db1.getRow(size1).get(10);
		cp2 = db1.getRow(size1).get(11);
		cp3 = db1.getRow(size1).get(12);
		cp4 = db1.getRow(size1).get(13);
		cp5 = db1.getRow(size1).get(14);
		cp6 = db1.getRow(size1).get(15);
		cp7 = db1.getRow(size1).get(16);
		cp8 = db1.getRow(size1).get(17);
		cp9 = db1.getRow(size1).get(18);
		cp10 = db1.getRow(size1).get(19);
		rs1 = db1.getRow(size1).get(20);
		rs2 = db1.getRow(size1).get(21);
		rs3 = db1.getRow(size1).get(22);
		rs4 = db1.getRow(size1).get(23);
		rs5 = db1.getRow(size1).get(24);		
		dp1 = db1.getRow(size1).get(25);
		dp2 = db1.getRow(size1).get(26);
		dp3 = db1.getRow(size1).get(27);
		dp4 = db1.getRow(size1).get(28);
		dp5 = db1.getRow(size1).get(29);
		dp6 = db1.getRow(size1).get(30);
		dp7 = db1.getRow(size1).get(31);
		dp8 = db1.getRow(size1).get(32);
		dp9 = db1.getRow(size1).get(33);
		r1 = db1.getRow(size1).get(34);
		r2 = db1.getRow(size1).get(35);
		r3 = db1.getRow(size1).get(36);
		r4 = db1.getRow(size1).get(37);
		r5 = db1.getRow(size1).get(38);		
		r6 = db1.getRow(size1).get(39);		
		pv1 = db1.getRow(size1).get(40);
		pv2 = db1.getRow(size1).get(41);
		pv3 = db1.getRow(size1).get(42);
		pv4 = db1.getRow(size1).get(43);
		pv5 = db1.getRow(size1).get(44);		
		pv6 = db1.getRow(size1).get(45);
		
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
 		

		
		if (prev_pais.equals(pais)) {
%>
			<tr class="<%= bgColor %>">
<%
		}  else  {
			if (bgColor.equals("bc-grayb")) {
				bgColor = "";
			} else if (bgColor.equals("")) {
			 	bgColor = "bc-grayb";
			}
		
%>
			<tr class="<%= bgColor %>">
<%
		}
%>
	
		
			<td nowrap><%= pais %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap><%= rating %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge1 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge2 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge3 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge4 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge5 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge6 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge7 %></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td nowrap align="right"><%= ge8 %></td>			
			
		</tr>		
<%
		prev_pais = pais;
		size1++;
	}
%>
	</table>	
<!-- /div -->
	<!-- table align="center">
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr>
			<td align="center">
				<div style="width: 450px; height: 450; background-color: white;  text-align: center; font-family: Arial;">
					<canvas id="cvs_ge1" width="400" height="200">[No canvas support]</canvas>
				</div>
			</td>		
		</tr>
	</table -->				
</div>
</div>
	
<script>


	function draw_ge1()
	{
		var ge1 = new RGraph.Pie('cvs_ge1', [<%= ge1 %>]);
		ge1.Set('chart.labels', [<%= rating %>]);
		
		ge1.Set('chart.title','GE1 %');
		ge1.Set('chart.units.pre', '');
		ge1.Set('chart.units.post', '');
		ge1.Set('chart.labels.above', true);
		ge1.Set('chart.labels.sticks', true);
		ge1.Set('chart.labels.sticks.length', 5);
		ge1.Set('chart.gutter.top', 50);
		var data1 = [<%= ge1 %>];
		for (var i=0; i<data1.length; ++i) {
		ge1.Get('chart.labels')[i] = ge1.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
		
		ge1.Draw();
	}
	
	function draw_ge2()
	{
		var ge2 = new RGraph.Pie('cvs_ge2', [<%= ge2 %>]);
		ge2.Set('chart.labels', [<%= rating %>]);
		
		ge2.Set('chart.title','GE2 %');
		ge2.Set('chart.units.pre', '');
		ge2.Set('chart.units.post', '');
		ge2.Set('chart.labels.above', true);
		ge2.Set('chart.labels.sticks', true);
		ge2.Set('chart.labels.sticks.length', 5);
		ge2.Set('chart.gutter.top', 50);
		var data1 = [<%= ge2 %>];
		for (var i=0; i<data1.length; ++i) {
		ge2.Get('chart.labels')[i] = ge2.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}
	
	function draw_ge3()
	{
		var ge3 = new RGraph.Pie('cvs_ge3', [<%= ge3 %>]);
		ge3.Set('chart.labels', [<%= rating %>]);
		
		ge3.Set('chart.title','GE3 %');
		ge3.Set('chart.units.pre', '');
		ge3.Set('chart.units.post', '');
		ge3.Set('chart.labels.above', true);
		ge3.Set('chart.labels.sticks', true);
		ge3.Set('chart.labels.sticks.length', 5);
		ge3.Set('chart.gutter.top', 50);
		var data1 = [<%= ge3 %>];
		for (var i=0; i<data1.length; ++i) {
		ge3.Get('chart.labels')[i] = ge3.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}
	
	function draw_ge4()
	{
		var ge4 = new RGraph.Pie('cvs_ge4', [<%= ge4 %>]);
		ge4.Set('chart.labels', [<%= rating %>]);
		
		ge4.Set('chart.title','GE4 %');
		ge4.Set('chart.units.pre', '');
		ge4.Set('chart.units.post', '');
		ge4.Set('chart.labels.above', true);
		ge4.Set('chart.labels.sticks', true);
		ge4.Set('chart.labels.sticks.length', 5);
		ge4.Set('chart.gutter.top', 50);
		var data1 = [<%= ge4 %>];
		for (var i=0; i<data1.length; ++i) {
		ge4.Get('chart.labels')[i] = ge4.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}	
	
	function draw_ge5()
	{
		var ge5 = new RGraph.Pie('cvs_ge5', [<%= ge5 %>]);
		ge5.Set('chart.labels', [<%= rating %>]);
		
		ge5.Set('chart.title','GE5 %');
		ge5.Set('chart.units.pre', '');
		ge5.Set('chart.units.post', '');
		ge5.Set('chart.labels.above', true);
		ge5.Set('chart.labels.sticks', true);
		ge5.Set('chart.labels.sticks.length', 5);
		ge5.Set('chart.gutter.top', 50);
		var data1 = [<%= ge5 %>];
		for (var i=0; i<data1.length; ++i) {
		ge5.Get('chart.labels')[i] = ge5.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}
	
	function draw_ge6()
	{
		var ge6 = new RGraph.Pie('cvs_ge6', [<%= ge6 %>]);
		ge6.Set('chart.labels', [<%= rating %>]);
		
		ge6.Set('chart.title','GE6 %');
		ge6.Set('chart.units.pre', '');
		ge6.Set('chart.units.post', '');
		ge6.Set('chart.labels.above', true);
		ge6.Set('chart.labels.sticks', true);
		ge6.Set('chart.labels.sticks.length', 5);
		ge6.Set('chart.gutter.top', 50);
		var data1 = [<%= ge6 %>];
		for (var i=0; i<data1.length; ++i) {
		ge6.Get('chart.labels')[i] = ge6.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}
	
	function draw_ge7()
	{
		var ge7 = new RGraph.Pie('cvs_ge7', [<%= ge7 %>]);
		ge7.Set('chart.labels', [<%= rating %>]);
		
		ge7.Set('chart.title','GE7 %');
		ge7.Set('chart.units.pre', '');
		ge7.Set('chart.units.post', '');
		ge7.Set('chart.labels.above', true);
		ge7.Set('chart.labels.sticks', true);
		ge7.Set('chart.labels.sticks.length', 5);
		ge7.Set('chart.gutter.top', 50);
		var data1 = [<%= ge7 %>];
		for (var i=0; i<data1.length; ++i) {
		ge7.Get('chart.labels')[i] = ge7.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}
	
	function draw_ge8()
	{
		var ge8 = new RGraph.Pie('cvs_ge8', [<%= ge8 %>]);
		ge8.Set('chart.labels', [<%= rating %>]);
		
		ge8.Set('chart.title','GE8 %');
		ge8.Set('chart.units.pre', '');
		ge8.Set('chart.units.post', '');
		ge8.Set('chart.labels.above', true);
		ge8.Set('chart.labels.sticks', true);
		ge8.Set('chart.labels.sticks.length', 5);
		ge8.Set('chart.gutter.top', 50);
		var data1 = [<%= ge8 %>];
		for (var i=0; i<data1.length; ++i) {
		ge8.Get('chart.labels')[i] = ge8.Get('chart.labels')[i] + ' - ' + data1[i] + '';
		}
	}	
	
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
        
        	
	CreateCharts = function (e)
		{	
			/*
			draw_ge1();
			draw_ge2();
			draw_ge3();
			draw_ge4();
			draw_ge5();
			draw_ge6();
			draw_ge7();
			draw_ge8();
			*/
		}

		if(!RGraph.isOld()) {
		    CreateCharts();
		}else {
		    window.onload = CreateCharts;
		}			

	</script>

</section>
</body>
</html>