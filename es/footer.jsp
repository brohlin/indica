	<footer>
		<hr>
		<div class="container footer-arriba">
			<div class="row">
				<div>
				<div class="col-md-3 text-hide "><fmt:message key="footer.label.col1" />
					<a><img alt="Indica Igualdad" src="/indica/assets/images/logo.png"></a>
				</div>
				</div>
				 <nav class="col-sm-12 col-md-3 navegacion2" role="navigation">
					<h4 class="titulo"><fmt:message key="footer.label.col2" /></h4>                    
					<ul class="nav nav-stacked">
						<!-- Comentados los links que no están disponibles antes del login -->
						<!-- <li><a href="#">AUTO-DIAGNÓSTICO</a></li> -->
						<!-- <li><a href="#">RESULTADOS</a></li> -->
						<li><a href="#"><fmt:message key="footer.label.downloads" /></a></li>
						<!-- <li><a href="#">ENVIAR ENCUESTA</a></li> -->
					</ul>
				
				</nav>  
				<section class="col-sm-12 col-md-3">
					<h4 class=" titulo"><fmt:message key="footer.label.col3" /></h4>
					<table class="table">
						<tbody class="paises text-hide" >
							<tr>
								<td><a class="brazil" href="#" title="Brazil">Brazil</a></td>
								<td><a class="chile" href="#" title="Chile">Chile</a></td>
								<td><a class="colombia" href="#" title="Colombia">Colombia</a></td>      
							</tr>
							<tr>
								<td><a class="costa-rica" href="#" title="Costa Rica">Costa Rica</a></td>
								<td><a class="cuba" href="#" title="Cuba">Cuba</a></td>
								<td><a class="el-salvador" href="#" title="El Salvador">El Salvador</a></td>
							</tr>
							<tr>
								<td><a class="honduras" href="#" title="Honduras">Honduras</a></td>
								<td><a class="mexico" href="#" title="Mexico">Mexico</a></td>
								<td><a class="nicaragua" href="#" title="Nicaragua">Nicaragua</a></td>
							</tr>
							<tr>
								<td><a class=" panama" href="#" title="Panama">Panam&aacute;</a></td>
								<td><a class="r-dominicana" href="#" title="Republica Dominicana">Rep&uacute;blica Dominicana</a></td>
								<td><a class="uruguay" href="#" title="Uruguay">Uruguay</a></td>
							</tr>
						</tbody>
					</table>
				</section>    
				<section class="col-sm-12 col-md-3">
				<h4 class="titulo"><fmt:message key="footer.label.col4" /></h4>
					<div class="logos-footer text-center">
					<a href="#"><img alt="PNUD" src="/indica/assets/images/logoPnud.png" ></a>
					<a href="#"><img alt="Genera Igualdad" src="/indica/assets/images/logo-genera.png"></a></div>
					
				</section>
			</div> <!-- end row -->
		</div> <!-- end container -->
		<hr>
		<section class="container">
		<h4 class="text-hide reset-margin">Redes sociales</h4>	
			<div class="row">
				<div class="col-sm-5 col-md-5">
					<ul class="social text-hide list-inline">
						<li><a class=" facebook" target="_blank" href="https://www.facebook.com/AmericaLatinaGenera" title="Facebook">Facebook</a></li>
						<li><a class="twitter" target="_blank"  href="https://twitter.com/PNUD_ALGenera" title="Twitter">Twitter</a></li>
						<li><a class="linkedin" target="_blank"  href="http://www.linkedin.com/pub/am%C3%A9ricalatinagenera-rsclac-pnud/24/192/a86" title="Linkedin">Linkedin</a></li>
						<li><a class="youtube" target="_blank"  href="http://www.youtube.com/user/RSCLACPNUDAreaGenero" title="Youtube">Youtube</a></li>
						<li><a class="scoopit" target="_blank"  href="http://www.scoop.it/t/genera-igualdad?sc_source=http%3A%2F%2F192.64.74.193%2F%7Egenera%2Fnewsite%2Findex.php%2Fes%2Finformate" title="Scoop It ">Scoop It!</a></li>
						 <li><a class="flipboard" target="_blank"  href="https://flipboard.com/section/revista-genera-igualdad-bP85HX" title="Flipboard ">Flipboard </a></li>
					</ul>
				</div>
				 <div class="col-sm-7 col-md-7 ">
				   <ul class="policies list-inline pull-right ">
					<li class="active"><a href="#"><fmt:message key="footer.label.terms" /> ·</a></li>
					<li><a href="#"><fmt:message key="footer.label.privacy" /> ·</a></li>
					<li><a href="#"><fmt:message key="footer.label.cookies" /></a></li> 
					   <li><span class="copyright"><fmt:message key="footer.label.copyright" /></span></li>   
				  </ul>
				</div>
			</div> <!--fin de row-->
		</section>
	</footer>	
	
	<!-- Latest compiled and minified JavaScript -->
	<!-- script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
	<!-- script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script -->	


	<script src="/indica/assets/js/jquery-2.1.0.min.js"></script>
	<!-- script src="/indica/assets/js/bootstrap.min.js"></script -->
	
	<script defer src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	
