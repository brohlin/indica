
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE1 !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge1').highcharts({
		chart: {
			plotBackgroundColor: null,
				plotBorderWidth: 0,//null,
				plotShadow: false,
				height: 260,

			},
			title: {
				text: ''
			},
			tooltip: {
				pointFormat: ' {point.percentage:.1f} %'
			},
			plotOptions: {
				pie: {
					allowPointSelect: true,
					cursor: 'pointer',
					showInLegend: true,
					dataLabels: {
						enabled: false,
						format: '<b>Working days<br>{point.name}</b>:<br>{point.percentage:.1f} %',
						style: {
							color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
						}
					}
				}
			},
			series: [{
				type: 'pie',
				name: 'Percentage',
				data: [
				['Attended',   <%= session.getAttribute("temp_empresa_resultados_ge1_num_jornadas_asistidas") %>],

				{
					name: 'Absent',
					y: <%= session.getAttribute("temp_empresa_resultados_ge1_num_jornadas_perdidas") %>,
					sliced: true,
					selected: true
				}
				]
			}]
		});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE2 !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge2').highcharts({
		chart: {
			type: 'column',
		},
		xAxis: {
			categories: [
			'Rate of absenteeism'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage %'
			},
			gridLineWidth:1,
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE3  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge3').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Rate of work stoppage'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage %'
			},
			gridLineWidth:1,
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE4  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge4').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Opinion'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_nunca") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE5  !!!!!!!!!!!!!!!!!!-->


$(function () {
	$('#gr-ge5').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE6  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge6').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE7  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge7').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function() { return this.value; }
			},
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL GE8  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-ge8').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP1  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp1').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [''],

		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of people'
			},
			labels: {
				formatter: function() { return this.value; }
			},
			gridLineWidth: 1,

		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp1_total_mujeres") %>]
		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp1_total_hombres") %>]
		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP2  !!!!!!!!!!!!!!!!!!-->

