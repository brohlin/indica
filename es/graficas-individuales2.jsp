<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

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

//<!-- !!!!!!!!!!!!!!!!!! BOB GRAFICA   INDIVIDUAL GE1 !!!!!!!!!!!!!!!!!!-->

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
						format: '<b><fmt:message key="graficas-individuales.element1" /><br>{point.name}</b>:<br>{point.percentage:.1f} %',
						style: {
							color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
						}
					}
				}
			},
			series: [{
				type: 'pie',
				name: '<fmt:message key="graficas-individuales.element2" />',
				data: [
				['<fmt:message key="graficas-individuales.element3" />',   <%= session.getAttribute("temp_empresa_resultados_ge1_num_jornadas_asistidas") %>],

				{
					name: '<fmt:message key="graficas-individuales.element4" />',
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
			'<fmt:message key="graficas-individuales.element5" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" /> %'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge2_tasa_ausentisom_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element8" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" /> %'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge3_tasa_de_cese_de_actividades_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element9" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge4_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge5_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge7_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_ge8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			title: {		text: '<fmt:message key="graficas-individuales.element20" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp1_total_mujeres") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
				categories: ['<fmt:message key="graficas-individuales.element21" />',
				'<fmt:message key="graficas-individuales.element22" />',
				'<fmt:message key="graficas-individuales.element23" />',
				'<fmt:message key="graficas-individuales.element24" />',
				'<fmt:message key="graficas-individuales.element25" />',
				'<fmt:message key="graficas-individuales.element26" />',
				'<fmt:message key="graficas-individuales.element27" />',
				'<fmt:message key="graficas-individuales.element28" />',
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
							return '<b><fmt:message key="graficas-individuales.element29" /> ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: 
					[
					{
						name: '<fmt:message key="graficas-individuales.element6" />', 
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
						name: '<fmt:message key="graficas-individuales.element7" />',
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
				categories: ['<fmt:message key="graficas-individuales.element21" />',
				'<fmt:message key="graficas-individuales.element22" />',
				'<fmt:message key="graficas-individuales.element23" />',
				'<fmt:message key="graficas-individuales.element24" />',
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
							return '<b><fmt:message key="graficas-individuales.element29" /> ' + this.series.name + ' en:<br/>' + this.point.category + '</b><br/>' + Highcharts.numberFormat(Math.abs(this.point.y), 0) + '%';
						}
					},
					series: [
					{name: '<fmt:message key="graficas-individuales.element6" />', data: [-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>,-<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>]}, 
					{name: '<fmt:message key="graficas-individuales.element7" />', data: [<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_direccion_general_o_maximo_cargo_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp3_pct_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]}
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
			name: '<fmt:message key="graficas-individuales.element2" />',
			data: [
			['<fmt:message key="graficas-individuales.element6" />',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_mujeres") %>],
			['<fmt:message key="graficas-individuales.element7" />',   <%= session.getAttribute("temp_empresa_resultados_cp4_pct_hombres") %>]
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
			categories: ['<fmt:message key="graficas-individuales.element21" />',
			'<fmt:message key="graficas-individuales.element30" />',
			'<fmt:message key="graficas-individuales.element23" />',
			'<fmt:message key="graficas-individuales.element24" />'],
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp4_num_direccion_general_o_maximo_cargo_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_puestos_directivos_como_gerencias_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cp4_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>]
		},	
		{
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			name: '<fmt:message key="graficas-individuales.element2" />',
			data: [
			['<fmt:message key="graficas-individuales.element6" />',   <%= session.getAttribute("temp_empresa_resultados_cp5_pct_mujeres") %>],

			{
				name: '<fmt:message key="graficas-individuales.element7" />',
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
			categories: ['<fmt:message key="graficas-individuales.element6" />', '<fmt:message key="graficas-individuales.element7" />']
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
			            		name: '<fmt:message key="graficas-individuales.element31" />',

			            	}, {
			            		type: 'line',
			            		data: [1, 1],
			            		name: '<fmt:message key="graficas-individuales.element32" />',
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
			categories: ['<fmt:message key="graficas-individuales.element6" />', '<fmt:message key="graficas-individuales.element7" />']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element20" />'
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
			name: '<fmt:message key="graficas-individuales.element33" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element35" />'
		}, {
			name: '<fmt:message key="graficas-individuales.element34" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element35" />',
			color: '#222'
			// Añadí dos stacks más porque Guillermina quiere el comparativo entre todas las variables juntas: sexo, contrato y jornada. Y puse las variables del cp9 porque creo que son esas las que sirven. Aunque al 25 de feb. queda vacio el último: parcial-temporal- hombre/mujer
		}, {  
			name: '<fmt:message key="graficas-individuales.element36" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element37" />'
		}, {
			name: '<fmt:message key="graficas-individuales.element38" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element37" />'
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
				text: '<fmt:message key="graficas-individuales.element2" /> %'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp8_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			categories: ['<fmt:message key="graficas-individuales.element6" />', '<fmt:message key="graficas-individuales.element7" />']
		},

		yAxis: {
			allowDecimals: false,
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element20" />'
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
			name: '<fmt:message key="graficas-individuales.element39" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_completa_contrato_indefinido_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element40" />',
			
		}, {  
			name: '<fmt:message key="graficas-individuales.element41" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_completa_contrato_temporal_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element40" />',
			color: '#222',

		}, {
			name: '<fmt:message key="graficas-individuales.element42" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp7_num_jornada_partial_contrato_indefinido_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element44" />',
		},  {
			name: '<fmt:message key="graficas-individuales.element43" />',
			data: [
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_mujeres") %>, 
			<%= session.getAttribute("temp_empresa_resultados_cp9_num_jornada_partial_contrato_temporal_hombres") %>
			],
			stack: '<fmt:message key="graficas-individuales.element44" />'
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
				text: '<fmt:message key="graficas-individuales.element2" /> %'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cp10_pct_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
				text: '<fmt:message key="graficas-individuales.element45" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			name: '<fmt:message key="graficas-individuales.element2" />',
			data: [
			['<fmt:message key="graficas-individuales.element6" />',   <%= session.getAttribute("temp_empresa_resultados_rs2_mujeres") %>],
			['<fmt:message key="graficas-individuales.element7" />',   <%= session.getAttribute("temp_empresa_resultados_rs2_hombres") %>],
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
			'<fmt:message key="graficas-individuales.element9" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs3_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_rs5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
				text: '<fmt:message key="graficas-individuales.element45" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp1_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			name: '<fmt:message key="graficas-individuales.element2" />',
			data: [
			['<fmt:message key="graficas-individuales.element6" />',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_mujeres") %>],
			['<fmt:message key="graficas-individuales.element7" />',   <%= session.getAttribute("temp_empresa_resultados_dp2_pct_hombres") %>],
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
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp3_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp4_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp5_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			title: { text: '<fmt:message key="graficas-individuales.element46" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp6_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp7_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp8_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_dp9_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			title: {text: '<fmt:message key="graficas-individuales.element20" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r1_num_total_de_la_plantilla_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R2 -->
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
			title: { text: '<fmt:message key="graficas-individuales.element47" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_average_salario_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_average_salario_hombres") %>]

		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R2_2 -->
$(function () {
	$('#gr-r2-2').highcharts({
		chart: {
			type: 'bar'
		},
		xAxis: {
			categories: ['<fmt:message key="graficas-individuales.element21" />', 'Puestos directivos', '<fmt:message key="graficas-individuales.element23" />', 'Otras jefaturas -Nivel- 3','<fmt:message key="graficas-individuales.element48" />', '<fmt:message key="graficas-individuales.element49" />'],
			title: {
				text: null
			},

		},
		yAxis: {
			min: 0,
			lineWidth: 1,
			title: {
				text: '<fmt:message key="graficas-individuales.element50" />',
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
			valueSuffix: ' <fmt:message key="graficas-individuales.element51" />'
		},
		series: [{
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r2_salario_direccion_general_o_maximo_cargo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_puestos_directivos_como_gerencias_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_r2_salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres") %>]
		}]
	});
});
// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL // R3 -->
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
				text: '<fmt:message key="graficas-individuales.element47" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_average_salario_mujeres") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_average_salario_hombres") %>]

		}]
	});
});
/// <!-- !!!!!!!!!!!!!!!!!!  GRAFICA   INDIVIDUAL/ R3_2 -->
$(function () {
	$('#gr-r3-2').highcharts({
		chart: {
			type: 'bar'
		},
		xAxis: {
			categories: ['<fmt:message key="graficas-individuales.element25" />', '<fmt:message key="graficas-individuales.element26" />', '<fmt:message key="graficas-individuales.element27" />', '<fmt:message key="graficas-individuales.element28" />','A','B','C','D','E','F','G','H'],
			title: {
				text: null
			}
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {
				text: 'Salario al año (USD)',
				align: 'high'
			},
			labels: {
				overflow: 'justify'
			}
		},
		tooltip: {
			valueSuffix: ' <fmt:message key="graficas-individuales.element52" />'
		},
		series: [{
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_tecnicos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_administrativos_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_auxiliares_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_operarios_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_a_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_b_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_c_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_d_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_e_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_f_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_g_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_r3_salario_puestos_h_mujeres") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r4_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element19" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_r6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element6" />',
			'<fmt:message key="graficas-individuales.element7" />'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: {text: '<fmt:message key="graficas-individuales.element53" />' },
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
			name: '<fmt:message key="graficas-individuales.element54" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_recibidas_acoso_sexual_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_pv1_num_quejas_atendidas_acoso_sexual_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element55" />',
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
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv2_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: '<fmt:message key="graficas-individuales.element19" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv3_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv4_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: '<fmt:message key="graficas-individuales.element19" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_pv6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			title: { text: '<fmt:message key="graficas-individuales.element20" />'},
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
			name: '<fmt:message key="graficas-individuales.element62" />,
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls1_num_licencia_de_paternidad_en_sit_de_acogerse") %>]
		}, {
			name: '<fmt:message key="graficas-individuales.element63" />',
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
			categories: ['<fmt:message key="graficas-individuales.element56" />','<fmt:message key="graficas-individuales.element57" /> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp','<fmt:message key="graficas-individuales.element58" />','<fmt:message key="graficas-individuales.element59" />'],
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
				text: '<fmt:message key="graficas-individuales.element20" />'
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
			name: '<fmt:message key="graficas-individuales.element60" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres") %>],
			stack: 'mujeres'
		}, {
			name: '<fmt:message key="graficas-individuales.element61" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_maternidad_en_efect_se_acogen") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_efect_se_acogen_mujeres") %>],
			stack: 'mujeres',
			color: '#222',
		}, {
			name: '<fmt:message key="graficas-individuales.element62" />,
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_paternidad_en_sit_de_acogerse") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_licencia_de_lactancia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_reduc_jornada_guardar_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls2_num_excedencia_por_cuidado_en_sit_de_acogerse_hombres") %>],
			stack: 'hombres'
		}, {
			name: '<fmt:message key="graficas-individuales.element63" />',
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
			categories: ['<fmt:message key="graficas-individuales.element64" />','<fmt:message key="graficas-individuales.element65" />','<fmt:message key="graficas-individuales.element66" />','<fmt:message key="graficas-individuales.element67" />','<fmt:message key="graficas-individuales.element68" />','<fmt:message key="graficas-individuales.element69" />','<fmt:message key="graficas-individuales.element70" />','<fmt:message key="graficas-individuales.element71" />'],
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
	        		text: '<fmt:message key="graficas-individuales.element20" />'
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
	        	name: '<fmt:message key="graficas-individuales.element60" />',
	        	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres") %>],
	              	stack: 'mujeres'
	              }, {
	              	name: '<fmt:message key="graficas-individuales.element61" />',
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_efect_se_acogen_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_efect_se_acogen_mujeres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres") %>],
	              	stack: 'mujeres',
	              	color: '#222',
	              }, {
	              	name: '<fmt:message key="graficas-individuales.element62" />,
	              	data: [<%= session.getAttribute("temp_empresa_resultados_cfls3_num_flex_horario_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_teletrabajo_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_acerc_lugar_residencia_en_sit_de_acogerse_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls3_num_guaderia_ambito_en_sit_de_acogerse_hombres") %>,<%= session.getAttribute("temp_empresa_resultados_cfls3_num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres") %>],
	              	stack: 'hombres'
	              }, {
	              	name: '<fmt:message key="graficas-individuales.element63" />',
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
				text: '<fmt:message key="graficas-individuales.element10" />'
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
			name: '<fmt:message key="graficas-individuales.element11" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_siempre") %>]


		}, {
			name: '<fmt:message key="graficas-individuales.element12" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls4_respuesta_aveces") %>]

		},  {
			name: '<fmt:message key="graficas-individuales.element13" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: '<fmt:message key="graficas-individuales.element19" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls5_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls6_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			gridLineWidth:1,
			min: 0,
			title: { text: '<fmt:message key="graficas-individuales.element19" />'},
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls7_num_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
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
			'<fmt:message key="graficas-individuales.element14" />',
			'<fmt:message key="graficas-individuales.element15" />',
			'<fmt:message key="graficas-individuales.element16" />',
			'<fmt:message key="graficas-individuales.element17" />',
			'<fmt:message key="graficas-individuales.element18" />'
			]
		},
		yAxis: {
			min: 0,
			title: {
				text: '<fmt:message key="graficas-individuales.element2" />'
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
			name: '<fmt:message key="graficas-individuales.element6" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_mujeres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_mujeres") %>]

		}, {
			name: '<fmt:message key="graficas-individuales.element7" />',
			data: [<%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_ni_en_acuerdo_ni_en_desacuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_de_acuerdo_hombres") %>, <%= session.getAttribute("temp_empresa_resultados_cfls8_pct_respuesta_totalmente_en_acuerdo_hombres") %>]

		}]
	});
});	

<!--  BOB -->