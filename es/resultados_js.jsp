<script> 

	var data = <%= mDataGE1 %>;
	var key = <%= mKeyGE1 %>;
	var tooltips = <%= mTooltipsGE1 %>;

	function draw_ge1()
	{
	
		var bar2 = new RGraph.Bar('cvs_ge1', [[2.5,5,2.5]]);
		bar2.Set('grouping', 'stacked');
		bar2.Set('labels.above', false);

		// bar2.Set('linewidth', 2);
		bar2.Set('hmargin',300);
		bar2.Set('strokestyle', 'white');
		bar2.Set('colors', ['red','yellow','green']);
		bar2.Set('shadow', false);
		bar2.Set('gutter.left', 150);
		bar2.Set('noyaxis', true);
		bar2.Set('noxaxis', true);
		bar2.Set('chart.background.grid', false);
		bar2.Set('chart.noaxes', true);
		bar2.Set('chart.ylabels', false);
		bar2.Set('chart.xlabels', false);
		bar2.Set('chart.ylabels.inside', false)
		bar2.Set('key', ['negativo','intermedio','óptimo']);
		bar2.Set('chart.key.position.y', 100);
		bar2.Set('chart.key.position.x', 0);
		bar2.Draw();
	
		var line = new RGraph.Line('cvs_ge1', data);
            	line.Set('title', 'GE1');
            	line.Set('background.grid.autofit.numhlines', 20);

            	line.Set('key', key);
            	line.Set('gutter.right', 150);
            	line.Set('gutter.left', 150);
            	line.Set('scale.decimals', 2);
            	line.Set('tickmarks', myTick);
            	line.Set('tooltips', tooltips);
		line.Set('chart.xlabels', true);
		// line.Set('chart.xscale', true);
		line.Set('numyticks', 20);
		line.Set('chart.ymax',10);
		// line.Set('chart.xmax',10);
		line.Set('key.position', 'graph');
		line.Set('key.position.gutter.boxed', true);
		line.Set('key.position.x',700);
		line.Set('key.position.y',75);
		line.Set('key.interactive', true);		
            	line.Draw();	
	
		function myTick (obj, data, value, index, x, y, color, prevX, prevY)
		{
			var ctx = obj.canvas.getContext("2d");
			ctx.fillStyle = "white";

			// if(index == 3 || index == 4 || (index >= 13 && index<= 16) || index == 20){
			//     	ctx.fillStyle = "#4C2288";
			// }

			// Draw your custom tick here
			ctx.beginPath();
			ctx.arc(x, y, 3, 0, Math.PI*2, true);
			ctx.closePath();
			ctx.stroke();
			ctx.fill();
		}    
			
	
	}
	
	function draw_ge2()
	{
	
		var bar2 = new RGraph.Bar('cvs_ge2', [[2.5,5,2.5]]);
		bar2.Set('grouping', 'stacked');
		bar2.Set('labels.above', false);
		bar2.Set('hmargin',300);
		bar2.Set('strokestyle', 'white');
		bar2.Set('colors', ['red','yellow','green']);
		bar2.Set('shadow', false);
		bar2.Set('gutter.left', 150);
		bar2.Set('noyaxis', true);
		bar2.Set('noxaxis', true);
		bar2.Set('chart.background.grid', false);
		bar2.Set('chart.noaxes', true);
		bar2.Set('chart.ylabels', false);
		bar2.Set('chart.xlabels', false);
		bar2.Set('chart.ylabels.inside', false)
		bar2.Set('key', ['negativo','intermedio','óptimo']);
		bar2.Set('chart.key.position.y', 100);
		bar2.Set('chart.key.position.x', 0);
		bar2.Draw();
	
		var line = new RGraph.Line('cvs_ge2', <%= mDataGE2 %>);
            	line.Set('title', 'GE2');
            	line.Set('background.grid.autofit.numhlines', 20);
            	line.Set('key', <%= mKeyGE2 %>);
            	line.Set('gutter.right', 150);
            	line.Set('gutter.left', 150);
            	line.Set('scale.decimals', 2);
            	line.Set('tickmarks', myTick);
            	line.Set('tooltips', <%= mTooltipsGE2 %>);
		line.Set('chart.xlabels', true);
		line.Set('numyticks', 20);
		line.Set('chart.ymax',10);
		line.Set('key.position', 'graph');
		line.Set('key.position.gutter.boxed', true);
		line.Set('key.position.x',700);
		line.Set('key.position.y',75);
		line.Set('key.interactive', true);		
            	line.Draw();	

            	

	CreateCharts = function (e) { 
	
		draw_ge1();
		draw_ge2();
		// draw_ge3();
	}

	window.onload = CreateCharts;

</script>