$(function () {

	$(document).ready(function () {
		$('#gr-cp2').highcharts({
			chart: {type: 'bar'},
			xAxis: [{
				categories: ['Executive Director',
				'Director positions<br/>as managers',
				'Other headquarters - Level 4',
				'Other headquarters - Level 3',
				'Technical positions',
				'Administrative positions',
				'Support positions',
				'Operations positions',
				],
				reversed: true,
				labels: { step: 1, 
					useHTML:true,
					style: {
						lineHeight: 1,
					} },
					lineColor: '#ccc',
					lineWidth:1,	
					tickColor: '#ccc', 
					tickLength: 10,
				}],
				yAxis: {
					tickColor: '#ccc',
					gridLineWidth: 1,
					lineColor: '#ccc',
					lineWidth:1,		
					labels: { y:20,
						formatter: function () {
							return (Math.abs(this.value)) + '%';}
						},
						min: -100,
						max: 100
					},
					plotOptions: {
						series: {stacking: 'normal'},
					},
					tooltip: {
						formatter: function () {
							return '<b>Percentage of ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: 
					[
					{
						name: 'Women', 
						data: [
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_direccion_general_o_maximo_cargo_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_directivos_como_gerencias_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_tecnicos_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_administrativos_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_auxiliares_mujeres") %>,
						-<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_operarios_mujeres") %>,
						]
					}, 
					{
						name: 'Men',
						data: [
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_direccion_general_o_maximo_cargo_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_directivos_como_gerencias_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_tecnicos_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_administrativos_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_auxiliares_hombres") %>,
						<%= session.getAttribute("temp_empresa_resultados_cp2_pct_num_puestos_operarios_hombres") %>
						]
					}
					]
				});
});

});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP3  !!!!!!!!!!!!!!!!!!-->

$(function () {

	$(document).ready(function () {
		$('#gr-cp3').highcharts({
			chart: {type: 'bar'},
			xAxis: [{
				categories: ['Executive Director',
				'Director positions<br/>as managers',
				'Other headquarters - Level 4',
				'Other headquarters - Level 3',
				],
				reversed: true,
				labels: { step: 1, 
					useHTML:true,
					style: {
						lineHeight: 1,
					}},
					lineColor: '#ccc',
					lineWidth:1,	
					tickColor: '#ccc', 
					tickLength: 10,
				}],
				yAxis: {
					tickColor: '#ccc',
					gridLineWidth: 1,
					lineColor: '#ccc',
					lineWidth:1,		
					labels: { y:20,
						formatter: function () {
							return (Math.abs(this.value)) + '%';}
						},
						min: -100,
						max: 100
					},
					plotOptions: {
						series: {stacking: 'normal'},
					},
					tooltip: {
						formatter: function () {
							return '<b>Percentage of ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: [
					{name: 'Women', data: [-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>]}, 
					{name: 'Men', data: [<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]}
					]
				});
});

});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP4  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp4').highcharts({
		chart:{
			height:260,
		},
		tooltip: {
			pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		},
		plotOptions: {
			pie: {
				allowPointSelect: true,
				cursor: 'pointer',
				showInLegend: true,
				dataLabels: {
					enabled: false,
					format: '<b>{point.name}</b>:<br> {point.percentage:.1f} %',
					style: {
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					}
				}
			}
		},
		series: [{
			type: 'pie',
			name: 'Percentage',
			data: [
			['Women',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_mujeres") %>],
			['Men',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_hombres") %>]
			]
		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP4_2 !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp4-2').highcharts({
		chart: {
			type: 'bar'
		},

		xAxis: {
			categories: ['Executive Director',
			'Directors / Managers',
			'Other headquarters - Level 4',
			'Other headquarters - Level 3'],
			labels:{
				useHTML:true,
				style: {
					lineHeight: 1,
				}
			}

		},
		yAxis: {
			min: 0,
			lineWidth:1,
			labels:{y: 20,},
			gridLineWidth:1

		},
		legend: {
			reversed: true
		},
		plotOptions: {
			series: {
				stacking: 'normal'
			}
		},
		series: [
		{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]
		},	
		{
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]
		}]
	});
});	

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP5  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp5').highcharts({
		chart:{
			height:260,
		},

		tooltip: {
			pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		},
		plotOptions: {
			pie: {
				allowPointSelect: true,
				cursor: 'pointer',
				showInLegend: true,
				dataLabels: {
					enabled: false,
					format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					style: {
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					}
				}
			}
		},
		series: [{
			type: 'pie',
			name: 'Percentage',
			data: [
			['Women',   <%= session.getAttribute("temp_empresa_resultados_cp5_pct_mujeres") %>],

			{
				name: 'Men',
				y: <%= session.getAttribute("temp_empresa_resultados_cp5_pct_hombres") %>,
				sliced: true,
				selected: true,

			}
			]
		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP6  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp6').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: ['Women', 'Men']
		},
		yAxis: [{
			title: {
				text: 'Tasa de éxito'
			},
			gridLineWidth:1,
			labels: { formatter: function() { return this.value; } },

		}],

		series: [{
			type: 'column',
			data: [
			            		// Variable para las mujeres
			            		<%= session.getAttribute("temp_empresa_resultados_cp6_mujeres") %>,   
			            		{ // Variable para los hombres. Lo separo para poder cambiar el color
			            			y: <%= session.getAttribute("temp_empresa_resultados_cp6_hombres") %>,
			            			color: '#712e8e'
			            		}
			            		],
			            		name: 'Real value',

			            	}, {
			            		type: 'line',
			            		data: [1, 1],
			            		name: 'Ideal value',
			            		color: '#2051E6'
			            	} ]
			            });
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP7  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp7').highcharts({

		chart: {
			type: 'column',

		},
		legend:{
            layout: "vertical",
			itemMarginTop:2,
            itemMarginBottom: 2,
            itemStyle: {
            fontWeight: "normal",
            font: '10pt Lato, Verdana, sans-serif',
            },
		},

		xAxis: {
			categories: ['Women', 'Men']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: 'Number of persons'
			},
			gridLineWidth:1,
			labels: { formatter: function(){
				return this.value;
			}}

		},

		tooltip: {
			formatter: function () {
				return '<b>' + this.x + '</b><br/>' +
				this.series.name + ': ' + this.y + '<br/>' +
				'Total: ' + this.point.stackTotal;
			}
		},

		plotOptions: {
			column: {
				stacking: 'normal'
			}
		},

		series: [{
			name: 'Permanent contract / Full-time',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: 'permanent'
		}, {
			name: 'Permanent contract / Part-time',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: 'permanent',
			color: '#222'
			// Añadí dos stacks más porque Guillermina quiere el comparativo entre todas las variables juntas: sexo, contrato y jornada. Y puse las variables del cp9 porque creo que son esas las que sirven. Aunque al 25 de feb. queda vacio el último: part-time-temporal- hombre/mujer
		}, {  
			name: 'Temporary contract / Full-time',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: 'temporary'
		}, {
			name: 'Contract temporary / part-time',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: 'temporary'
		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP8  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp8').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			''
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage %'
			},
			gridLineWidth:1,
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp8_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp8_hombres") %>]

		}]
	});
});
<!-- fin de cp8 -->
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP9  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp9').highcharts({

		chart: {
			type: 'column',

		},
		legend:{
            layout: "vertical",
			itemMarginTop:2,
            itemMarginBottom: 2,
            itemStyle: {
            fontWeight: "normal",
            font: '10pt Lato, Verdana, sans-serif',
            },
		},

		xAxis: {
			categories: ['Women', 'Men']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: 'Number of persons'
			},
			gridLineWidth:1,
			labels: { formatter: function(){
				return this.value;
			}}

		},

		tooltip: {
			formatter: function () {
				return '<b>' + this.x + '</b><br/>' +
				this.series.name + ': ' + this.y + '<br/>' +
				'Total: ' + this.point.stackTotal;
			}
		},

		plotOptions: {
			column: {
				stacking: 'normal'
			}
		},
		// Añadí dos stacks más porque Guillermina quiere el comparativo entre todas las variables juntas: sexo, contrato y jornada. Y puse las variables del cp9 porque creo que son esas las que sirven. Aunque al 25 de feb. queda vacio el último: part-time-temporal- hombre/mujer
		series: [{
			name: 'Full-time / Permanent contract',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: 'full-time',
			
		}, {  
			name: 'Full-time / Temporary contract',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: 'full-time',
			color: '#222',

		}, {
			name: 'Part-time / Permanent contract',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: 'part-time',
		},  {
			name: 'Part-time / Temporary contract',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: 'part-time'
		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CP10  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-cp10').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			''
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage %'
			},
			gridLineWidth:1,
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp10_pct_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp10_pct_hombres") %>]

		}]
	});
});
<!-- fin de cp10 -->
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL RS1  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-rs1').highcharts({
		chart: {
			type: 'column'
		},

		xAxis: {
			categories: [
			''
			]
		},
		yAxis: {
			gridLineWidth: 1,
			min: 0,
			title: {
				text: 'Number of persons'
			},
			labels: {
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_hombres") %>]

		}]
	});
});
<!-- fin de RS1 -->
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL RS2  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-rs2').highcharts({
		chart:{
			height:260,
		},

		tooltip: {
			pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		},
		plotOptions: {
			pie: {
				allowPointSelect: true,
				cursor: 'pointer',
				showInLegend: true,
				dataLabels: {
					enabled: false,
					format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					style: {
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					}
				}
			}
		},
		series: [{
			type: 'pie',
			name: 'Percentage',
			data: [
			['Women',   <%= session.getAttribute("temp_empresa_resultados_rs2_mujeres") %>],
			['Men',   <%= session.getAttribute("temp_empresa_resultados_rs2_hombres") %>],
			]
		}]
	});
});
<!-- fin de RS2 -->
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL RS3  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-rs3').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Opinion'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_nunca") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL RS4  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-rs4').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL RS5  !!!!!!!!!!!!!!!!!!-->

