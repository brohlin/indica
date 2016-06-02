		//-------------------------------------------------------
		Highcharts.Renderer.prototype.symbols.line = function(x, y, width, height) {
			return ['M',x ,y + width / 2,'L',x+height,y + width / 2];
		};
		//-------------------------------------------------------
		Highcharts.setOptions({
			chart:{
				type:'bar',
				//margin:null,
				//spacing:null,
				//width:350
			},
			credits:{enabled:false},
			exporting:{enabled:false},
			//legend:{enabled:false},
			title:{text:''},
			xAxis:{
				tickLength:0,
				lineColor:'#999',
				lineWidth:1,
				labels:{style:{fontWeight:'bold'}, overflow: 'justify'},


			},
			yAxis:{
				showLastLabel: true , 
				min:0,
				minPadding:0,
				maxPadding:0,
				tickColor:'#333',
				tickWidth:1,
				tickLength:3,
				gridLineWidth:0,
				endOnTick:true,
				title:{text: ''},
				labels:{
					y:10,
					style:{
						fontSize:'10px'
					},
					formatter:function(){
						if (this.isLast){
							return this.value + ' %';
						}
						else{
							return this.value;
						}
					}
				}
			},
			tooltip:{
				enabled:true,
				backgroundColor:'rgba(255, 255, 255, 1)',
				borderWidth:1,
				shadow:true,
				style:{fontSize:'12px',padding:5}
				
			},
			plotOptions:{
				scatter:{
					marker:{
						
						lineWidth:1,
						radius:10,
						lineColor:'#333',
						
					}
				}
				
			}
		});

	
				//----------------------BARRAS DE RESUMEN, VALORES ESPECIFICOS--------------------
				//-------------------------------------------------------g
				var chart_1 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-1',margin:[5,20,10,70],  height: 40},
					xAxis:{categories:['GE1']},
					legend:{enabled:false},
					// indicador tipo g
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},    
						plotBands:[{from:0,to:2.5,color: 'rgba(155, 187, 89,1)'},
									{from:2.5,to:7.5,color: 'rgba(255, 192, 0,1)'},
									{from:7.5,to:100,color: 'rgba(192, 0, 0,1)'}]
					},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------g
				var chart_2 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE2']}, 
					// indicador tipo g
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},    
						plotBands:[{from:0,to:2.5,color: 'rgba(155, 187, 89,1)'},
									{from:2.5,to:7.5,color: 'rgba(255, 192, 0,1)'},
									{from:7.5,to:100,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[1.46], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------b
				var chart_3 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE3']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------d
				var chart_4 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-4', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE4']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------f
				var chart_5 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-5', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE5']},
					// indicador tipo f
					yAxis:{
						max: 100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)'}
							]
				});
				//-------------------------------------------------------c
				var chart_6 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE6']},
					// indicador tipo c
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)'}
							]
				});
				//-------------------------------------------------------f
				var chart_7 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-7', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE7']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge7").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------f
				var chart_8 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-ge-8', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['GE8']},
					// indicador tipo c
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_ge8").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});			
				
				
				//-------------------------------------------------------
				//-------------------------------------------------------a
				var chart_9 = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp1', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP1']},
					// indicador tipo c
					yAxis:{
						 min:0, max:100, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:25,color: 'rgba(192, 0, 0,1)'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)'}]
					},
					series:[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[50], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------e
				var chart_CP3_barra= new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP2']},
					// indicador tipo e
					yAxis:{
						max:10,
						labels:{
							y:10,
							style:{fontSize:'8px'},
							formatter:function(){if (this.isLast){return this.value;}
									else{ return this.value;}
									},
						},   
						plotBands:[{from:0,to:4,color: 'rgba(192, 0, 0,1)'},
									{from:4,to:8,color: 'rgba(255, 192, 0,1)'},
									{from:8,to:10,color: 'rgba(155, 187, 89,1)'}]
					},
					series:[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[10], color: 'rgba(255, 255, 255, 1)',}
							]
				});
								//-------------------------------------------------------e
				var chart_CP3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP3']},
					// indicador tipo e
					yAxis:{
						max:10,
						labels:{
							y:10,
							style:{fontSize:'8px'},
							formatter:function(){if (this.isLast){return this.value;}
									else{ return this.value;}
									}
						},   
						plotBands:[{from:0,to:4,color: 'rgba(192, 0, 0,1)'},
									{from:4,to:8,color: 'rgba(255, 192, 0,1)'},
									{from:8,to:10,color: 'rgba(155, 187, 89,1)'}]
					},
					series:[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[10], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de cp3_barra
				//-------------------------------------------------------c
				var chart_CP4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp4', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP4']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cp4_barra
				//-------------------------------------------------------c
				var chart_CP5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp5', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP5']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cp5_barra
				//-------------------------------------------------------b
				var chart_CP6_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP6']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de CP6_barra
				//-------------------------------------------------------b
				var chart_CP7_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp7', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP7']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp7").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de CP7_barra
				//-------------------------------------------------------c
				var chart_chartCP8_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp8', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP8']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp8").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cp8_barra
				//-------------------------------------------------------b
				var chart_CP9_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp9', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP9']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp9").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de CP9_barra
				//-------------------------------------------------------c
				var chart_CP10_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cp10', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CP10']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cp10").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cp10_barra
				//-------------------------------------------------------a
				var chart_RS1_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-rs1', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['RS1']},
					// indicador tipo c
					yAxis:{
						 min:0, max:100, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:25,color: 'rgba(192, 0, 0,1)'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)'}]
					},
					series:[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_rs1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[50], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de rs10_barra
				//-------------------------------------------------------b
				var chart_RS2_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-rs2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['RS2']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_rs2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); // fin de RS2_barra
				//-------------------------------------------------------d
				var chart_RS3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-rs3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['RS3']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_rs3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------f
				var chart_RS4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-rs4', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['RS4']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_rs4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
				//-------------------------------------------------------c
				var chart_RS5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-rs5', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['RS5']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_rs5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de RS5_barra
			//-------------------------------------------------------a
				var chart_DP1_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp1', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP1']},
					// indicador tipo c
					yAxis:{
						 min:0, max:100, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:25,color: 'rgba(192, 0, 0,1)'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)'}]
					},
					series:[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[50], color: 'rgba(255, 255, 255, 1)',}
							]
					}); 
			// fin de dp10_barra
			//-------------------------------------------------------b
				var chart_Dp2_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP2']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); 
			// fin de DP2_barra
			//-------------------------------------------------------d
				var chart_dp3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP3']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------f
				var chart_dp4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp4', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP4']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_dp5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp5', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP5']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de dp5_barra
			//-------------------------------------------------------b
				var chart_Dp6_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP6']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); 
			// fin de DP6_barra
			//-------------------------------------------------------d
				var chart_dp7_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp7', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP7']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp7").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------f
				var chart_dp8_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp8', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP8']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp8").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_dp9_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-dp9', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['DP9']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_dp9").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de dp9_barra
			//-------------------------------------------------------c
				var chart_r1_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r1', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R1']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de r1_barra
			//-------------------------------------------------------c
				var chart_r2_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R2']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de r2_barra
			//-------------------------------------------------------c
				var chart_r3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R3']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de r3_barra
			//-------------------------------------------------------d
				var chart_r4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r4', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R4']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------f
				var chart_r5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r5', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R5']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_r6_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-r6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['R6']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_r6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de r6_barra
			//-------------------------------------------------------b
				var chart_pv1_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv1', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,2) + "</strong>";
					 }},
					xAxis:{categories:['PA1']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); 
			//-------------------------------------------------------d
				var chart_pv2_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['PA2']},
					// indicador tipo d
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'},},   
						plotBands:[{from:0,to:30,color: 'rgba(192, 0, 0,1)'},
									{from:30,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------f
				var chart_pv3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv3', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['PA3']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_pv4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv4', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['PA4']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de pv4_barra
			//-------------------------------------------------------f
				var chart_pv5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv5', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['PA5']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_pv6_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-pv6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['PA6']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_pv6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de pv6_barra
								

								
			//-------------------------------------------------------f
				var chart_cfls1_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls1', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS1']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls1").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------b
				var chart_cfls2_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls2', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,2) + "</strong>";
					 }},
					xAxis:{categories:['CFLS2']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls2").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); 
			//-------------------------------------------------------b
				var chart_cfls3_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls3', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,2) + "</strong>";
					 }},
					xAxis:{categories:['CFLS3']},
					// indicador tipo b
					yAxis:{
						max:10,
						labels:{y:10,style:{fontSize:'8px'},
						formatter:function(){if (this.isLast){return 'Infinite';}
									else{ return this.value;}
									}
						},
						plotBands:[{from:0,to:0.5,color: 'rgba(192, 0, 0,1)'},
									{from:0.5,to:0.67,color: 'rgba(255, 192, 0,1)'},
									{from:0.67,to:1.5,color: 'rgba(155, 187, 89,1)'},
									{from:1.5,to:2,color: 'rgba(255, 192, 0,1)'},
									{from:2,to:10,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls3").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[1], color: 'rgba(255, 255, 255, 1)',}
							]
				}); 
			//-------------------------------------------------------f
				var chart_cfls4_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls4', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS4']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls4").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------f
				var chart_cfls5_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls5', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS5']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls5").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_cfls6_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls6', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS6']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls6").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cfls6_barra
			//-------------------------------------------------------f
				var chart_cfls7_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls7', margin:[5,20,10,70] , height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS7']},
					// indicador tipo f
					yAxis:{
						max:100,
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:0,to:50,color: 'rgba(192, 0, 0,1)'},
									{from:50,to:65,color: 'rgba(255, 192, 0,1)'},
									{from:65,to:100,color: 'rgba(155, 187, 89,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls7").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[100], color: 'rgba(255, 255, 255, 1)',}
							]
				});
			//-------------------------------------------------------c
				var chart_cfls8_barra = new Highcharts.Chart({
					chart:{renderTo:'gr-resumen-cfls8', margin:[5,20,10,70], height: 40},
					legend:{enabled:false},
					tooltip:{formatter:function() {
					 return this.series.name + ": <strong>" + Highcharts.numberFormat(this.y,1) + "</strong>";
					 }},
					xAxis:{categories:['CFLS8']},
					yAxis:{
						max:45, min:-50, tickInterval:10,  
						labels:{y:10,style:{fontSize:'8px'}},   
						plotBands:[{from:-50,to:-40,color: 'rgba(192, 0, 0,1)'},
									{from:-40,to:-20,color: 'rgba(255, 192, 0,1)'},
									{from:-20,to:20,color: 'rgba(155, 187, 89,1)'},
									{from:20,to:40,color: 'rgba(255, 192, 0,1)'},
									{from:40,to:50,color: 'rgba(192, 0, 0,1)'}]
					},
					series:
							[
							{name:'Actual',type: 'scatter',data:[<%= session.getAttribute("temp_empresa_resultados_cfls8").toString() %>], color: 'rgba(0, 0, 0, 1)' },
							{name:'Ideal',type: 'scatter',data:[0], color: 'rgba(255, 255, 255, 1)',}
							]
				});// fin de cfls8_barra								