	<footer>
		<hr>
		<div class="container footer-arriba">
			<div class="row">
				<div>
				<div class="col-md-3 text-hide ">Logo Indica Igualdad
					<a><img alt="Indica Igualdad" src="/indica/assets/images/logo.png"></a>
				</div>
				</div>
				 <nav class="col-sm-12 col-md-3 navegacion2" role="navigation">
					<h4 class="titulo">Indica Igualdad</h4>                    
					<ul class="nav nav-stacked">
						<!-- Comentados los links que no están disponibles antes del login -->
						<!-- <li><a href="#">AUTO-DIAGNÓSTICO</a></li> -->
						<!-- <li><a href="#">RESULTADOS</a></li> -->
						<li><a href="#">DESCARGAS</a></li>
						<!-- <li><a href="#">ENVIAR ENCUESTA</a></li> -->
					</ul>
				
				</nav>  
				<section class="col-sm-12 col-md-3">
					<h4 class=" titulo">Consulta por países</h4>
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
				<h4 class="titulo">Sitios de interés</h4>
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
					<li class="active"><a href="#">T&eacute;rminos de uso ·</a></li>
					<li><a href="#">Privacidad ·</a></li>
					<li><a href="#">Pol&iacute;ticas de cookies</a></li> 
					   <li><span class="copyright">&copy;  2014 INDICA IGUALDAD</span></li>   
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
	$( document ).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
  		$('[data-toggle="popover"]').popover();
  		
  		$('input').change(function(e)  {
  			
  		// Empresa Gestion del Personal calculated fields
  	        var v_num_total_jornadas_anuales_pactadas_convenio_mujeres = 0;
  	      	var v_num_total_jornadas_anuales_pactadas_convenio_hombres = 0;
  	        var v_num_jornadas_anuales_pactadas_convenio_por_trab = parseFloat($('#num_jornadas_anuales_pactadas_convenio_por_trab').val());
  	        var v_num_total_de_la_plantilla_mujeres = parseFloat($('#num_total_de_la_plantilla_mujeres').val());
  	      	var v_num_total_de_la_plantilla_hombres  = parseFloat($('#num_total_de_la_plantilla_hombres').val());
  	        var v_num_total_de_la_plantilla_mujeres2 = parseFloat($('#num_total_de_la_plantilla_mujeres2').val());
  	      	var v_num_total_de_la_plantilla_hombres2  = parseFloat($('#num_total_de_la_plantilla_hombres2').val());
  	      	
  	      	if (isNaN(v_num_jornadas_anuales_pactadas_convenio_por_trab)) { v_num_jornadas_anuales_pactadas_convenio_por_trab = 0; }
  	      	if (isNaN(v_num_total_de_la_plantilla_mujeres)) { v_num_total_de_la_plantilla_mujeres = 0; }
  	      	if (isNaN(v_num_total_de_la_plantilla_hombres)) { v_num_total_de_la_plantilla_hombres = 0; }
  	      	if (isNaN(v_num_total_de_la_plantilla_mujeres2)) { v_num_total_de_la_plantilla_mujeres2 = 0; }
  	      	if (isNaN(v_num_total_de_la_plantilla_hombres2)) { v_num_total_de_la_plantilla_hombres2 = 0; }
  	      	
  	     	v_num_total_jornadas_anuales_pactadas_convenio_mujeres = (v_num_jornadas_anuales_pactadas_convenio_por_trab) * v_num_total_de_la_plantilla_mujeres2;
  	     	v_num_total_jornadas_anuales_pactadas_convenio_hombres = (v_num_jornadas_anuales_pactadas_convenio_por_trab) * v_num_total_de_la_plantilla_hombres2;

  	     	$('#num_total_jornadas_anuales_pactadas_convenio_mujeres').val( v_num_total_jornadas_anuales_pactadas_convenio_mujeres);
  	     	$('#num_total_jornadas_anuales_pactadas_convenio_hombres').val( v_num_total_jornadas_anuales_pactadas_convenio_hombres);
  	     	
  	     	// Empresa Plantilla calculated fields
  	     	// Cargos de responsabilidad mujeres
  	     	var v_num_subtotal_cargos_responsabilidad_mujeres = 0;
  	     	var v_num_direccion_general_o_maximo_cargo_mujeres  = parseFloat($('#num_direccion_general_o_maximo_cargo_mujeres').val());
  	     	var v_num_puestos_directivos_como_gerencias_mujeres  = parseFloat($('#num_puestos_directivos_como_gerencias_mujeres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres').val());
  	     	
  	     	if (isNaN(v_num_direccion_general_o_maximo_cargo_mujeres)) { v_num_direccion_general_o_maximo_cargo_mujeres = 0; }
  	     	if (isNaN(v_num_puestos_directivos_como_gerencias_mujeres)) { v_num_puestos_directivos_como_gerencias_mujeres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres = 0; }
  	     	
  	     	v_num_subtotal_cargos_responsabilidad_mujeres = v_num_direccion_general_o_maximo_cargo_mujeres +
													  	     	v_num_puestos_directivos_como_gerencias_mujeres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres;  	
  	     	$('#num_subtotal_cargos_responsabilidad_mujeres').val( v_num_subtotal_cargos_responsabilidad_mujeres);
  	     	
  	     	
  	     	// Cargos de responsabilidad hombres
  	     	var v_num_subtotal_cargos_responsabilidad_hombres = 0;
  	     	var v_num_direccion_general_o_maximo_cargo_hombres  = parseFloat($('#num_direccion_general_o_maximo_cargo_hombres').val());
  	     	var v_num_puestos_directivos_como_gerencias_hombres  = parseFloat($('#num_puestos_directivos_como_gerencias_hombres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres').val());
  	     	var v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres  = parseFloat($('#num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres').val());
  	     	
  	     	if (isNaN(v_num_direccion_general_o_maximo_cargo_hombres)) { v_num_direccion_general_o_maximo_cargo_hombres = 0; }
  	     	if (isNaN(v_num_puestos_directivos_como_gerencias_hombres)) { v_num_puestos_directivos_como_gerencias_hombres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres = 0; }
  	     	if (isNaN(v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres)) { v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres = 0; }
  	     	v_num_subtotal_cargos_responsabilidad_hombres = v_num_direccion_general_o_maximo_cargo_hombres +
													  	     	v_num_puestos_directivos_como_gerencias_hombres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres +
													  	     	v_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres;  	
  	     	$('#num_subtotal_cargos_responsabilidad_hombres').val( v_num_subtotal_cargos_responsabilidad_hombres);
  	     	
  	     	// Otros cargos de responsabilidad mujeres
  	     	var v_num_subtotal_resto_plantilla_mujeres = 0;
  	     	var v_num_total_de_la_plantilla_mujeres = 0;
  	     	var v_num_puestos_tecnicos_mujeres  = parseFloat($('#num_puestos_tecnicos_mujeres').val());
  	     	var v_num_puestos_administrativos_mujeres  = parseFloat($('#num_puestos_administrativos_mujeres').val());
  	     	var v_num_puestos_auxiliares_mujeres  = parseFloat($('#num_puestos_auxiliares_mujeres').val());
  	     	var v_num_puestos_operarios_mujeres  = parseFloat($('#num_puestos_operarios_mujeres').val());
  	     	var v_num_puestos_a_mujeres  = parseFloat($('#num_puestos_a_mujeres').val());
  	     	var v_num_puestos_b_mujeres  = parseFloat($('#num_puestos_b_mujeres').val());
  	     	var v_num_puestos_c_mujeres  = parseFloat($('#num_puestos_c_mujeres').val());
  	     	var v_num_puestos_d_mujeres  = parseFloat($('#num_puestos_d_mujeres').val());
  	     	
  	     	
  	     	if (isNaN(v_num_puestos_tecnicos_mujeres)) { v_num_puestos_tecnicos_mujeres = 0; }
  	     	if (isNaN(v_num_puestos_administrativos_mujeres)) { v_num_puestos_administrativos_mujeres = 0; }
  	     	if (isNaN(v_num_puestos_auxiliares_mujeres)) { v_num_puestos_auxiliares_mujeres = 0; }
  	     	if (isNaN(v_num_puestos_operarios_mujeres)) { v_num_puestos_operarios_mujeres = 0; }
  	     	
		if (isNaN(v_num_puestos_a_mujeres)) { v_num_puestos_a_mujeres = 0; }			
		if (isNaN(v_num_puestos_b_mujeres)) { v_num_puestos_b_mujeres = 0; }
		if (isNaN(v_num_puestos_c_mujeres)) { v_num_puestos_c_mujeres = 0; }
		if (isNaN(v_num_puestos_d_mujeres)) { v_num_puestos_d_mujeres = 0; }   	     	
  	     	
  	     	v_num_subtotal_resto_plantilla_mujeres = v_num_puestos_tecnicos_mujeres +
											  	     	v_num_puestos_administrativos_mujeres +
											  	     	v_num_puestos_auxiliares_mujeres +
											  	     	v_num_puestos_operarios_mujeres +
											  	     	v_num_puestos_a_mujeres +
											  	     	v_num_puestos_b_mujeres +
											  	     	v_num_puestos_c_mujeres +
											  	     	v_num_puestos_d_mujeres;
  	     	
  	     	v_num_total_de_la_plantilla_mujeres = v_num_subtotal_resto_plantilla_mujeres + v_num_subtotal_cargos_responsabilidad_mujeres;
  	     	
		$('#num_subtotal_resto_plantilla_mujeres').val( v_num_subtotal_resto_plantilla_mujeres);
		$('#num_total_de_la_plantilla_mujeres').val( v_num_total_de_la_plantilla_mujeres);
  	
		// Otros cargos de responsabilidad hombres
  	     	var v_num_subtotal_resto_plantilla_hombres = 0;
  	     	var v_num_total_de_la_plantilla_hombres = 0;
  	     	var v_num_puestos_tecnicos_hombres  = parseFloat($('#num_puestos_tecnicos_hombres').val());
  	     	var v_num_puestos_administrativos_hombres  = parseFloat($('#num_puestos_administrativos_hombres').val());
  	     	var v_num_puestos_auxiliares_hombres  = parseFloat($('#num_puestos_auxiliares_hombres').val());
  	     	var v_num_puestos_operarios_hombres  = parseFloat($('#num_puestos_operarios_hombres').val());
  	     	var v_num_puestos_a_hombres  = parseFloat($('#num_puestos_a_hombres').val());
  	     	var v_num_puestos_b_hombres  = parseFloat($('#num_puestos_b_hombres').val());
  	     	var v_num_puestos_c_hombres  = parseFloat($('#num_puestos_c_hombres').val());
  	     	var v_num_puestos_d_hombres  = parseFloat($('#num_puestos_d_hombres').val());
  	     	
  	     	
  	     	if (isNaN(v_num_puestos_tecnicos_hombres)) { v_num_puestos_tecnicos_hombres = 0; }
  	     	if (isNaN(v_num_puestos_administrativos_hombres)) { v_num_puestos_administrativos_hombres = 0; }
  	     	if (isNaN(v_num_puestos_auxiliares_hombres)) { v_num_puestos_auxiliares_hombres = 0; }
  	     	if (isNaN(v_num_puestos_operarios_hombres)) { v_num_puestos_operarios_hombres = 0; }
  	     	
		if (isNaN(v_num_puestos_a_hombres)) { v_num_puestos_a_hombres = 0; }			
		if (isNaN(v_num_puestos_b_hombres)) { v_num_puestos_b_hombres = 0; }
		if (isNaN(v_num_puestos_c_hombres)) { v_num_puestos_c_hombres = 0; }
		if (isNaN(v_num_puestos_d_hombres)) { v_num_puestos_d_hombres = 0; }  	     	
  	     	
  	     	v_num_subtotal_resto_plantilla_hombres = v_num_puestos_tecnicos_hombres +
											  	     	v_num_puestos_administrativos_hombres +
											  	     	v_num_puestos_auxiliares_hombres +
											  	     	v_num_puestos_operarios_hombres +
											  	     	v_num_puestos_a_hombres +
											  	     	v_num_puestos_b_hombres +
											  	     	v_num_puestos_c_hombres +
											  	     	v_num_puestos_d_hombres;
  	     	
  	     	v_num_total_de_la_plantilla_hombres = v_num_subtotal_resto_plantilla_hombres + v_num_subtotal_cargos_responsabilidad_hombres;
  	     	
			$('#num_subtotal_resto_plantilla_hombres').val( v_num_subtotal_resto_plantilla_hombres);
			$('#num_total_de_la_plantilla_hombres').val( v_num_total_de_la_plantilla_hombres);
			
			// Departamentos mujeres
			var v_num_dept_total_mujeres = 0;
			var v_num_dept_administracion_mujeres  = parseFloat($('#num_dept_administracion_mujeres').val());
			var v_num_dept_comercial_y_ventas_mujeres  = parseFloat($('#num_dept_comercial_y_ventas_mujeres').val());
			var v_num_dept_logistica_mujeres  = parseFloat($('#num_dept_logistica_mujeres').val());
			var v_num_dept_produccion_mujeres  = parseFloat($('#num_dept_produccion_mujeres').val());
			var v_num_dept_financiero_mujeres  = parseFloat($('#num_dept_financiero_mujeres').val());
			var v_num_dept_recursos_humanos_mujeres  = parseFloat($('#num_dept_recursos_humanos_mujeres').val());
			var v_num_dept_a_mujeres  = parseFloat($('#num_dept_a_mujeres').val());
			var v_num_dept_b_mujeres  = parseFloat($('#num_dept_b_mujeres').val());
			var v_num_dept_c_mujeres  = parseFloat($('#num_dept_c_mujeres').val());
			var v_num_dept_d_mujeres  = parseFloat($('#num_dept_d_mujeres').val());
			var v_num_dept_e_mujeres  = parseFloat($('#num_dept_e_mujeres').val());
			
			if (isNaN(v_num_dept_administracion_mujeres)) { v_num_dept_administracion_mujeres = 0; }
			if (isNaN(v_num_dept_comercial_y_ventas_mujeres)) { v_num_dept_comercial_y_ventas_mujeres = 0; }
			if (isNaN(v_num_dept_logistica_mujeres)) { v_num_dept_logistica_mujeres = 0; }
			if (isNaN(v_num_dept_produccion_mujeres)) { v_num_dept_produccion_mujeres = 0; }
			if (isNaN(v_num_dept_financiero_mujeres)) { v_num_dept_financiero_mujeres = 0; }
			if (isNaN(v_num_dept_recursos_humanos_mujeres)) { v_num_dept_recursos_humanos_mujeres = 0; }
			
			if (isNaN(v_num_dept_a_mujeres)) { v_num_dept_a_mujeres = 0; }			
			if (isNaN(v_num_dept_b_mujeres)) { v_num_dept_b_mujeres = 0; }
			if (isNaN(v_num_dept_c_mujeres)) { v_num_dept_c_mujeres = 0; }
			if (isNaN(v_num_dept_d_mujeres)) { v_num_dept_d_mujeres = 0; }
			if (isNaN(v_num_dept_e_mujeres)) { v_num_dept_e_mujeres = 0; }			
			
			v_num_dept_total_mujeres = v_num_dept_administracion_mujeres +
										v_num_dept_comercial_y_ventas_mujeres +
										v_num_dept_logistica_mujeres +
										v_num_dept_produccion_mujeres +
										v_num_dept_financiero_mujeres +
										v_num_dept_recursos_humanos_mujeres +
										v_num_dept_a_mujeres +
										v_num_dept_b_mujeres +
										v_num_dept_c_mujeres +
										v_num_dept_d_mujeres +
										v_num_dept_e_mujeres;
			
			$('#num_dept_total_mujeres').val( v_num_dept_total_mujeres);
			
			// Departamentos hombres
			var v_num_dept_total_hombres = 0;
			var v_num_dept_administracion_hombres  = parseFloat($('#num_dept_administracion_hombres').val());
			var v_num_dept_comercial_y_ventas_hombres  = parseFloat($('#num_dept_comercial_y_ventas_hombres').val());
			var v_num_dept_logistica_hombres  = parseFloat($('#num_dept_logistica_hombres').val());
			var v_num_dept_produccion_hombres  = parseFloat($('#num_dept_produccion_hombres').val());
			var v_num_dept_financiero_hombres  = parseFloat($('#num_dept_financiero_hombres').val());
			var v_num_dept_recursos_humanos_hombres  = parseFloat($('#num_dept_recursos_humanos_hombres').val());
			var v_num_dept_a_hombres  = parseFloat($('#num_dept_a_hombres').val());
			var v_num_dept_b_hombres  = parseFloat($('#num_dept_b_hombres').val());
			var v_num_dept_c_hombres  = parseFloat($('#num_dept_c_hombres').val());
			var v_num_dept_d_hombres  = parseFloat($('#num_dept_d_hombres').val());
			var v_num_dept_e_hombres  = parseFloat($('#num_dept_e_hombres').val());
			
			
			if (isNaN(v_num_dept_administracion_hombres)) { v_num_dept_administracion_hombres = 0; }
			if (isNaN(v_num_dept_comercial_y_ventas_hombres)) { v_num_dept_comercial_y_ventas_hombres = 0; }
			if (isNaN(v_num_dept_logistica_hombres)) { v_num_dept_logistica_hombres = 0; }
			if (isNaN(v_num_dept_produccion_hombres)) { v_num_dept_produccion_hombres = 0; }
			if (isNaN(v_num_dept_financiero_hombres)) { v_num_dept_financiero_hombres = 0; }
			if (isNaN(v_num_dept_recursos_humanos_hombres)) { v_num_dept_recursos_humanos_hombres = 0; }
			
			if (isNaN(v_num_dept_a_hombres)) { v_num_dept_a_hombres = 0; }			
			if (isNaN(v_num_dept_b_hombres)) { v_num_dept_b_hombres = 0; }
			if (isNaN(v_num_dept_c_hombres)) { v_num_dept_c_hombres = 0; }
			if (isNaN(v_num_dept_d_hombres)) { v_num_dept_d_hombres = 0; }
			if (isNaN(v_num_dept_e_hombres)) { v_num_dept_e_hombres = 0; }
			
			v_num_dept_total_hombres = v_num_dept_administracion_hombres +
										v_num_dept_comercial_y_ventas_hombres +
										v_num_dept_logistica_hombres +
										v_num_dept_produccion_hombres +
										v_num_dept_financiero_hombres +
										v_num_dept_recursos_humanos_hombres +
										v_num_dept_a_hombres +
										v_num_dept_b_hombres +
										v_num_dept_c_hombres +
										v_num_dept_d_hombres +
										v_num_dept_e_hombres;
			
			$('#num_dept_total_hombres').val( v_num_dept_total_hombres);
  	     	
			// Does the "Total de la Plantilla" match between table1 and table 2 mujeres
			if (v_num_dept_total_mujeres == v_num_total_de_la_plantilla_mujeres) {
				$('#coinicide_con_tabla1_mujeres').val('SÍ');	
			} else {
				$('#coinicide_con_tabla1_mujeres').val('NO');
			}
  	     	
			// Does the "Total de la Plantilla" match between table1 and table 2 hombres
			if (v_num_dept_total_hombres == v_num_total_de_la_plantilla_hombres) {
				$('#coinicide_con_tabla1_hombres').val('SÍ');
				
			} else {
				$('#coinicide_con_tabla1_hombres').val('NO');
			}  	     	
  	     	
  	     	
  	     	// Table 4 Tipo de Contrato Jornada subtotals and totals mujerers
  	     	var v_num_subtotal_jornada_completa_mujeres = 0;
  	     	var v_num_subtotal_jornada_partial_mujeres = 0;
  	     	var v_num_total_jornada_contracto_mujeres = 0;
  	     	var v_num_jornada_completa_contrato_indefinido_mujeres  = parseFloat($('#num_jornada_completa_contrato_indefinido_mujeres').val());
  	     	var v_num_jornada_completa_contrato_temporal_mujeres  = parseFloat($('#num_jornada_completa_contrato_temporal_mujeres').val());
  	     	var v_num_jornada_partial_contrato_indefinido_mujeres  = parseFloat($('#num_jornada_partial_contrato_indefinido_mujeres').val());
  	     	var v_num_jornada_partial_contrato_temporal_mujeres  = parseFloat($('#num_jornada_partial_contrato_temporal_mujeres').val());
  	     	
  	     	if (isNaN(v_num_jornada_completa_contrato_indefinido_mujeres)) { v_num_jornada_completa_contrato_indefinido_mujeres = 0; }
  	     	if (isNaN(v_num_jornada_completa_contrato_temporal_mujeres)) { v_num_jornada_completa_contrato_temporal_mujeres = 0; }
  	     	if (isNaN(v_num_jornada_partial_contrato_indefinido_mujeres)) { v_num_jornada_partial_contrato_indefinido_mujeres = 0; }
  	     	if (isNaN(v_num_jornada_partial_contrato_temporal_mujeres)) { v_num_jornada_partial_contrato_temporal_mujeres = 0; }
  	     	
  	     	v_num_subtotal_jornada_completa_mujeres = v_num_jornada_completa_contrato_indefinido_mujeres + v_num_jornada_completa_contrato_temporal_mujeres;
  	     	v_num_subtotal_jornada_partial_mujeres = v_num_jornada_partial_contrato_indefinido_mujeres + v_num_jornada_partial_contrato_temporal_mujeres;
  	     	v_num_total_jornada_contracto_mujeres = v_num_subtotal_jornada_completa_mujeres + v_num_subtotal_jornada_partial_mujeres;
  	     	
  	     	$('#num_subtotal_jornada_completa_mujeres').val( v_num_subtotal_jornada_completa_mujeres);
  	     	$('#num_subtotal_jornada_partial_mujeres').val( v_num_subtotal_jornada_partial_mujeres);
  	     	$('#num_total_jornada_contracto_mujeres').val( v_num_total_jornada_contracto_mujeres);
  	     	
  	     	
		// Does table1 MATCH table 4 mujeres
		if (v_num_total_jornada_contracto_mujeres == <% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>) {
			$('#tabla4_coinicide_con_tabla1_mujeres').val('SÍ');	
		} else {
			$('#tabla4_coinicide_con_tabla1_mujeres').val('NO');
		}
			
  	     	// Table 4 Tipo de Contrato Jornada subtotals and totals hombres
  	     	var v_num_subtotal_jornada_completa_hombres = 0;
  	     	var v_num_subtotal_jornada_partial_hombres = 0;
  	     	var v_num_total_jornada_contracto_hombres = 0;
  	     	var v_num_jornada_completa_contrato_indefinido_hombres  = parseFloat($('#num_jornada_completa_contrato_indefinido_hombres').val());
  	     	var v_num_jornada_completa_contrato_temporal_hombres  = parseFloat($('#num_jornada_completa_contrato_temporal_hombres').val());
  	     	var v_num_jornada_partial_contrato_indefinido_hombres  = parseFloat($('#num_jornada_partial_contrato_indefinido_hombres').val());
  	     	var v_num_jornada_partial_contrato_temporal_hombres  = parseFloat($('#num_jornada_partial_contrato_temporal_hombres').val());
  	     	
  	     	if (isNaN(v_num_jornada_completa_contrato_indefinido_hombres)) { v_num_jornada_completa_contrato_indefinido_hombres = 0; }
  	     	if (isNaN(v_num_jornada_completa_contrato_temporal_hombres)) { v_num_jornada_completa_contrato_temporal_hombres = 0; }
  	     	if (isNaN(v_num_jornada_partial_contrato_indefinido_hombres)) { v_num_jornada_partial_contrato_indefinido_hombres = 0; }
  	     	if (isNaN(v_num_jornada_partial_contrato_temporal_hombres)) { v_num_jornada_partial_contrato_temporal_hombres = 0; }
  	     	
  	     	v_num_subtotal_jornada_completa_hombres = v_num_jornada_completa_contrato_indefinido_hombres + v_num_jornada_completa_contrato_temporal_hombres;
  	     	v_num_subtotal_jornada_partial_hombres = v_num_jornada_partial_contrato_indefinido_hombres + v_num_jornada_partial_contrato_temporal_hombres;
  	     	v_num_total_jornada_contracto_hombres = v_num_subtotal_jornada_completa_hombres + v_num_subtotal_jornada_partial_hombres;
  	     	
  	     	$('#num_subtotal_jornada_completa_hombres').val( v_num_subtotal_jornada_completa_hombres);
  	     	$('#num_subtotal_jornada_partial_hombres').val( v_num_subtotal_jornada_partial_hombres);
  	     	$('#num_total_jornada_contracto_hombres').val( v_num_total_jornada_contracto_hombres);
  	     	
  	     	
			// Does table1 MATCH table 4 hombres
			if (v_num_total_jornada_contracto_hombres == <% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>) {
				$('#tabla4_coinicide_con_tabla1_hombres').val('SÍ');	
			} else {
				$('#tabla4_coinicide_con_tabla1_hombres').val('NO');
			}  	     	
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
  		
		
		// Check and make sure these fields are numberic
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
		
		7*
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