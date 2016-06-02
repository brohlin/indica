<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="org.undp.log.*" %>

<%	
	
	String mEncuestas_complete = "";
	String mEncuestas_not_complete = "";
	String mEncuestas_total = "";
	String mEncuestas_pct_complete = "";
	String mEncuestas_complete_month = "";
	String mEncuestas_pct_not_complete = "";
	
	DynStringArray parameters1 = new DynStringArray();
	parameters1.add(session.getAttribute("temp_user_organization_id").toString());
	DbResults db1 = Database.callProcResults("p_get_encuesta_resultados", parameters1);
		
	int size1=0;
	
	while(size1<db1.getRowCount())
	{
		mEncuestas_complete = db1.getRow(size1).get(0);
		mEncuestas_total = db1.getRow(size1).get(1);
		mEncuestas_pct_complete = db1.getRow(size1).get(2);
		mEncuestas_complete_month = db1.getRow(size1).get(3);	
		mEncuestas_pct_not_complete = db1.getRow(size1).get(4);
		mEncuestas_not_complete = db1.getRow(size1).get(5);

		size1++;
	}	
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
	<!--[if lt IE 9]><script src="/RGraph/excanvas/excanvas.js"></script><![endif]-->
<body>

	

	<table>
		<tr>
			<td><div style="text-align: center"><canvas id="cvs" width="400" height="200">[No canvas support]</canvas></div></td>
			<td><div style="text-align: center"><canvas id="cvs1" width="400" height="200">[No canvas support]</canvas></div></td>
		</tr>
	</table>


	
<script>

	CreateCharts = function (e)
		{			
			var hbar = new RGraph.HBar('cvs', [<%= mEncuestas_pct_complete %>]);
			hbar.Set('chart.labels', ['Encuestas\n% Comp']);

			hbar.Set('chart.background.grid', true);
			hbar.Set('chart.xmax', '100');
			hbar.Set('chart.units.post', '%');
			hbar.Set('chart.title', '<%= mEncuestas_complete_month %>');
			hbar.Set('chart.labels.above', true);
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
			pie1.Set('chart.title','Total <%= mEncuestas_total %> <fmt:message key="encuesta_resultados.element1" />\n # <fmt:message key="encuesta_resultados.element2" />');
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


		}

		if(!RGraph.isOld()) {
		    CreateCharts();
		}else {
		    window.onload = CreateCharts;
		}			

	</script>
</body>
</html>