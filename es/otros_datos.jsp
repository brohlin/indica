<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


	Highcharts.Renderer.prototype.symbols.line = function(x, y, width, height) {
		return ['M',x ,y + width / 2,'L',x+height,y + width / 2];
	};
		//-------------------------------------------------------
		Highcharts.setOptions({
			chart: {
				type: 'line',
				 height: 300,
			},
			legend:{enabled:false},
			title: {
				text: ''
			},
			tooltip: {
				formatter: 
	            function() {
	                if (this.y == 1){
	                   return  '<b>'+ this.x + '</b>' + '<br/>' + '<fmt:message key="otros_datos.element1" />'
	                } else if (this.y == 3){
	                    return '<b>'+ this.x + '</b>' + '<br/>' + '<fmt:message key="otros_datos.element2" />'
	                }  else if (this.y == 2){
	                    return '<b>'+ this.x + '</b>' + '<br/>' + '<fmt:message key="otros_datos.element3" />'
	                };
				} ,

			},
			xAxis:{
				title: {
					text: '',
				},
			},

			yAxis: {
				tickWidth:0,
				title: {
					text: ''
				},
				labels:{
					formatter: function() {
						return "";
					} 
				},
				min: 0.5,
				minorGridLineWidth: 0,
				gridLineWidth: 0,
				alternateGridColor: null,
				plotBands: [{ 
				// <fmt:message key="otros_datos.element1" /> equivale 1
				from:1.4,
				to: 1.5,

				color: '#ba0e00',
				label: {
					text: '<fmt:message key="otros_datos.element1" />',
					y:15,
					
					style: {
						color: 'black'
					}
				}
			}, { // <fmt:message key="otros_datos.element3" /> equivale a 2
				from: 2.4,
				to: 2.5,
				color: '#f8c200',
				label: {
					text: '<fmt:message key="otros_datos.element3" />',
					y:15,
					style: {
						color: 'black'
					}
				}
			},{ // <fmt:message key="otros_datos.element2" /> equivale a 3
				from: 3.4,
				to: 3.5,
				color: '#9abc4d',
				label: {
					text: '<fmt:message key="otros_datos.element2" />',
					y:15,
					style: {
						color: 'black'
					}
				}
			} ]
		},
		
		credits: {
			enabled: false
		},


	});


//----------------------RESUMEN DE OTROS DATOS, VALORES ESPECIFICOS--------------------
//-------------------------------------------------------otros 1
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-1',
	},
	xAxis:{
		categories:['<fmt:message key="otros_datos.element4" /> 1', '<fmt:message key="otros_datos.element4" /> 2', '<fmt:message key="otros_datos.element4" /> 3', '<fmt:message key="otros_datos.element4" /> 4']
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q1_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q1_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q1_lkup").equals("91")) { %>1<% } %>,<% if (session.getAttribute("temp_admin_organization_q2_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q2_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q2_lkup").equals("91")) { %>1<% } %>,<% if (session.getAttribute("temp_admin_organization_q3_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q3_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q3_lkup").equals("91")) { %>1<% } %>,<% if (session.getAttribute("temp_admin_organization_q43_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q43_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q43_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 2
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-2',
	},
	xAxis:{
		categories:['P. 5', 'P. 6', 'P. 7', 'P. 8']
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q4_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q4_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q4_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q5_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q5_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q5_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q6_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q6_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q6_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q44_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q44_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q44_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 3
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-3',
	},
	xAxis:{
		categories:['P. 9', 'P. 10', 'P. 11', 'P. 12', 'P. 13', 'P. 14', 'P. 15', 'P. 16', 'P. 17' ]
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q7_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q7_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q7_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q8_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q8_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q8_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q9_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q9_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q9_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q10_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q10_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q10_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q11_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q11_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q11_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q12_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q12_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q12_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q13_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q13_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q13_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q14_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q14_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q14_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q45_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q45_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q45_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 4
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-4',
	},
	xAxis:{
		categories:['P. 18', 'P. 19', 'P. 20', 'P. 21', 'P. 22', 'P. 23', 'P. 24', 'P. 25' ]
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q15_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q15_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q15_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q16_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q16_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q16_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q17_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q17_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q17_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q18_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q18_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q18_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q19_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q19_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q19_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q20_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q20_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q20_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q21_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q21_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q21_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q46_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q46_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q46_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 5
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-5',
	},
	xAxis:{
		categories:['P. 26', 'P. 27', 'P. 28', 'P. 29', 'P. 30', 'P. 31', 'P. 31', 'P. 33' ]
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q22_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q22_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q22_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q23_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q23_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q23_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q24_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q24_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q24_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q25_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q25_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q25_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q26_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q26_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q26_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q27_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q27_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q27_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q28_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q28_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q28_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q47_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q47_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q47_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 6
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-6',
	},
	xAxis:{
		categories:['P. 34', 'P. 35', 'P. 36', 'P. 37', 'P. 38']
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q29_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q29_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q29_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q30_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q30_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q30_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q31_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q31_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q31_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q32_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q32_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q32_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q33_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q33_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q33_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 7
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-7',
	},
	xAxis:{
		categories:['P. 39', 'P. 40', 'P. 41', 'P. 42', 'P. 43', 'P. 44', 'P. 45', 'P. 46' , 'P. 47', 'P. 48', 'P. 49' ]
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q34_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q34_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q34_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q35_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q35_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q35_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q36_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q36_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q36_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q37_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q37_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q37_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q38_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q38_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q38_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q39_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q39_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q39_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q40_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q40_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q40_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q41_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q41_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q41_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q42_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q42_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q42_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q48_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q48_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q48_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q49_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q49_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q49_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});
//-------------------------------------------------------otros 8
var chart_1 = new Highcharts.Chart({
	chart:{
		renderTo:'gr-otros-8',
	},
	xAxis:{
		categories:['P. 50', 'P. 51', 'P. 52', 'P. 53', 'P. 54', 'P. 55', 'P. 56' , 'P. 57', 'P. 58', 'P. 59']
	},
	series: [{
		data: [<% if (session.getAttribute("temp_admin_organization_q50_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q50_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q50_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q51_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q51_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q51_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q52_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q52_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q52_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q53_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q53_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q53_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q54_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q54_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q54_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q55_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q55_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q55_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q56_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q56_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q56_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q57_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q57_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q57_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q58_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q58_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q58_lkup").equals("91")) { %>1<% } %>,
<% if (session.getAttribute("temp_admin_organization_q59_lkup").equals("89")) { %>3<% } else if (session.getAttribute("temp_admin_organization_q59_lkup").equals("90")) { %>2<% } else if (session.getAttribute("temp_admin_organization_q59_lkup").equals("91")) { %>1<% } %>],
		color: "grey",
	}]
});



