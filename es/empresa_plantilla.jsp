<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

				<form role="form" action="validate_empresa_plantilla.jsp" method="post" class="form-plantilla">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">
				
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos1"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 1</h2>
							<h3 class="text-orange reset-margin" >PLANTILLA POR NIVELES DE RESPONSABILIDAD</h3>
						</div>
						<h6>
							<label class="label label-primary padding-small">CARGOS DE RESPONSABILIDAD  
								<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Incluyen: dirección general o máximo cargo, puestos directivos como gerencias y otras jefaturas o mandos intermedios"  class="fa fa-question-circle"></a>
							</label>
						</h6>
						<div class="table">
							<div class="row">
								<div class="col-xs-6 col-md-8 ">
									<h6>
										<label class="label label-subtitulo">Cargo
										</label>
									</h6>
								</div>
								<div class="col-xs-3 col-md-2  ">
									<h6>
										<label class="label label-subtitulo">Mujeres
										</label>
									</h6>
								</div>
								<div class="col-xs-3 col-md-2 ">
									<h6>
										<label class="label label-subtitulo">Hombres
										</label>
									</h6>
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8 ">
									<label class="titulo-input" >Dirección general o máximo cargo</label>
								</div>
								<div class="col-xs-3 col-md-2 ">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_direccion_general_o_maximo_cargo_mujeres" name="num_direccion_general_o_maximo_cargo_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_direccion_general_o_maximo_cargo_hombres" name="num_direccion_general_o_maximo_cargo_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_direccion_general_o_maximo_cargo_hombres").toString() %><% } %>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input">Puestos directivos como gerencias
										<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="A cargo del dpto. financiero, comercial y ventas, RRHH, producción, etc"  class="fa fa-question-circle"></a>
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_directivos_como_gerencias_mujeres" name="num_puestos_directivos_como_gerencias_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_directivos_como_gerencias_hombres" name="num_puestos_directivos_como_gerencias_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_directivos_como_gerencias_hombres").toString() %><% } %>">
								</div>
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8 col-lg-8">
									<label class="titulo-input">Otras jefaturas o mandos intermedios. Nivel 4
										<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Personas dependientes de los puestos directivos y que tienen a su cargo equipos de personas. A más nivel, más responsabilidad" class="fa fa-question-circle"></a>
									</label>
								</div>
							<div class="col-xs-3 col-md-2 col-lg-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2 col-lg-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input">Otras jefaturas o mandos intermedios. Nivel 3
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Personas dependientes de los puestos directivos y que tienen a su cargo equipos de personas. A más nivel, más responsabilidad" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input">Otras jefaturas o mandos intermedios. Nivel 2
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Personas dependientes de los puestos directivos y que tienen a su cargo equipos de personas. A más nivel, más responsabilidad" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input">Otras jefaturas o mandos intermedios. Nivel 1
									<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Personas dependientes de los puestos directivos y que tienen a su cargo equipos de personas. A más nivel, más responsabilidad" class="fa fa-question-circle"></a>
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" name="num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres").toString() %><% } %>">
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" name="num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres").toString() %><% } %>">
							</div>	
						</div>
						<div class="row form-group fila-subtotal">
							<div class="col-xs-6 col-md-8">
								<label class="titulo-input">Subtotal Cargos de responsabilidad
								</label>
							</div>
							<div class="col-xs-3 col-md-2">
								<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_cargos_responsabilidad_mujeres" name="num_subtotal_cargos_responsabilidad_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_mujeres").toString() %><% } %>" readonly>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_cargos_responsabilidad_hombres" name="num_subtotal_cargos_responsabilidad_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_cargos_responsabilidad_hombres").toString() %><% } %>" readonly>
								</div>	
							</div>
						</div>
					
					<h6>
						<label class="label label-primary padding-small">OTROS PUESTOS EN PLANTILLA
							<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Detallar por puestos si es necesario"  class="fa fa-question-circle"></a>
						</label>
					</h6>
					<div class="table">
	
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input">Puestos técnicos
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_tecnicos_mujeres" name="num_puestos_tecnicos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_tecnicos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_tecnicos_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_tecnicos_hombres" name="num_puestos_tecnicos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_tecnicos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_tecnicos_hombres").toString() %><% } %>">
								</div>	
							</div>


							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input">Puestos administrativos
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_administrativos_mujeres" name="num_puestos_administrativos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_administrativos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_administrativos_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_administrativos_hombres" name="num_puestos_administrativos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_administrativos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_administrativos_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input">Puestos auxiliares
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_auxiliares_mujeres" name="num_puestos_auxiliares_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_auxiliares_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_auxiliares_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_auxiliares_hombres" name="num_puestos_auxiliares_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_auxiliares_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_auxiliares_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input">Puestos operativos
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_operarios_mujeres" name="num_puestos_operarios_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_operarios_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_operarios_mujeres").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_operarios_hombres" name="num_puestos_operarios_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_operarios_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_operarios_hombres").toString() %><% } %>">
								</div>	
							</div>
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_a" placeholder="Ingrese otro tipo de puesto"  value="<% if (session.getAttribute("temp_admin_organization_puestos_a") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_a").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_a_mujeres" name="num_puestos_a_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_a_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_a_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_a_hombres" name="num_puestos_a_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_a_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_a_hombres").toString() %><% } %>">
								</div>	
							</div>

							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_b" placeholder="Ingrese otro tipo de puesto"  value="<% if (session.getAttribute("temp_admin_organization_puestos_b") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_b").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_b_mujeres" name="num_puestos_b_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_b_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_b_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_b_hombres" name="num_puestos_b_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_b_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_b_hombres").toString() %><% } %>">
								</div>	
							</div>
							
							<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="puestos_c" placeholder="Ingrese otro tipo de puesto"  value="<% if (session.getAttribute("temp_admin_organization_puestos_c") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_c").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_c_mujeres" name="num_puestos_c_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_c_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_c_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_c_hombres" name="num_puestos_c_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_c_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_c_hombres").toString() %><% } %>">
								</div>	
							</div>							
	
								<div class="row form-group">
								<div class="col-xs-6 col-md-8">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="puestos_d" placeholder="Ingrese otro tipo de puesto"  value="<% if (session.getAttribute("temp_admin_organization_puestos_d") != null) { %><%= session.getAttribute("temp_admin_organization_puestos_d").toString() %><% } %>">
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_puestos_d_mujeres" name="num_puestos_d_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_d_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_d_mujeres").toString() %><% } %>">															
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_puestos_d_hombres" name="num_puestos_d_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_puestos_d_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_puestos_d_hombres").toString() %><% } %>">
								</div>	
							</div>
								<div class="row form-group fila-subtotal">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Subtotal Otros cargos
										</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_resto_plantilla_mujeres" name="num_subtotal_resto_plantilla_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_subtotal_resto_plantilla_hombres" name="num_subtotal_resto_plantilla_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_subtotal_resto_plantilla_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
	
							<div class="row form-group fila-subtotal">
								<div class="col-xs-6 col-md-8">
									<label class="titulo-input"><b>TOTAL DE LA PLANTILLA</b>
									</label>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_mujeres" name="num_total_de_la_plantilla_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>" readonly>
								</div>
								<div class="col-xs-3 col-md-2">
									<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_hombres" name="num_total_de_la_plantilla_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>" readonly>
								</div>	
							</div>							
					</div>
					</fieldset> 
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos2"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 2</h2>
							<h3 class="text-orange reset-margin" >PLANTILLA POR DEPARTAMENTOS</h3>
						</div>
							<div class="table">
								<div class="row">
										<div class="col-xs-6 col-md-8 ">
											<h6>
												<label class="label label-subtitulo">Departamentos
												<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="La tabla proporciona cinco ejemplos de departamentos genéricos. Sin embargo, se recomienda modificarlos y ampliarlos para que coincidan con la tipología de departamentos de la empresa."  class="fa fa-question-circle"></a></label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<h6>
												<label class="label label-subtitulo">Mujeres
												</label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<h6>
												<label class="label label-subtitulo">Hombres
												</label>
											</h6>
										</div>	
								</div>
								<div class="row form-group">
										<div class="col-xs-6 col-md-8 ">
											<label class="titulo-input" >Administración</label>
										</div>
										<div class="col-xs-3 col-md-2 ">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_administracion_mujeres" name="num_dept_administracion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_administracion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_administracion_mujeres").toString() %><% } %>">
										</div>
										<div class="col-xs-3 col-md-2">
											<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_administracion_hombres" name="num_dept_administracion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_administracion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_administracion_hombres").toString() %><% } %>">
										</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Comercial y ventas</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_comercial_y_ventas_mujeres" name="num_dept_comercial_y_ventas_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_comercial_y_ventas_hombres" name="num_dept_comercial_y_ventas_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_comercial_y_ventas_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 col-lg-8">
										<label class="titulo-input">Logística</label>
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_logistica_mujeres" name="num_dept_logistica_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_logistica_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_logistica_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2 col-lg-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_logistica_hombres" name="num_dept_logistica_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_logistica_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_logistica_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Producción</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_produccion_mujeres" name="num_dept_produccion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_produccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_produccion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_produccion_hombres" name="num_dept_produccion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_produccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_produccion_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Financiero</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_financiero_mujeres" name="num_dept_financiero_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_financiero_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_financiero_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_financiero_hombres" name="num_dept_financiero_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_financiero_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_financiero_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Recursos humanos</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_recursos_humanos_mujeres" name="num_dept_recursos_humanos_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_recursos_humanos_hombres" name="num_dept_recursos_humanos_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_recursos_humanos_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_a" placeholder="Ingrese otro departamento"  value="<% if (session.getAttribute("temp_admin_organization_dept_a") != null) { %><%= session.getAttribute("temp_admin_organization_dept_a").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_a_mujeres" name="num_dept_a_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_a_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_a_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_a_hombres" name="num_dept_a_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_a_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_a_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_b" placeholder="Ingrese otro departamento"  value="<% if (session.getAttribute("temp_admin_organization_dept_b") != null) { %><%= session.getAttribute("temp_admin_organization_dept_b").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_b_mujeres" name="num_dept_b_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_b_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_b_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_b_hombres" name="num_dept_b_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_b_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_b_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text"  class="form-control" name="dept_c" placeholder="Ingrese otro departamento"  value="<% if (session.getAttribute("temp_admin_organization_dept_c") != null) { %><%= session.getAttribute("temp_admin_organization_dept_c").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_c_mujeres" name="num_dept_c_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_c_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_c_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_c_hombres" name="num_dept_c_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_c_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_c_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_d" placeholder="Ingrese otro departamento"  value="<% if (session.getAttribute("temp_admin_organization_dept_d") != null) { %><%= session.getAttribute("temp_admin_organization_dept_d").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_d_mujeres" name="num_dept_d_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_d_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_d_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text"  class="form-control" id="num_dept_d_hombres" name="num_dept_d_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_d_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_d_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> maxlength="45" type="text" class="form-control" name="dept_e" placeholder="Ingrese otro departamento"  value="<% if (session.getAttribute("temp_admin_organization_dept_e") != null) { %><%= session.getAttribute("temp_admin_organization_dept_e").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_e_mujeres" name="num_dept_e_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_e_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_e_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_e_hombres" name="num_dept_e_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_e_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_e_hombres").toString() %><% } %>">
									</div>	
								</div>
								<div class="row form-group fila-subtotal">
									<div class="col-xs-6 col-md-8">
											<label class="titulo-input"><b>TOTAL DE LA PLANTILLA</b></label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_total_mujeres" name="num_dept_total_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_total_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_total_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_dept_total_hombres" name="num_dept_total_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_dept_total_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_dept_total_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
				
								<div class="row form-group fila-subtotal bc-orange">
									<div class="col-xs-6 col-md-8 ">
										<label class="titulo-input">Coinicide con la Tabla 1</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="coinicide_con_tabla1_mujeres" name="coinicide_con_tabla1_mujeres" value="<% if (session.getAttribute("temp_admin_organization_coinicide_con_tabla1_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_coinicide_con_tabla1_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="coinicide_con_tabla1_hombres" name="coinicide_con_tabla1_hombres" value="<% if (session.getAttribute("temp_admin_organization_coinicide_con_tabla1_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_coinicide_con_tabla1_hombres").toString() %><% } %>" readonly>
									</div>	
								</div>
							</div> <!-- fin de table  -->
					</fieldset>
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos3"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 3</h2>
							<h3 class="text-orange reset-margin" >PLANTILLA POR CONSEJO DE ADMINISTRACION</h3>
						</div>
						<div class="table">
								<div class="row">
										<div class="col-xs-6 col-md-8 padding-label ">
											<h6>
												<label class="label label-subtitulo ">Integrantes en el consejo de dirección / administración<a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="En caso de su existencia en la entidad"  class="fa fa-question-circle"></a>
												</label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 padding-label">
											<h6>
												<label class="label label-subtitulo ">Mujeres</label>
											</h6>
										</div>
										<div class="col-xs-3 col-md-2 padding-label">
											<h6>	
												<label class="label label-subtitulo ">Hombres</label>
											</h6>
										</div>	
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8 ">
										<label class="titulo-input" >Total de integrantes en el consejo de dirección / administración o juntas directivas </label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_integrantes_consejo_de_direccion_mujeres" name="num_total_integrantes_consejo_de_direccion_mujeres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_integrantes_consejo_de_direccion_hombres" name="num_total_integrantes_consejo_de_direccion_hombres" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_integrantes_consejo_de_direccion_hombres").toString() %><% } %>">
									</div>
								</div>
							</div>	
					</fieldset>
				
<% 
	if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { 
		// do nothing
	} else {
%>
					<button type="submit" class="btn btn-info btn-block separador-top">GRABAR Y CONTINUAR</button>
<%
	}
%>
					
				</form>