<!-- 	INICIALIZAR EL TOOLTIP Y EL POPOVER -->
	<script type="text/javascript">
	
	$(document).on("change", "#table1", function () {
		
		updateTableFields();
		
		$("#table1").find("input[id*='num_mujeres_table1_dyn_row_']").each(function(){			
			
			var a = parseFloat($('#'+this.id).val());
			if (isNaN(a)) { a = 0; }
			
			var x = parseFloat($('#num_subtotal_resto_plantilla_mujeres').val()) + parseFloat(a);
			var y = parseFloat($('#num_total_de_la_plantilla_mujeres').val()) + parseFloat(a);
			
			$('#num_subtotal_resto_plantilla_mujeres').val(x);
			$('#num_total_de_la_plantilla_mujeres').val(y);
	
		});
		
		
		$("#table1").find("input[id*='num_hombres_table1_dyn_row_']").each(function(){			
			
			var aa = parseFloat($('#'+this.id).val());
			if (isNaN(aa)) { aa = 0; }
			
			var xx = parseFloat($('#num_subtotal_resto_plantilla_hombres').val()) + parseFloat(aa);
			var yy = parseFloat($('#num_total_de_la_plantilla_hombres').val()) + parseFloat(aa);
			
			$('#num_subtotal_resto_plantilla_hombres').val(xx);
			$('#num_total_de_la_plantilla_hombres').val(yy);
	
		});
		
	});
	
	
	
	$(document).on("change", "#table2", function () {
		
		updateTableFields();
		
		$("#table2").find("input[id*='num_mujeres_table2_dyn_row_']").each(function(){			
			
			var a2 = parseFloat($('#'+this.id).val());
			if (isNaN(a2)) { a2 = 0; }
			
			var y2 = parseFloat($('#num_dept_total_mujeres').val()) + parseFloat(a2);
			
			$('#num_dept_total_mujeres').val(y2);
	
		});
		
		$("#table2").find("input[id*='num_hombres_table2_dyn_row_']").each(function(){			
			
			var aa2 = parseFloat($('#'+this.id).val());
			if (isNaN(aa2)) { aa2 = 0; }
			
			var yy2 = parseFloat($('#num_dept_total_hombres').val()) + parseFloat(aa2);
			
			$('#num_dept_total_hombres').val(yy2);
	
		});
		
		// Does the "Total de la Plantilla" match between table1 and table 2 mujeres
		if ($('#num_dept_total_mujeres').val() == $('#num_total_de_la_plantilla_mujeres').val() ) {
			$('#coinicide_con_tabla1_mujeres').val('<fmt:message key="footer.select.value.yes" />');	
		} else {
			$('#coinicide_con_tabla1_mujeres').val('<fmt:message key="footer.select.value.no" />');
		}
		
		// Does the "Total de la Plantilla" match between table1 and table 2 hombres
		if ($('#num_dept_total_hombres').val() == $('#num_total_de_la_plantilla_hombres').val() ) {
			$('#coinicide_con_tabla1_hombres').val('<fmt:message key="footer.select.value.yes" />');	
		} else {
			$('#coinicide_con_tabla1_hombres').val('<fmt:message key="footer.select.value.no" />');
		}
		
	});
	
	
	$( document ).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
  		$('[data-toggle="popover"]').popover();
  		
        var i=1;
        

        $("#add_row").click(function(){
			$('#dynamic_row').append("<div id=\"row" + i + "\"  class=\"row form-group\"><div class=\"col-xs-6 col-md-8\"><input maxlength=\"45\" type=\"text\" class=\"form-control\" name=\"__table1_dyn_row_" + i + "\"  placeholder=\"Ingrese otro tipo de puesto\"  value=\"\"></div><div class=\"col-xs-3 col-md-2\"><input type=\"text\"  class=\"form-control\" id=\"num_mujeres_table1_dyn_row_" + i + "\" name=\"num_mujeres_table1_dyn_row_" + i + "\" placeholder=\"\"  value=\"\"></div><div class=\"col-xs-3 col-md-2\"><input type=\"text\" class=\"form-control\" id=\"num_hombres_table1_dyn_row_" + i + "\" name=\"num_hombres_table1_dyn_row_" + i + "\" placeholder=\"\"  value=\"\"></div></div>");		
			i++; 
			
	        if (i>1) {
				$('.btn').removeClass('disabled');
	        	$('.btn').addClass('active');
	        } 
     	});
        
        $("#delete_row").click(function(){
            if(i>1){
				
				var b = parseFloat($('#num_mujeres_table1_dyn_row_' + (i-1)).val());
				if (isNaN(b)) { b = 0; }

				var bb = parseFloat($('#num_hombres_table1_dyn_row_' + (i-1)).val());
				if (isNaN(bb)) { bb = 0; }
				
            	$("#row"+(i-1)).remove();
            	i--;
									
				if (i<2) {
					$("#delete_row").removeClass('active');
					$("#delete_row").addClass('disabled');
				}
				
				var c = parseFloat($('#num_subtotal_resto_plantilla_mujeres').val()) - parseFloat(b);
				var d = parseFloat($('#num_total_de_la_plantilla_mujeres').val()) - parseFloat(b);
				
				$('#num_subtotal_resto_plantilla_mujeres').val(c);
				$('#num_total_de_la_plantilla_mujeres').val(d);
				
				var cc = parseFloat($('#num_subtotal_resto_plantilla_hombres').val()) - parseFloat(bb);
				var dd = parseFloat($('#num_total_de_la_plantilla_hombres').val()) - parseFloat(bb);
				
				$('#num_subtotal_resto_plantilla_hombres').val(cc);
				$('#num_total_de_la_plantilla_hombres').val(dd);
				
            }
        });  		
  		

        $("#empresa_plantilla_element8").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element8").checked;
        	
        	if (x) {        		
        		// document.getElementById("num_direccion_general_o_maximo_cargo_mujeres").value = "0";
        		// document.getElementById("num_direccion_general_o_maximo_cargo_hombres").value = "0";
        		
        		document.getElementById("num_direccion_general_o_maximo_cargo_mujeres").disabled = true;
        		document.getElementById("num_direccion_general_o_maximo_cargo_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_direccion_general_o_maximo_cargo_mujeres").disabled = false;
        		document.getElementById("num_direccion_general_o_maximo_cargo_hombres").disabled = false;
        		// location.reload(true);
        	}
			
     	});   
 
        
        $("#empresa_plantilla_element9").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element9").checked;
        	
        	if (x) {        		
        		document.getElementById("num_puestos_directivos_como_gerencias_mujeres").disabled = true;
        		document.getElementById("num_puestos_directivos_como_gerencias_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_puestos_directivos_como_gerencias_mujeres").disabled = false;
        		document.getElementById("num_puestos_directivos_como_gerencias_hombres").disabled = false;
        	}
			
     	});         
        
        
        $("#empresa_plantilla_element11").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element11").checked;
        	
        	if (x) {        		
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").disabled = true;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").disabled = false;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").disabled = false;
        	}
			
     	});     
        
        $("#empresa_plantilla_element13").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element13").checked;
        	
        	if (x) {        		
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").disabled = true;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").disabled = false;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").disabled = false;
        	}
			
     	}); 
        
        $("#empresa_plantilla_element15").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element15").checked;
        	
        	if (x) {        		
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").disabled = true;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").disabled = false;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").disabled = false;
        	}
			
     	}); 
        
        $("#empresa_plantilla_element17").click(function(){
        	
        	var x = document.getElementById("empresa_plantilla_element17").checked;
        	
        	if (x) {        		
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").disabled = true;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").disabled = true;
        		updateTableFields();
        	} else {
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").disabled = false;
        		document.getElementById("num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").disabled = false;
        	}
			
     	}); 
        
        var k=1;
        

        $("#add_row2").click(function(){
			$('#dynamic_row2').append("<div id=\"row" + k + "\"  class=\"row form-group\"><div class=\"col-xs-6 col-md-8\"><input maxlength=\"45\" type=\"text\" class=\"form-control\" name=\"__table2_dyn_row_" + k + "\"  placeholder=\"Ingrese otro tipo de puesto\"  value=\"\"></div><div class=\"col-xs-3 col-md-2\"><input type=\"text\"  class=\"form-control\" id=\"num_mujeres_table2_dyn_row_" + k + "\" name=\"num_mujeres_table2_dyn_row_" + k + "\" placeholder=\"\"  value=\"\"></div><div class=\"col-xs-3 col-md-2\"><input type=\"text\" class=\"form-control\" id=\"num_hombres_table2_dyn_row_" + k + "\" name=\"num_hombres_table2_dyn_row_" + k + "\" placeholder=\"\"  value=\"\"></div></div>");		
			k++; 
			
	        if (k>1) {
				$('.btn').removeClass('disabled');
	        	$('.btn').addClass('active');
	        } 
     	});
        
        $("#delete_row2").click(function(){
            if(k>1){
				
				var b2 = parseFloat($('#num_mujeres_table2_dyn_row_' + (k-1)).val());
				if (isNaN(b2)) { b2 = 0; }

				var bb2 = parseFloat($('#num_hombres_table2_dyn_row_' + (k-1)).val());
				if (isNaN(bb2)) { bb2 = 0; }
				
            	$("#row"+(k-1)).remove();
            	k--;
									
				if (k<2) {
					$("#delete_row2").removeClass('active');
					$("#delete_row2").addClass('disabled');
				}
				
				var d = parseFloat($('#num_dept_total_mujeres').val()) - parseFloat(b2);
				$('#num_dept_total_mujeres').val(d);
				
				var dd2 = parseFloat($('#num_dept_total_hombres').val()) - parseFloat(bb2);		
				$('#num_dept_total_hombres').val(dd2);
				
            }
        });
        
        
        
        
  		$('input').change(function(e)  {
  			updateTableFields();
  	    });
  		
		// Numeric only control handler
		jQuery.fn.ForceNumericOnly =
		function()
		{
		    return this.each(function()
		    {
		        $(this).keydown(function(e)
		        {
		            var key = e.charCode || e.keyCode || 0;
		            // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
		            // home, end, period, and numpad decimal
		            return (
		                key == 8 || 
		                key == 9 ||
		                key == 13 ||
		                key == 46 ||
		                key == 110 ||
		                key == 190 ||
		                (key >= 35 && key <= 40) ||
		                (key >= 48 && key <= 57) ||
		                (key >= 96 && key <= 105));
		        });
		    });
		};  		
  		
		
		// Check and make sure these fields are numeric
		$("#num_de_personas_trabajadores").ForceNumericOnly();
		$("#num_direccion_general_o_maximo_cargo_mujeres").ForceNumericOnly();
		$("#num_puestos_directivos_como_gerencias_mujeres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").ForceNumericOnly();
		$("#num_subtotal_cargos_responsabilidad_mujeres").ForceNumericOnly();
		$("#num_direccion_general_o_maximo_cargo_hombres").ForceNumericOnly();
		$("#num_puestos_directivos_como_gerencias_hombres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").ForceNumericOnly();
		$("#num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").ForceNumericOnly();
		$("#num_subtotal_cargos_responsabilidad_hombres").ForceNumericOnly();
		$("#num_puestos_tecnicos_mujeres").ForceNumericOnly();
		$("#num_puestos_administrativos_mujeres").ForceNumericOnly();
		$("#num_puestos_auxiliares_mujeres").ForceNumericOnly();
		$("#num_puestos_operarios_mujeres").ForceNumericOnly();
		$("#num_puestos_a_mujeres").ForceNumericOnly();
		$("#num_puestos_b_mujeres").ForceNumericOnly();
		$("#num_puestos_c_mujeres").ForceNumericOnly();
		$("#num_puestos_d_mujeres").ForceNumericOnly();
		$("#num_puestos_e_mujeres").ForceNumericOnly();
		$("#num_puestos_f_mujeres").ForceNumericOnly();
		$("#num_puestos_g_mujeres").ForceNumericOnly();
		$("#num_puestos_h_mujeres").ForceNumericOnly();
		$("#num_subtotal_resto_plantilla_mujeres").ForceNumericOnly();
		$("#num_total_de_la_plantilla_mujeres").ForceNumericOnly();
		$("#num_puestos_tecnicos_hombres").ForceNumericOnly();
		$("#num_puestos_administrativos_hombres").ForceNumericOnly();
		$("#num_puestos_auxiliares_hombres").ForceNumericOnly();
		$("#num_puestos_operarios_hombres").ForceNumericOnly();
		$("#num_puestos_a_hombres").ForceNumericOnly();
		$("#num_puestos_b_hombres").ForceNumericOnly();
		$("#num_puestos_c_hombres").ForceNumericOnly();
		$("#num_puestos_d_hombres").ForceNumericOnly();
		$("#num_puestos_e_hombres").ForceNumericOnly();
		$("#num_puestos_f_hombres").ForceNumericOnly();
		$("#num_puestos_g_hombres").ForceNumericOnly();
		$("#num_puestos_h_hombres").ForceNumericOnly();
		$("#num_subtotal_resto_plantilla_hombres").ForceNumericOnly();
		$("#num_total_de_la_plantilla_hombres").ForceNumericOnly();
		$("#num_dept_administracion_mujeres").ForceNumericOnly();
		$("#num_dept_comercial_y_ventas_mujeres").ForceNumericOnly();
		$("#num_dept_logistica_mujeres").ForceNumericOnly();
		$("#num_dept_produccion_mujeres").ForceNumericOnly();
		$("#num_dept_financiero_mujeres").ForceNumericOnly();
		$("#num_dept_recursos_humanos_mujeres").ForceNumericOnly();
		$("#num_dept_a_mujeres").ForceNumericOnly();
		$("#num_dept_b_mujeres").ForceNumericOnly();
		$("#num_dept_c_mujeres").ForceNumericOnly();
		$("#num_dept_d_mujeres").ForceNumericOnly();
		$("#num_dept_e_mujeres").ForceNumericOnly();
		$("#num_dept_total_mujeres").ForceNumericOnly();
		$("#num_dept_administracion_hombres").ForceNumericOnly();
		$("#num_dept_comercial_y_ventas_hombres").ForceNumericOnly();
		$("#num_dept_logistica_hombres").ForceNumericOnly();
		$("#num_dept_produccion_hombres").ForceNumericOnly();
		$("#num_dept_financiero_hombres").ForceNumericOnly();
		$("#num_dept_recursos_humanos_hombres").ForceNumericOnly();
		$("#num_dept_a_hombres").ForceNumericOnly();
		$("#num_dept_b_hombres").ForceNumericOnly();
		$("#num_dept_c_hombres").ForceNumericOnly();
		$("#num_dept_d_hombres").ForceNumericOnly();
		$("#num_dept_e_hombres").ForceNumericOnly();
		$("#num_dept_total_hombres").ForceNumericOnly();
		$("#num_total_integrantes_consejo_de_direccion_mujeres").ForceNumericOnly();
		$("#num_total_integrantes_consejo_de_direccion_hombres").ForceNumericOnly();
		$("#num_jornada_completa_contrato_indefinido_mujeres").ForceNumericOnly();
		$("#num_jornada_completa_contrato_temporal_mujeres").ForceNumericOnly();
		$("#num_subtotal_jornada_completa_mujeres").ForceNumericOnly();
		$("#num_jornada_partial_contrato_indefinido_mujeres").ForceNumericOnly();
		$("#num_jornada_partial_contrato_temporal_mujeres").ForceNumericOnly();
		$("#num_subtotal_jornada_partial_mujeres").ForceNumericOnly();
		$("#num_total_jornada_contracto_mujeres").ForceNumericOnly();
		$("#num_jornada_completa_contrato_indefinido_hombres").ForceNumericOnly();
		$("#num_jornada_completa_contrato_temporal_hombres").ForceNumericOnly();
		$("#num_subtotal_jornada_completa_hombres").ForceNumericOnly();
		$("#num_jornada_partial_contrato_indefinido_hombres").ForceNumericOnly();
		$("#num_jornada_partial_contrato_temporal_hombres").ForceNumericOnly();
		$("#num_subtotal_jornada_partial_hombres").ForceNumericOnly();
		$("#num_total_jornada_contracto_hombres").ForceNumericOnly();
		$("#salario_direccion_general_o_maximo_cargo_mujeres").ForceNumericOnly();
		$("#salario_puestos_directivos_como_gerencias_mujeres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").ForceNumericOnly();
		$("#salario_subtotal_cargos_responsabilidad_mujeres").ForceNumericOnly();
		$("#salario_direccion_general_o_maximo_cargo_hombres").ForceNumericOnly();
		$("#salario_puestos_directivos_como_gerencias_hombres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").ForceNumericOnly();
		$("#salario_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").ForceNumericOnly();
		$("#salario_puestos_tecnicos_mujeres").ForceNumericOnly();
		$("#salario_puestos_administrativos_mujeres").ForceNumericOnly();
		$("#salario_puestos_auxiliares_mujeres").ForceNumericOnly();
		$("#salario_puestos_operarios_mujeres").ForceNumericOnly();
		$("#salario_puestos_a_mujeres").ForceNumericOnly();
		$("#salario_puestos_b_mujeres").ForceNumericOnly();
		$("#salario_puestos_c_mujeres").ForceNumericOnly();
		$("#salario_puestos_d_mujeres").ForceNumericOnly();
		$("#salario_puestos_e_mujeres").ForceNumericOnly();
		$("#salario_puestos_f_mujeres").ForceNumericOnly();
		$("#salario_puestos_g_mujeres").ForceNumericOnly();
		$("#salario_puestos_h_mujeres").ForceNumericOnly();
		$("#salario_puestos_tecnicos_hombres").ForceNumericOnly();
		$("#salario_puestos_administrativos_hombres").ForceNumericOnly();
		$("#salario_puestos_auxiliares_hombres").ForceNumericOnly();
		$("#salario_puestos_operarios_hombres").ForceNumericOnly();
		$("#salario_puestos_a_hombres").ForceNumericOnly();
		$("#salario_puestos_b_hombres").ForceNumericOnly();
		$("#salario_puestos_c_hombres").ForceNumericOnly();
		$("#salario_puestos_d_hombres").ForceNumericOnly();
		$("#salario_puestos_e_hombres").ForceNumericOnly();
		$("#salario_puestos_f_hombres").ForceNumericOnly();
		$("#salario_puestos_g_hombres").ForceNumericOnly();
		$("#salario_puestos_h_hombres").ForceNumericOnly();
		$("#num_licencia_de_paternidad_en_sit_de_acogerse").ForceNumericOnly();
		$("#num_licencia_de_paternidad_en_efect_se_acogen").ForceNumericOnly();
		$("#num_licencia_de_lactancia_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_licencia_de_lactancia_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_reduc_jornada_guardar_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_reduc_jornada_guardar_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_excedencia_por_cuidado_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_excedencia_por_cuidado_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_licencia_de_maternidad_en_sit_de_acogerse").ForceNumericOnly();
		$("#num_licencia_de_maternidad_en_efect_se_acogen").ForceNumericOnly();
		$("#num_licencia_de_lactancia_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_licencia_de_lactancia_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_reduc_jornada_guardar_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_reduc_jornada_guardar_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_excedencia_por_cuidado_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_excedencia_por_cuidado_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_flex_entrada_salida_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_flex_entrada_salida_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_flex_horario_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_flex_horario_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_reduc_jornada_mot_pers_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_reduc_jornada_mot_pers_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_excedencia_remunerada_mot_pers_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_teletrabajo_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_teletrabajo_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_acerc_lugar_residencia_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_acerc_lugar_residencia_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_guaderia_ambito_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_guaderia_ambito_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_ayuda_contrat_guaderia_en_sit_de_acogerse_mujeres").ForceNumericOnly();
		$("#num_ayuda_contrat_guaderia_en_efect_se_acogen_mujeres").ForceNumericOnly();
		$("#num_flex_entrada_salida_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_flex_entrada_salida_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_flex_horario_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_flex_horario_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_reduc_jornada_mot_pers_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_reduc_jornada_mot_pers_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_excedencia_remunerada_mot_pers_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_excedencia_remunerada_mot_pers_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_excedencia_no_remunerada_mot_pers_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_excedencia_no_remunerada_mot_pers_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_teletrabajo_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_teletrabajo_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_acerc_lugar_residencia_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_acerc_lugar_residencia_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_guaderia_ambito_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_guaderia_ambito_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_ayuda_contrat_guaderia_en_sit_de_acogerse_hombres").ForceNumericOnly();
		$("#num_ayuda_contrat_guaderia_en_efect_se_acogen_hombres").ForceNumericOnly();
		$("#num_quejas_recibidas_acoso_sexual_mujeres").ForceNumericOnly();
		$("#num_quejas_atendidas_acoso_sexual_mujeres").ForceNumericOnly();
		$("#num_atenc_acoso_sexual_procesos_de_reclut_seleccion_mujeres").ForceNumericOnly();
		$("#num_atenc_acoso_sexual_procesos_de_promocion_movilidad_mujeres").ForceNumericOnly();
		$("#num_quejas_recibidas_acoso_sexual_hombres").ForceNumericOnly();
		$("#num_quejas_atendidas_acoso_sexual_hombres").ForceNumericOnly();
		$("#num_atenc_acoso_sexual_procesos_de_reclut_seleccion_hombres").ForceNumericOnly();
		$("#num_atenc_acoso_sexual_procesos_de_promocion_movilidad_hombres").ForceNumericOnly();
		$("#num_jornadas_anuales_pactadas_convenio_por_trab").ForceNumericOnly();
		$("#num_total_jornadas_anuales_pactadas_convenio_mujeres").ForceNumericOnly();
		$("#num_total_jornadas_anuales_pactadas_convenio_hombres").ForceNumericOnly();
		$("#num_jornadas_perdidas_mujeres").ForceNumericOnly();
		$("#num_jornadas_perdidas_hombres").ForceNumericOnly();
		$("#num_personas_cesaron_actividades_mujeres").ForceNumericOnly();
		$("#num_personas_cesaron_actividades_hombres").ForceNumericOnly();
		$("#num_total_mujeres_tomaron_licencia_de_maternidad").ForceNumericOnly();
		$("#num_mujeres_no_se_reincoroporaron_tras_la_licencia").ForceNumericOnly();
		$("#num_mujeres_se_reincoroporaron_tras_la_licencia").ForceNumericOnly();
		$("#num_participantes_procesos_reclutamiento_y_seleccion_mujeres").ForceNumericOnly();
		$("#num_contrataciones_realizadas_mujeres").ForceNumericOnly();
		$("#num_participantes_procesos_reclutamiento_y_seleccion_hombres").ForceNumericOnly();
		$("#num_contrataciones_realizadas_hombres").ForceNumericOnly();
		$("#num_participantes_procesos_de_promocion_mujeres").ForceNumericOnly();
		$("#num_promociones_realizadas_mujeres").ForceNumericOnly();
		$("#num_participantes_procesos_de_promocion_hombres").ForceNumericOnly();
		$("#num_promociones_realizadas_hombres").ForceNumericOnly();
		$("#num_personas_efectivamente_formadas_mujeres").ForceNumericOnly();
		$("#num_total_horas_de_capacitacion_mujeres").ForceNumericOnly();
		$("#num_personas_efectivamente_formadas_hombres").ForceNumericOnly();
		$("#num_total_horas_de_capacitacion_hombres").ForceNumericOnly();		
		
		
	});
	
	</script>
	
	<script src="/RGraph/libraries/RGraph.common.core.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.key.js" ></script>
	<script src="/RGraph/libraries/RGraph.hbar.js" ></script>
	<script src="/RGraph/libraries/RGraph.bar.js" ></script>
	<!-- script src="/RGraph/libraries/RGraph.common.dynamic.js" ></script -->
	<script src="/RGraph/libraries/RGraph.common.tooltips.js" ></script>
	<script src="/RGraph/libraries/RGraph.common.effects.js" ></script>
	<script src="/RGraph/libraries/RGraph.pie.js" ></script>
	<!--[if lt IE 9]><script src="/RGraph/excanvas/excanvas.js"></script><![endif]-->	


<script language="Javascript">
 
	function confirmEnviar() {
		alert("Hello");
		
		
		return confirm("Are you sure you want to continue");
		
		/*
		if (answer==true)
		  {
		    return true;
		  }
		else
		  {
		    return false;
		  }
		}
		*/
	}
 
</script>

</body>
</html>