$(function () {
	$('#gr-rs5').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});

// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP1  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp1').highcharts({
		chart: {
			type: 'column'
		},

		xAxis: {
			categories: [
			''
			]
		},
		yAxis: {
			gridLineWidth: 1,
			min: 0,
			title: {
				text: 'Number of persons'
			},
			labels: {
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP2  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp2').highcharts({
		chart:{
			height:260,
		},

		tooltip: {
			pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		},
		plotOptions: {
			pie: {
				allowPointSelect: true,
				cursor: 'pointer',
				showInLegend: true,
				dataLabels: {
					enabled: false,
					format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					style: {
						color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					}
				}
			}
		},
		series: [{
			type: 'pie',
			name: 'Percentage',
			data: [
			['Women',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_mujeres") %>],
			['Men',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_hombres") %>],
			]
		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP3  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp3').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: ['']
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_nunca") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP4  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp4').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP5  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp5').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
//<!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP6  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp6').highcharts({
		chart: {
			type: 'column'
		},

		xAxis: {
			categories: [ '' ]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Average hours of training'},
			labels: {
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp6_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp6_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP7  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp7').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [  '' ]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_nunca") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP8  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp8').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL DP9  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-dp9').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL R1  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-r1').highcharts({
		chart: {
			type: 'column'
		},

		xAxis: {
			categories: ['' ]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {text: 'Number of people'},
			labels:{
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R2
$(function () {
	$('#gr-r2').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: ['' ]
		},
		yAxis: {
			gridLineWidth: 1,
			min: 0,
			title: { text: 'Salary per year (USD)'},
			labels:{
				formatter: function (){
					return this.value;
				} 
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>${point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_average_salario_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_average_salario_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R2_2
$(function () {
	$('#gr-r2-2').highcharts({
		chart: {
			type: 'bar'
		},
		xAxis: {
			categories: ['Executive Director', 'Puestos directivos', 'Other headquarters - Level 4', 'Other headquarters - Level 3','Other headquarters - Level 2', 'Otras jefaturas -Nivel- 1'],
			title: {
				text: null
			},

		},
		yAxis: {
			min: 0,
			lineWidth: 1,
			title: {
				text: 'Salary per year (USD)',
				//align: 'high',
			},
			labels: {
				overflow: 'justify',
				y: 20,
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			valueSuffix: ' USD per year'
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") %>]
		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres") %>]
		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R3 
$(function () {
	$('#gr-r3').highcharts({
		chart: {
			type: 'column'
		},

		xAxis: {
			categories: [ '' ]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {
				text: 'Salary per year (USD)'
			},
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>${point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_average_salario_mujeres") %>]


		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_average_salario_hombres") %>]

		}]
	});
});
/// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL/ R3_2
$(function () {
	$('#gr-r3-2').highcharts({
		chart: {
			type: 'bar'
		},
		xAxis: {
			categories: ['Technical positions', 'Administrative positions', 'Support positions', 'Operations positions','A','B','C','D','E','F','G','H'],
			title: {
				text: null
			}
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {
				text: 'Salario al año(USD)',
				align: 'high'
			},
			labels: {
				overflow: 'justify'
			}
		},
		tooltip: {
			valueSuffix: ' USD per year'
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_a_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_b_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_c_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_d_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_e_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_f_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_g_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_h_mujeres") %>]
		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_a_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_b_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_c_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_d_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_e_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_f_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_g_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_h_hombres") %>]
		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL R4  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-r4').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [  '' ]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_nunca") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL R5  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-r5').highcharts({
		chart: {
			type: 'column',
			spacingTop: 30
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Number of opinions'
			},
			gridLineWidth:1,
			labels: {
				formatter: function (){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL R6  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-r6').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL Pv1  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv1').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Women',
			'Men'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {text: 'Number of complaints' },
			labels: {
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Complaints received',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_mujeres") %>]

		}, {
			name: 'Complaints responded to',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL Pv2  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv2').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [  '' ]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_nunca") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL pv3  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv3').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Number of opinions'},
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL pv4  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv4').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL pv5  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv5').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Number of opinions'},
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL pv6  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-pv6').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CFLS1  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls1').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: ['' ]
		},
		yAxis: {
			gridLineWidth: 1,
			min: 0,
			title: { text: 'Number of people'},
			labels:{
				formatter: function (){
					return this.value;
				} 
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Men in a position to benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_sit_de_acogerse") %>]
		}, {
			name: 'Men that actually receive the benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_efect_se_acogen") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CFLS2  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls2').highcharts({

		chart: {
			type: 'bar'
		},
		legend:{
            layout: "vertical",
			itemMarginTop:2,
            itemMarginBottom: 2,
            itemStyle: {
            fontWeight: "normal",
            font: '10pt Lato, Verdana, sans-serif',
            },
		},
		xAxis: {
			categories: ['Maternity / paternity leave','Breastfeeding leave &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp','Reduction in working hours for legal custody of dependents','Leave to care for dependents'],
			labels: { 
				step: 1, 
				useHTML:true,
				style: {
					lineHeight: 1,
					fontWeight : 'normal',
				} 
			},
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			lineWidth: 1,
			title: {
				text: 'Number of people'
			},
			labels:{
				y:20,
				formatter: function(){
					return this.value;
				},
			},
		},
		tooltip: {
			formatter: function () {
				return this.series.name + ': ' + this.y + '<br/>' +
				'Total: ' + this.point.stackTotal;
			}
		},

		plotOptions: {
			bar: {
				stacking: 'normal'
			}
		},

		series: [{
			name: 'Women in a position to benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres") %>],
			stack: 'mujeres'
		}, {
			name: 'Women that actually receive the benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_efect_se_acogen") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres") %>],
			stack: 'mujeres',
			color: '#222',
		}, {
			name: 'Men in a position to benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres") %>],
			stack: 'hombres'
		}, {
			name: 'Men that actually receive the benefit',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_efect_se_acogen") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_hombres") %>],
			stack: 'hombres'
		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CFLS3  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls3').highcharts({

		chart: {
			type: 'bar'
		},
		legend:{
            layout: "vertical",
			itemMarginTop:2,
            itemMarginBottom: 2,
            itemStyle: {
            fontWeight: "normal",
            font: '10pt Lato, Verdana, sans-serif',
            },
		},
		
		xAxis: {
			categories: ['Flexibility of a negotiated schedule','Shorter working hours for personal reasons','Paid leave for personal reasons','Unpaid leave for personal reasons','Telecommuting','System to transport staff members to and from their place of residence','Day care in the company','Help to find a day care service	'],
			labels: { 
				style: {
	                    //lineHeight: 1,
	                    fontWeight : 'normal',
	                } 
	            },
	        },
	        yAxis: {
	        	lineWidth: 1, 
	        	allowDecimals: false,
	        	min: 0,
	        	title: {
	        		text: 'Number of people'
	        	},
	        	labels: {
	        		y:20,
	        		formatter: function(){
	        			return this.value;
	        		}
	        	}
	        },
	        tooltip: {
	        	formatter: function () {
	        		return this.series.name + ':<br> '
	        		+ this.y

	        	}
	        },

	        plotOptions: {
	        	bar: {
	        		stacking: 'normal'
	        	}
	        },

	        series: [{
	        	name: 'Women in a position to benefit',
	        	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres") %>],
	              	stack: 'mujeres'
	              }, {
	              	name: 'Women that actually receive the benefit',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres") %>],
	              	stack: 'mujeres',
	              	color: '#222',
	              }, {
	              	name: 'Men in a position to benefit',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres") %>],
	              	stack: 'hombres'
	              }, {
	              	name: 'Men that actually receive the benefit',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres") %>],
	              	stack: 'hombres'
	              }]
	            });
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL CFLS4  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls4').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: ['']
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Responses'
			},
			gridLineWidth:1,
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f}</b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Always',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_siempre") %>]


		}, {
			name: 'Sometimes',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_aveces") %>]

		},  {
			name: 'Never',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_nunca") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL cfls5  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls5').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Number of opinions'},
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL cfls6  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls6').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL cfls7  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls7').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Number of opinions'},
			labels:{
				formatter: function(){
					return this.value;
				}
			}
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.0f} </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL cfls8  !!!!!!!!!!!!!!!!!!-->
$(function () {
	$('#gr-cfls8').highcharts({
		chart: {
			type: 'column'
		},
		xAxis: {
			categories: [
			'Totally disagree',
			'Disagree',
			'Not in agreement - not in disagreement',
			'Agree',
			'Totally agree'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Percentage'
			},
			gridLineWidth:1
		},
		tooltip: {
			headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
			pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
			'<td style="padding:0"><b>{point.y:.2f}% </b></td></tr>',
			footerFormat: '</table>',
			shared: true,
			useHTML: true
		},
		plotOptions: {
			column: {
				pointPadding: 0.2,
				borderWidth: 0
			}
		},
		series: [{
			name: 'Women',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Men',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});	