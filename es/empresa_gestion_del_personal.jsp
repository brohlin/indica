<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

				<form role="form" action="validate_empresa_gestion_del_personal.jsp" method="post" class="form-plantilla" name="empresa_gestion_del_personal">
					<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">

					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos9"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 9</h2>
							<h3 class="text-orange reset-margin" >ROTACIÓN (JORNADAS PERDIDAS / JORNADAS TEÓRICAS)</h3>
						</div>
						<div class="table-responsive">
							<table class="table">
							<tbody> 
								<tr class="alto-100">
									<th rowspan="2" class="  " >
										
											<h6 class="reset-margin"><label class="label label-subtitulo">Tipo de jornada </label></h6>
										
									</th>
									<th rowspan="2" class="">
										<h6 class="reset-margin"><label class="label label-subtitulo">No. de jornadas teóricas anuales pactadas para cada trabajador/a</label></h6>
									</th>
									<th colspan="2" class="col-xs-2 ">
										<h6 class="reset-margin"><label class="label label-subtitulo">No. de personas en plantilla</label></h6>
									</th>

									<th colspan="2" class="col-xs-2">
										<h6 class="reset-margin"> <label class="label label-subtitulo">No. total de jornadas</label></h6>
									</th>	
								</tr>
								<tr>

									<td >
										<h6 class="reset-margin"><label class="label label-subtitulo" >Mujeres</label></h6>
									</td>
									<td >
										<h6 class="reset-margin"><label class="label label-subtitulo" >Hombres</label></h6>
									</td>
									<td >
										<h6 class="reset-margin"><label class="label label-subtitulo" >Mujeres</label></h6>
									</td>
									<td >
										<h6 class="reset-margin"><label class="label label-subtitulo" >Hombres</label></h6>
									</td>		
								</tr>
								<tr>
									<td class="col-xs-4">
										<label class="titulo-input" >No. de jornadas teóricas <a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Jornadas pactadas por convenio o jornadas naturales, menos las festivas, vacaciones y otro permiso reglamentario (calendario laboral) "  class="fa fa-question-circle"></a></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornadas_anuales_pactadas_convenio_por_trab" name="num_jornadas_anuales_pactadas_convenio_por_trab" placeholder=""  value="<% if (session.getAttribute("temp_admin_organization_num_jornadas_anuales_pactadas_convenio_por_trab") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornadas_anuales_pactadas_convenio_por_trab").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_mujeres2" name="num_total_de_la_plantilla_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>" readonly>
									</td>	
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_hombres2" name="num_total_de_la_plantilla_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>" readonly>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_jornadas_anuales_pactadas_convenio_mujeres" name="num_total_jornadas_anuales_pactadas_convenio_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_mujeres").toString() %><% } %>" readonly>
									</td>																											
									
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_jornadas_anuales_pactadas_convenio_hombres" name="num_total_jornadas_anuales_pactadas_convenio_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_jornadas_anuales_pactadas_convenio_hombres").toString() %><% } %>" readonly>
									</td>
								</tr>
								<tr>
									<td class="col-xs-5">
										<label class="titulo-input" >No. de jornadas perdidas, <br>por ausencia justificada o no. <a tabindex="0" role="button" data-toggle="popover"   data-trigger="focus" data-content="Jornadas que no han sido efectivamente trabajadas a causas como rotación, médico, permisos no reglamentarios o injustificados."  class="fa fa-question-circle"></a></label>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
									</td>	
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" name="rotacion-jperdidas-nulo" placeholder="-" disabled>
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornadas_perdidas_mujeres" name="num_jornadas_perdidas_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_jornadas_perdidas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornadas_perdidas_mujeres").toString() %><% } %>">
									</td>
									<td >
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_jornadas_perdidas_hombres" name="num_jornadas_perdidas_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_jornadas_perdidas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_jornadas_perdidas_hombres").toString() %><% } %>">
									</td>
								</tr>
							</tbody>
							</table>
						</div>
					</fieldset> <!-- fin de tabla 9 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos10"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 10</h2>
							<h3 class="text-orange reset-margin" >ROTACION POR CESE DE ACTIVIDADES EN LA EMPRESA</h3>
						</div>
						<div class="table">
								<div class="row">
									<div class="col-xs-6 col-md-8 ">
										<h6>
											<label class="label label-subtitulo">No. de personas
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
										<label class="titulo-input" >Total en plantilla</label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_mujeres2" name="num_total_de_la_plantilla_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_hombres2" name="num_total_de_la_plantilla_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>" readonly>
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">Que cesaron sus actividades en la empresa en el año que se facilitan los datos</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_personas_cesaron_actividades_mujeres" name="num_personas_cesaron_actividades_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_personas_cesaron_actividades_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_personas_cesaron_actividades_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_personas_cesaron_actividades_hombres" name="num_personas_cesaron_actividades_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_personas_cesaron_actividades_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_personas_cesaron_actividades_hombres").toString() %><% } %>">
									</div>
								</div>
							</div> <!-- fin de table -->
					</fieldset><!-- fin de table 10 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos11"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 11</h2>
							<h3 class="text-orange reset-margin" >REINCORPORACIÓN TRAS LICENCIA DE MATERNIDAD</h3>
						</div>
						<div class="table">
								<div class="row">
									<div class="col-xs-9 col-md-10 ">
										<h6>
											<label class="label label-subtitulo">No. de mujeres
											</label>
										</h6>
									</div>
									<div class="col-xs-3 col-md-2  ">
										<h6>
											<label class="label label-subtitulo">Mujeres
											</label>
										</h6>
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-9 col-md-10 ">
										<label class="titulo-input" >Total de mujeres que tomaron una licencia de maternidad, en el año que se facilitan los datos</label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_mujeres_tomaron_licencia_de_maternidad" name="num_total_mujeres_tomaron_licencia_de_maternidad" value="<% if (session.getAttribute("temp_admin_organization_num_total_mujeres_tomaron_licencia_de_maternidad") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_mujeres_tomaron_licencia_de_maternidad").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-9 col-md-10">
										<label class="titulo-input">No. de mujeres que no se reincorporaron</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" i="num_mujeres_no_se_reincoroporaron_tras_la_licencia" name="num_mujeres_no_se_reincoroporaron_tras_la_licencia" value="<% if (session.getAttribute("temp_admin_organization_num_mujeres_no_se_reincoroporaron_tras_la_licencia") != null) { %><%= session.getAttribute("temp_admin_organization_num_mujeres_no_se_reincoroporaron_tras_la_licencia").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-9 col-md-10">
										<label class="titulo-input">No. de mujeres que sí se reincorporaron</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_mujeres_se_reincoroporaron_tras_la_licencia" name="num_mujeres_se_reincoroporaron_tras_la_licencia" value="<% if (session.getAttribute("temp_admin_organization_num_mujeres_se_reincoroporaron_tras_la_licencia") != null) { %><%= session.getAttribute("temp_admin_organization_num_mujeres_se_reincoroporaron_tras_la_licencia").toString() %><% } %>">
									</div>
								</div>
							</div> <!-- fin de table -->
					</fieldset><!-- fin de table 11 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos12"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 12</h2>
							<h3 class="text-orange reset-margin" >INCORPORACIÓN Y NUEVAS CONTRATACIONES</h3>
						</div>	
						<div class="table">
								<div class="row">
									<div class="col-xs-6 col-md-8 ">
										<h6>
											<label class="label label-subtitulo">Procesos de reclutamiento, selección y contratación. 
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
										<label class="titulo-input" >No. de personas que han formado parte de procesos de reclutamiento y selección en la empresa en el año en curso.</label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_participantes_procesos_reclutamiento_y_seleccion_mujeres" name="num_participantes_procesos_reclutamiento_y_seleccion_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_participantes_procesos_reclutamiento_y_seleccion_hombres" name="num_participantes_procesos_reclutamiento_y_seleccion_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_participantes_procesos_reclutamiento_y_seleccion_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">No. de personas que han sido finalmente contratadas en la empresa en el año en curso. </label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_contrataciones_realizadas_mujeres" name="num_contrataciones_realizadas_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_contrataciones_realizadas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_contrataciones_realizadas_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_contrataciones_realizadas_hombres" name="num_contrataciones_realizadas_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_contrataciones_realizadas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_contrataciones_realizadas_hombres").toString() %><% } %>">
									</div>
								</div>
							</div> <!-- fin de table -->
					</fieldset><!-- fin de table 12 -->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos13"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 13</h2>
							<h3 class="text-orange reset-margin" >PROMOCIONES INTERNAS</h3>
						</div>
						<div class="table">
								<div class="row">
									<div class="col-xs-6 col-md-8 ">
										<h6>
											<label class="label label-subtitulo">Procesos de promoción interna. 
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
										<label class="titulo-input" >No. de personas que han formado parte de procesos de promoción en la empresa en el año en curso.</label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_participantes_procesos_de_promocion_mujeres" name="num_participantes_procesos_de_promocion_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_participantes_procesos_de_promocion_hombres" name="num_participantes_procesos_de_promocion_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_participantes_procesos_de_promocion_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">No. de personas que han sido finalmente promocionadas en la empresa en el año en curso. </label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_promociones_realizadas_mujeres" name="num_promociones_realizadas_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_promociones_realizadas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_promociones_realizadas_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_promociones_realizadas_hombres" name="num_promociones_realizadas_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_promociones_realizadas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_promociones_realizadas_hombres").toString() %><% } %>">
									</div>
								</div>
							</div> <!-- fin de table -->
					</fieldset><!-- fin de table 13-->
					<fieldset class="fieldset-borde ">
						<div class="fieldset-head ">
							<div class="col-centered icono-tabla-fondo">
								<a class="icono-pos14"></a>
							</div>
							<h2 class="text-gray ">Tabla No. 14</h2>
							<h3 class="text-orange reset-margin" >FORMACIÓN O CAPACITACIÓN</h3>
						</div>
						<div class="table">
								<div class="row">
									<div class="col-xs-6 col-md-8 ">
										<h6>
											<label class="label label-subtitulo">Descripción. 
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
										<label class="titulo-input" >No. total de plantilla</label>
									</div>
									<div class="col-xs-3 col-md-2 ">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_mujeres2" name="num_total_de_la_plantilla_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_mujeres").toString() %><% } %>" readonly>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_de_la_plantilla_hombres2" name="num_total_de_la_plantilla_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_de_la_plantilla_hombres").toString() %><% } %>" readonly>
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">No. de personas efectivamente formadas</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_personas_efectivamente_formadas_mujeres" name="num_personas_efectivamente_formadas_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_personas_efectivamente_formadas_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_personas_efectivamente_formadas_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_personas_efectivamente_formadas_hombres" name="num_personas_efectivamente_formadas_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_personas_efectivamente_formadas_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_personas_efectivamente_formadas_hombres").toString() %><% } %>">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-xs-6 col-md-8">
										<label class="titulo-input">No. total de horas de capacitación</label>
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_horas_de_capacitacion_mujeres" name="num_total_horas_de_capacitacion_mujeres" value="<% if (session.getAttribute("temp_admin_organization_num_total_horas_de_capacitacion_mujeres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_horas_de_capacitacion_mujeres").toString() %><% } %>">
									</div>
									<div class="col-xs-3 col-md-2">
										<input <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> readonly <% } %> type="text" class="form-control" id="num_total_horas_de_capacitacion_hombres" name="num_total_horas_de_capacitacion_hombres" value="<% if (session.getAttribute("temp_admin_organization_num_total_horas_de_capacitacion_hombres") != null) { %><%= session.getAttribute("temp_admin_organization_num_total_horas_de_capacitacion_hombres").toString() %><% } %>">
									</div>
								</div>
							</div> <!-- fin de table -->
					</fieldset><!-- fin de table 14 -->

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