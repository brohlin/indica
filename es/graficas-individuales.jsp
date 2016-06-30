<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

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
						format: '<b>Jornadas<br>{point.name}</b>:<br>{point.percentage:.1f} %',
						style: {
							color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
						}
					}
				}
			},
			series: [{
				type: 'pie',
				name: 'Porcentaje',
				data: [
				['Asistidas',   <%= session.getAttribute("temp_empresa_resultados_ge1_num_jornadas_asistidas") %>],

				{
					name: 'Perdidas',
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
			'Tasa de ausentismo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje %'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_mujeres") %>]


		}, {
			name: 'Hombres',
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
			'Tasa de cese de actividades'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje %'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_mujeres") %>]


		}, {
			name: 'Hombres',
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
			'Opinión'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
				text: 'Número de personas'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp1_total_mujeres") %>]
		}, {
			name: 'Hombres',
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
				categories: ['Dirección general',
				'Puestos directivos<br/>como gerencias',
				'Otras jefaturas - Nivel 4',
				'Otras jefaturas - Nivel 3',
				'Puestos técnicos',
				'Puestos administrativos',
				'Puestos auxiliares',
				'Puestos operaciones',
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
							return '<b>Porcentaje de ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: 
					[
					{
						name: 'Mujeres', 
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
						name: 'Hombres',
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
				categories: ['Dirección general',
				'Puestos directivos<br/>como gerencias',
				'Otras jefaturas - Nivel 4',
				'Otras jefaturas - Nivel 3',
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
							return '<b>Porcentaje de ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: [
					{name: 'Mujeres', data: [-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>]}, 
					{name: 'Hombres', data: [<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]}
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
			name: 'Porcentaje',
			data: [
			['Mujeres',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_mujeres") %>],
			['Hombres',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_hombres") %>]
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
			categories: ['Dirección general',
			'Puestos directivos / Gerencias',
			'Otras jefaturas - Nivel 4',
			'Otras jefaturas - Nivel 3'],
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]
		},	
		{
			name: 'Hombres',
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
			name: 'Porcentaje',
			data: [
			['Mujeres',   <%= session.getAttribute("temp_empresa_resultados_cp5_pct_mujeres") %>],

			{
				name: 'Hombres',
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
			categories: ['Mujeres', 'Hombres']
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
			            		name: 'Valor real',

			            	}, {
			            		type: 'line',
			            		data: [1, 1],
			            		name: 'Valor ideal',
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
			categories: ['Mujeres', 'Hombres']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: 'Numero de personas'
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
			name: 'Contrato indefinido / Jornada completa',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: 'indefinido'
		}, {
			name: 'Contrato indefinido / Jornada pacial',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: 'indefinido',
			color: '#222'
			// Añadí dos stacks más porque Guillermina quiere el comparativo entre todas las variables juntas: sexo, contrato y jornada. Y puse las variables del cp9 porque creo que son esas las que sirven. Aunque al 25 de feb. queda vacio el último: parcial-temporal- hombre/mujer
		}, {  
			name: 'Contrato temporal / Jornada completa',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: 'temporal'
		}, {
			name: 'Contrato temporal / Jornada parcial',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: 'temporal'
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
				text: 'Porcentaje %'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp8_mujeres") %>]


		}, {
			name: 'Hombres',
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
			categories: ['Mujeres', 'Hombres']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: 'Numero de personas'
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
		// Añadí dos stacks más porque Guillermina quiere el comparativo entre todas las variables juntas: sexo, contrato y jornada. Y puse las variables del cp9 porque creo que son esas las que sirven. Aunque al 25 de feb. queda vacio el último: parcial-temporal- hombre/mujer
		series: [{
			name: 'Jornada completa / Contrato indefinido',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: 'completa',
			
		}, {  
			name: 'Jornada completa / Contrato temporal',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: 'completa',
			color: '#222',

		}, {
			name: 'Jornada pacial / Contrato indefinido',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: 'parcial',
		},  {
			name: 'Jornada parcial / Contrato temporal',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: 'parcial'
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
				text: 'Porcentaje %'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp10_pct_mujeres") %>]


		}, {
			name: 'Hombres',
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
				text: 'Numero de personas'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: 'Hombres',
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
			name: 'Porcentaje',
			data: [
			['Mujeres',   <%= session.getAttribute("temp_empresa_resultados_rs2_mujeres") %>],
			['Hombres',   <%= session.getAttribute("temp_empresa_resultados_rs2_hombres") %>],
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
			'Opinión'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
				text: 'Numero de personas'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: 'Hombres',
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
			name: 'Porcentaje',
			data: [
			['Mujeres',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_mujeres") %>],
			['Hombres',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_hombres") %>],
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
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			title: { text: 'Promedio de horas de capacitación'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp6_mujeres") %>]

		}, {
			name: 'Hombres',
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
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			title: {text: 'Número de personas'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_mujeres") %>]


		}, {
			name: 'Hombres',
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
			title: { text: 'Salario anual (USD)'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_average_salario_mujeres") %>]


		}, {
			name: 'Hombres',
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
			categories: ['Dirección general', 'Puestos directivos', 'Otras jefaturas - Nivel 4', 'Otras jefaturas -Nivel- 3','Otras jefaturas - Nivel 2', 'Otras jefaturas -Nivel- 1'],
			title: {
				text: null
			},

		},
		yAxis: {
			min: 0,
			lineWidth: 1,
			title: {
				text: 'Salarios al año (USD)',
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
			valueSuffix: ' USD al año'
		},
		series: [{
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") %>]
		}, {
			name: 'Hombres',
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
				text: 'Salario anual (USD)'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_average_salario_mujeres") %>]


		}, {
			name: 'Hombres',
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
			categories: ['Puestos técnicos', 'Puestos administrativos', 'Puestos auxiliares', 'Puestos operaciones','A','B','C','D','E','F','G','H'],
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
			valueSuffix: ' USD anual'
		},
		series: [{
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_a_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_b_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_c_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_d_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_e_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_f_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_g_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_h_mujeres") %>]
		}, {
			name: 'Hombres',
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
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Número de opiniones'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Mujeres',
			'Hombres'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {text: 'Número de quejas' },
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
			name: 'Quejas recibidas',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_mujeres") %>]

		}, {
			name: 'Quejas atendidas',
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
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Número de opiniones'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Número de opiniones'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			title: { text: 'Número de personas'},
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
			name: 'Hombres en situación de acogerse',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_sit_de_acogerse") %>]
		}, {
			name: 'Hombres que efectivamente se acogen',
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
			categories: ['Licencia de maternidad / paternidad','Licencia de lactancia &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp','Reducción de jornada por guarda legal de personas a cargo','Excedencia por cuidado de personas a cargo'],
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
				text: 'Número de personas'
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
			name: 'Mujeres en situación de acogerse',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres") %>],
			stack: 'mujeres'
		}, {
			name: 'Mujeres que efectivamente se acogen',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_efect_se_acogen") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres") %>],
			stack: 'mujeres',
			color: '#222',
		}, {
			name: 'Hombres en situación de acogerse',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres") %>],
			stack: 'hombres'
		}, {
			name: 'Hombres que efectivamente se acogen',
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
			categories: ['Flexibilidad de horario negociada','Reducción de jornada por motivos personales','Excedencia remunerada por motivos personales','Excedencia no remunerada por motivos personales','Teletrabajo','Acercamiento al lugar de residencia','Guardería en el ámbito de la empresa/organización','Ayudas para la contratación de  servicio para guardería'],
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
	        		text: 'Número de personas'
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
	        	name: 'Mujeres en situación de acogerse',
	        	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres") %>],
	              	stack: 'mujeres'
	              }, {
	              	name: 'Mujeres que efectivamente se acogen',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres") %>],
	              	stack: 'mujeres',
	              	color: '#222',
	              }, {
	              	name: 'Hombres en situación de acogerse',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres") %>],
	              	stack: 'hombres'
	              }, {
	              	name: 'Hombres que efectivamente se acogen',
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
				text: 'Respuestas'
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
			name: 'Siempre',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_siempre") %>]


		}, {
			name: 'A veces',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_aveces") %>]

		},  {
			name: 'Nunca',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Número de opiniones'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: 'Número de opiniones'},
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
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
			'Totalmente en desacuerdo',
			'Desacuerdo',
			'Ni de acuerdo - ni en desacuerdo',
			'De acuerdo',
			'Totalmente de acuerdo'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: 'Porcentaje'
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
			name: 'Mujeres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: 'Hombres',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});	