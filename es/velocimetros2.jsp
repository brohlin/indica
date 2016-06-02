// <!-- !!!!!!!!!!!!!!!!!!  LOOP DE LOS VELOCIMETROS  !!!!!!!!!!!!!!!!!!-->

			Highcharts.Renderer.prototype.symbols.line = function(x, y, width, height) {
				return ['M',x ,y + width / 2,'L',x+height,y + width / 2];
			};
			//-------------------------------------------------------
			Highcharts.setOptions({
				 chart: {
							type: 'gauge',
							plotBackgroundColor: null,
							plotBackgroundImage: null,
							plotBorderWidth: 0,
							plotShadow: false
					 },
					credits:{enabled:false},
					exporting:{enabled:false},
					 title: {
							text: null
					 },
					 
					 pane: {
							startAngle: -140,
							endAngle: 140,
							background: null
					 },
						
						plotOptions: {
							gauge: {
								 dataLabels: {
										enabled: true,
										y: 105,
										borderWidth: 0,
										useHTML: true
							 },
								 dial: {
										baseLength: '0%',
										baseWidth: 5,
										radius: '100%',
										rearLength: '0%',
										topWidth: 1
								 }
							}
						},
						yAxis:{
							gridLineWidth: 0,
							labels: { 
								 step: 2,
								 //rotation: 'auto',
								 distance: 12,
								 y: 0,
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

			}); //FIN DE setOptions

			//-------------------------------------------------------tipo G
			var chart_GE1_ind = new Highcharts.Chart({
					chart:{renderTo:'ge1-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max: 100,
							plotBands: [
								{from: 0,to: 2.5, color: 'rgb(155, 187, 89)', thickness: '50%'},  // green
								{from: 2.5, to: 7.5, color: 'rgb(255, 192, 0)', thickness: '50%'}, // yellow
								{from: 7.5, to: 100, color: 'rgb(192, 0, 0)', thickness: '50%'} // red
							]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE1-ind
			//-------------------------------------------------------tipo G
			var chart_GE2_ind = new Highcharts.Chart({
					chart:{renderTo:'ge2-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max: 100,
							plotBands: [{
								from: 0,
								to: 2.5,
								color: 'rgb(155, 187, 89)', // green
								 thickness: '50%'
							}, {
								from: 2.5,
								to: 7.5,
								color: 'rgb(255, 192, 0)', // yellow
								 thickness: '50%'
							}, {
								from: 7.5,
								to: 100,
								color: 'rgb(192, 0, 0)', // red
								 thickness: '50%'
							}]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE2-ind
			//-------------------------------------------------------tipo B
			var chart_GE3_ind = new Highcharts.Chart({
					chart:{renderTo:'ge3-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{
									from: 1.5,
									to: 2,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: 2,
									to: 10,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE3-ind
			//-------------------------------------------------------tipo D
			var chart_GE4_ind = new Highcharts.Chart({
					chart:{renderTo:'ge4-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max: 100,

							plotBands: [
								{
									from: 0,
									to: 30,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}, {
									from: 30,
									to: 65,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: 65,
									to: 100,
									color: 'rgb(155, 187, 89)', // green
									 thickness: '50%'
								}
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE4-ind
			//-------------------------------------------------------tipo F
			var chart_GE5_ind = new Highcharts.Chart({
					chart:{renderTo:'ge5-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max: 100,

							plotBands: [
								{
									from: 0,
									to: 50,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}, {
									from: 50,
									to: 65,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: 65,
									to: 100,
									color: 'rgb(155, 187, 89)', // green
									 thickness: '50%'
								}
							]          
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE5-ind
			//-------------------------------------------------------tipo C
			var chart_GE6_ind = new Highcharts.Chart({
					chart:{renderTo:'ge6-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: -50,
							max: 50,

							plotBands: [
								{
									from: -50,
									to: -40,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}, {
									from: -40,
									to: -20,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: -20,
									to: 20,
									color: 'rgb(155, 187, 89)', // green
									 thickness: '50%'
								}, {
									from: 20,
									to: 40,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: 40,
									to: 50,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE6-ind
			//-------------------------------------------------------tipo F
			var chart_GE7_ind = new Highcharts.Chart({
					chart:{renderTo:'ge7-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: 0,
							max:100,

							plotBands: [
								{
									from: 0,
									to: 50,
									color: 'rgb(192, 0, 0)', // red
									 thickness: '50%'
								}, {
									from: 50,
									to: 65,
									color: 'rgb(255, 192, 0)', // yellow
									 thickness: '50%'
								}, {
									from: 65,
									to: 100,
									color: 'rgb(155, 187, 89)', // green
									 thickness: '50%'
								}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge7").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE7-ind
			//-------------------------------------------------------tipo C
			var chart_GE8_ind = new Highcharts.Chart({
					chart:{renderTo:'ge8-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',

							min: -50,
							max: 50,

							plotBands: [
								{from: -50, to: -40, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: -40, to: -20, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: -20, to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'},
								{from: 20, to: 40, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 40, to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]           
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_ge8").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartGE8-ind
			//-------------------------------------------------------tipo A
			var chart_CP1_ind = new Highcharts.Chart({
					chart:{renderTo:'cp1-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [{from:0,to:25,color: 'rgba(192, 0, 0,1)', thickness: '50%'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)',thickness: '50%'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)',thickness: '50%'}]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
						tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartCP1-ind
			//-------------------------------------------------------tipo E
			var chart_CP2_ind = new Highcharts.Chart({
					chart:{renderTo:'cp2-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return this.value;}
									else{ return this.value;}
									}
								},
							plotBands: [{from:0,to:4,color: 'rgba(192, 0, 0,1)',thickness: '50%'},
									{from:4,to:8,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:8,to:10,color: 'rgba(155, 187, 89,1)',thickness: '50%'}]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartCP2-ind
			//-------------------------------------------------------tipo E
			var chart_CP3_ind = new Highcharts.Chart({
					chart:{renderTo:'cp3-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return this.value;}
									else{ return this.value;}
									}
								},
							plotBands: [{from:0,to:4,color: 'rgba(192, 0, 0,1)',thickness: '50%'},
									{from:4,to:8,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:8,to:10,color: 'rgba(155, 187, 89,1)',thickness: '50%'}]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					
					 }] //fin de series
				}); //fin de chartCP3-ind
			//-------------------------------------------------------tipo C
			var chart_CP4_ind = new Highcharts.Chart({
					chart:{renderTo:'cp4-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp4-ind
			//-------------------------------------------------------tipo C
			var chart_CP5_ind = new Highcharts.Chart({
					chart:{renderTo:'cp5-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp5-ind
			//-------------------------------------------------------tipo B
			var chart_CP6_ind = new Highcharts.Chart({
					chart:{renderTo:'cp6-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp6-ind
			//-------------------------------------------------------tipo B
			var chart_CP7_ind = new Highcharts.Chart({
					chart:{renderTo:'cp7-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp7").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp7-ind
			//-------------------------------------------------------tipo C
			var chart_CP8_ind = new Highcharts.Chart({
					chart:{renderTo:'cp8-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp8").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp8-ind
			//-------------------------------------------------------tipo B
			var chart_CP9_ind = new Highcharts.Chart({
					chart:{renderTo:'cp9-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp9").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp9-ind
			//-------------------------------------------------------tipo C
			var chart_CP10_ind = new Highcharts.Chart({
					chart:{renderTo:'cp10-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cp10").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcp10-ind
			//-------------------------------------------------------tipo A
			var chart_RS1_ind = new Highcharts.Chart({
					chart:{renderTo:'rs1-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [{from:0,to:25,color: 'rgba(192, 0, 0,1)', thickness: '50%'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)',thickness: '50%'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)',thickness: '50%'}]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_rs1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
						tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartRS1-ind
			//-------------------------------------------------------tipo B
			var chart_RS2_ind = new Highcharts.Chart({
					chart:{renderTo:'rs2-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_rs2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartRS2-ind
			//-------------------------------------------------------tipo D
			var chart_RS3_ind = new Highcharts.Chart({
					chart:{renderTo:'rs3-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [
								{from: 0, to: 30, color: 'rgb(192, 0, 0)', thickness: '50%' },
								{from: 30, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%' }
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_rs3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartRS3-ind
			//-------------------------------------------------------tipo F
			var chart_RS4_ind = new Highcharts.Chart({
					chart:{renderTo:'rs4-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_rs4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartRS4-ind
			//-------------------------------------------------------tipo C
			var chart_Rs5_ind = new Highcharts.Chart({
					chart:{renderTo:'rs5-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_rs5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartrs5-ind
			//-------------------------------------------------------tipo A
			var chart_DP1_ind = new Highcharts.Chart({
					chart:{renderTo:'dp1-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [{from:0,to:25,color: 'rgba(192, 0, 0,1)', thickness: '50%'},
									{from:25,to:35,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:35,to:65,color: 'rgba(155, 187, 89,1)',thickness: '50%'},
									{from:65,to:75,color: 'rgba(255, 192, 0,1)',thickness: '50%'},
									{from:75,to:100,color: 'rgba(192, 0, 0,1)',thickness: '50%'}]
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
						tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartDP1-ind
			//-------------------------------------------------------tipo B
			var chart_DP2_ind = new Highcharts.Chart({
					chart:{renderTo:'dp2-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartDP2-ind
			//-------------------------------------------------------tipo D
			var chart_dp3_ind = new Highcharts.Chart({
					chart:{renderTo:'dp3-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [
								{from: 0, to: 30, color: 'rgb(192, 0, 0)', thickness: '50%' },
								{from: 30, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%' }
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp3-ind
			//-------------------------------------------------------tipo F
			var chart_dp4_ind = new Highcharts.Chart({
					chart:{renderTo:'dp4-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp4-ind
			//-------------------------------------------------------tipo C
			var chart_dp5_ind = new Highcharts.Chart({
					chart:{renderTo:'dp5-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp5-ind
			//-------------------------------------------------------tipo B
			var chart_DP6_ind = new Highcharts.Chart({
					chart:{renderTo:'dp6-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartDP6-ind
			//-------------------------------------------------------tipo D
			var chart_dp7_ind = new Highcharts.Chart({
					chart:{renderTo:'dp7-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [
								{from: 0, to: 30, color: 'rgb(192, 0, 0)', thickness: '50%' },
								{from: 30, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%' }
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp7").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp7-ind
			//-------------------------------------------------------tipo F
			var chart_dp8_ind = new Highcharts.Chart({
					chart:{renderTo:'dp8-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp8").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp8-ind
			//-------------------------------------------------------tipo C
			var chart_dp9_ind = new Highcharts.Chart({
					chart:{renderTo:'dp9-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_dp9").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartdp9-ind
			//-------------------------------------------------------tipo C
			var chart_R1_ind = new Highcharts.Chart({
					chart:{renderTo:'r1-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr1-ind
			//-------------------------------------------------------tipo C
			var chart_R2_ind = new Highcharts.Chart({
					chart:{renderTo:'r2-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr2-ind
			//-------------------------------------------------------tipo C
			var chart_R3_ind = new Highcharts.Chart({
					chart:{renderTo:'r3-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr3-ind
			//-------------------------------------------------------tipo D
			var chart_r4_ind = new Highcharts.Chart({
					chart:{renderTo:'r4-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [
								{from: 0, to: 30, color: 'rgb(192, 0, 0)', thickness: '50%' },
								{from: 30, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%' }
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr4-ind
			//-------------------------------------------------------tipo F
			var chart_r5_ind = new Highcharts.Chart({
					chart:{renderTo:'r5-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr5-ind
			//-------------------------------------------------------tipo C
			var chart_r6_ind = new Highcharts.Chart({
					chart:{renderTo:'r6-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_r6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartr6-ind
			//-------------------------------------------------------tipo B
			var chart_pv1_ind = new Highcharts.Chart({
					chart:{renderTo:'pv1-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartDP6-ind
			//-------------------------------------------------------tipo D
			var chart_pv2_ind = new Highcharts.Chart({
					chart:{renderTo:'pv2-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 100,
							plotBands: [
								{from: 0, to: 30, color: 'rgb(192, 0, 0)', thickness: '50%' },
								{from: 30, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%' }
							]       
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartpv2-ind
			//-------------------------------------------------------tipo F
			var chart_pv3_ind = new Highcharts.Chart({
					chart:{renderTo:'pv3-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartpv3-ind
			//-------------------------------------------------------tipo C
			var chart_pv4_ind = new Highcharts.Chart({
					chart:{renderTo:'pv4-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartpv4-ind
			//-------------------------------------------------------tipo F
			var chart_pv5_ind = new Highcharts.Chart({
					chart:{renderTo:'pv5-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartpv5-ind
			//-------------------------------------------------------tipo C
			var chart_pv6_ind = new Highcharts.Chart({
					chart:{renderTo:'pv6-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_pv6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartpv6-ind
			//-------------------------------------------------------tipo F
			var chart_cfls1_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls1-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls1").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls1-ind
			//-------------------------------------------------------tipo B
			var chart_cfls2_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls2-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls2").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chart_cfls2-ind
			//-------------------------------------------------------tipo B
			var chart_cfls3_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls3-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max: 10,
							labels:{
								formatter:function(){if (this.isLast){return '<fmt:message key="velocimetros.element2" />';}
									else{ return this.value;}
									}
						},
							plotBands: [
								{from: 0,to: 0.5, color: 'rgb(192, 0, 0)', thickness: '50%' }, 
								{from: 0.5, to: 0.75, color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 0.75, to: 1.5, color: 'rgb(155, 187, 89)', thickness: '50%' }, 
								{from: 1.5,to: 2,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 2,to: 10, color: 'rgb(192, 0, 0)', thickness: '50%'}
							]    
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls3").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chart_cfls3-ind
			//-------------------------------------------------------tipo F
			var chart_cfls4_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls4-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls4").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls4-ind
						//-------------------------------------------------------tipo F
			var chart_cfls5_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls5-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls5").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls5-ind
			//-------------------------------------------------------tipo C
			var chart_cfls6_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls6-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls6").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls6-ind
						//-------------------------------------------------------tipo F
			var chart_cfls7_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls7-ind'},
					
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: 0,
							max:100,
							plotBands: [
								{from: 0,to: 50, color: 'rgb(192, 0, 0)', thickness: '50%'},
								{from: 50, to: 65, color: 'rgb(255, 192, 0)', thickness: '50%'},
								{from: 65, to: 100, color: 'rgb(155, 187, 89)',  thickness: '50%'}
							]               
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls7").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls7-ind
			//-------------------------------------------------------tipo C
			var chart_cfls8_ind = new Highcharts.Chart({
					chart:{renderTo:'cfls8-ind'},
					yAxis:{
						minorTickInterval: 'auto', minorTickWidth: 1, minorTickLength: 10, minorTickPosition: 'inside', minorTickColor: '#fff',
						tickPixelInterval: 30, tickWidth: 2, tickPosition: 'inside', tickLength: 10, tickColor: '#fff',
							min: -50,
							max: 50,
							plotBands: [
								{from: -50,to: -40,color: 'rgb(192, 0, 0)',thickness: '50%'}, 
								{from: -40,to: -20,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: -20,to: 20, color: 'rgb(155, 187, 89)', thickness: '50%'}, 
								{from: 20,to: 40,color: 'rgb(255, 192, 0)', thickness: '50%'}, 
								{from: 40,to: 50,color: 'rgb(192, 0, 0)',  thickness: '50%'}
							]            
						} , //fin de yAxis
						series: [{
							name: '<fmt:message key="velocimetros.element1" />',
							data: [<%= session.getAttribute("temp_empresa_resultados_cfls8").toString() %>],
							dataLabels: {
								 format: '<div style="text-align:center"><span style="font-size:12px;color:black">{y:.2f}%</span><br/><span style="font-size:10px;color:#333;"><fmt:message key="velocimetros.element1" /></span></div>'
							},
							tooltip: {
								 valueSuffix: '%'
							},
							wrap: false
					 }] //fin de series
				}); //fin de chartcfls8-ind
