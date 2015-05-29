<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

				<form role="form" action="validate_empresa_otros_datos.jsp" method="post" class="form-plantilla" name="empresa_otros_datos">
					<input name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">

					<fieldset>	
						<h5><label class="label label-primary padding-small">COMUNICACIÓN INTERNA</label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">1</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿La empresa/organización tiene en cuenta, en la comunicación interna, la utilización de un lenguaje inclusivo (imágenes no estereotipadas, visibilizando a mujeres y hombres, y lenguaje no sexista)?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q1_lkup" name="q1_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q1_lkup") == null || session.getAttribute("temp_admin_organization_q1_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">2</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿En su opinión, los mecanismos de comunicación interna se utilizan con la intención de que la información llegue al 100% de la plantilla ?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q2_lkup" name="q2_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q2_lkup") == null || session.getAttribute("temp_admin_organization_q2_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">3</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">Se ha comunicado a la plantilla el compromiso de la empresa/organización con la igualdad de género</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q3_lkup" name="q3_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q3_lkup") == null || session.getAttribute("temp_admin_organization_q3_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">4</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores,  ¿considera que la comunicación interna contempla criterios de igualdad y no discriminación por cuestión de sexo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q43_lkup" name="q43_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q43_lkup") == null || session.getAttribute("temp_admin_organization_q43_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
						</div>
					</fieldset> <!-- fin de com-interna -->
					<fieldset>	
						<h5><label class="label label-primary padding-small">COMUNICACIÓN EXTERNA</label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">5</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿La empresa/organización tiene en cuenta, en la comunicación externa y publicidad, la utilización de un lenguaje inclusivo (imágenes no estereotipadas, visibilizando a mujeres y hombres de manera equilibrada, y lenguaje no sexista)?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q4_lkup" name="q4_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q4_lkup") == null || session.getAttribute("temp_admin_organization_q4_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">6</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">Se ha comunicado hacia el exterior el compromiso de la empresa/organización con la igualdad de género </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q5_lkup" name="q5_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q5_lkup") == null || session.getAttribute("temp_admin_organization_q5_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">7</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿La empresa/organización tiene en cuenta, en la comunicación externa y publicidad, la utilización imágenes de hombres y de mujeres desempeñando roles  distintos de los tradicionales de género ?¿La empresa/organización tiene en cuenta, en la comunicación externa y publicidad, la utilización imágenes de hombres y de mujeres desempeñando roles  distintos de los tradicionales de género ?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q6_lkup" name="q6_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q6_lkup") == null || session.getAttribute("temp_admin_organization_q6_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">8</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores,  ¿considera que la comunicación externa contempla criterios de igualdad y no discriminación por cuestión de sexo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q44_lkup" name="q44_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q44_lkup") == null || session.getAttribute("temp_admin_organization_q44_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->								
						</div>
					</fieldset> <!-- fin de com-externa -->
					<fieldset>	
						<h5><label class="label label-primary padding-small">PROCESOS DE RECLUTAMIENTO Y SELECCIÓN DE CONTRATACIÓN</label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">9</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿La empresa/organización tiene metas de contratación para la promoción de la equidad de género en todos los niveles jerárquicos de todas las áreas?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q7_lkup" name="q7_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q7_lkup") == null || session.getAttribute("temp_admin_organization_q7_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">10</label>
									</div>
									<div class="ccol-xs-6 col-sm-7">
										<label class="titulo-input">En la empresa/organización ¿Se llevan o se han llevado a cabo procesos de reclutamiento y selección dirigidos específicamente a contratar mujeres para equilibrar su presencia en la plantilla?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q8_lkup" name="q8_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q8_lkup") == null || session.getAttribute("temp_admin_organization_q8_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">11</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">Cuando se lleva a cabo un proceso de reclutamiento y selección, en los anuncios para la captación se pone especial cuidado en que éstos tengan un lenguaje inclusivo y sean atrayentes tanto para hombres como para mujeres? </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q9_lkup" name="q9_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q9_lkup") == null || session.getAttribute("temp_admin_organization_q9_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">12</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿En la empresa/organización todas las personas que entran lo hacen a través de un procedimiento formal y documentado de búsqueda y selección de personal?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q10_lkup" name="q10_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q10_lkup") == null || session.getAttribute("temp_admin_organization_q10_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">13</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Existen, en la empresa/ organización, puestos o tipos de tareas que estén reservados sólo a las mujeres?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q11_lkup" name="q11_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q11_lkup") == null || session.getAttribute("temp_admin_organization_q11_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">14</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Existen, en la empresa/ organización, puestos o tipos de tareas que estén reservados sólo a los hombres?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q12_lkup" name="q12_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q12_lkup") == null || session.getAttribute("temp_admin_organization_q12_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">15</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Tienen mujeres y hombres las mismas facilidades para acceder a la promoción sobre puestos vacantes? </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q13_lkup" name="q13_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q13_lkup") == null || session.getAttribute("temp_admin_organization_q13_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">16</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La política de la organización prohíbe expresamente que se produzcan desvinculaciones de procesos de reclutamiento y selección  basadas en el estado civil , en la edad, en el embarazo o la posibilidad del embarazo, la etnia?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q14_lkup" name="q14_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q14_lkup") == null || session.getAttribute("temp_admin_organization_q14_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">17</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores, ¿considera que los procesos de reclutamiento, selección y contratación son igualitarios para mujeres y hombres?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q45_lkup" name="q45_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q45_lkup") == null || session.getAttribute("temp_admin_organization_q45_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->								
						</div>
					</fieldset> <!-- fin de reclutamiento -->
					
					
					
					
					<fieldset>	
						<h5><label class="label label-primary padding-small">PROCESOS DE PROMOCIÓN</label></h5>
						<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">18</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización realiza habitualmente evaluaciones objetivas y equitativas del desempeño de las personas empleadas?</label>
									</div>
									<div class="col-xs-4  ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q15_lkup" name="q15_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q15_lkup") == null || session.getAttribute("temp_admin_organization_q15_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">19</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Cuenta la empresa/organización con mecanismos para asegurar que la promoción de personal está en coherencia con la evaluación de desempeño del personal, sin sesgos de sexo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q16_lkup" name="q16_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q16_lkup") == null || session.getAttribute("temp_admin_organization_q1_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">20</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La política de promoción interna de la empresa/organización está diseñada para garantizar la participación femenina equitativa con la masculina en los procesos decisorios y en la gestión en todos los niveles y áreas de la empresa/organización?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q17_lkup" name="q17_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q17_lkup") == null || session.getAttribute("temp_admin_organization_q17_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">21</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización tiene objetivos concretos de promoción y movilidad horizontal que reviertan positivamente en la equidad de género en todos los niveles jerárquicos de todas las áreas o departamentos?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q18_lkup" name="q18_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q18_lkup") == null || session.getAttribute("temp_admin_organization_q18_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">22</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Los procesos de promoción establecen mecanismos para asegurar que tanto hombres como mujeres tengan acceso a la promoción sobre oportunidades de desarrollo profesional?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q19_lkup" name="q19_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q19_lkup") == null || session.getAttribute("temp_admin_organization_q19_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">23</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">Cuando se lleva a cabo un proceso de promoción ¿se asegura que, entre las candidaturas a valorar y considerar, exista una representación paritaria de ambos sexos? </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q20_lkup" name="q20_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q20_lkup") == null || session.getAttribute("temp_admin_organization_q20_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">24</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Cuenta la empresa/organización con planes de carrera que permiten orientar el desarrollo profesionales de las personas?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q21_lkup" name="q21_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q21_lkup") == null || session.getAttribute("temp_admin_organization_q21_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">25</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores, ¿cree que  los procesos de promoción contemplan criterios de igualdad y no discriminación por razón de sexo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q46_lkup" name="q46_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q46_lkup") == null || session.getAttribute("temp_admin_organization_q46_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->								
							</div>
						</fieldset>
						<fieldset>
							<h5><label class="label label-primary padding-small">PROCESOS DE CAPACITACIÓN</label></h5>
							<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">26</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización tiene un plan de capacitación coherente con la detección de necesidades previamente consultada entre la plantilla (hombres y mujeres)?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q22_lkup" name="q22_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q22_lkup") == null || session.getAttribute("temp_admin_organization_q22_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">27</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización tiene objetivos concretos de capacitación o formación interna de la equidad de género en todos los niveles jerárquicos de todas las áreas?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q23_lkup" name="q23_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q23_lkup") == null || session.getAttribute("temp_admin_organization_q23_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">28</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿La empresa/organización cuenta con mecanismos para asegurar un acceso igualitario a la capacitación en cantidad e horas de capacitación, tipo de capacitación y recursos asignados?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q24_lkup" name="q24_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q24_lkup") == null || session.getAttribute("temp_admin_organization_q24_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">29</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización cuenta con mecanismos/instrumentos que permitan verificar que la capacitación se realiza en horario o jornada laboral?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q25_lkup" name="q25_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q25_lkup") == null || session.getAttribute("temp_admin_organization_q25_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">30</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización promueve que mujeres y hombres accedan a capacitaciones para prepararlos/as en puestos y funciones no tradicionales de su sexo o en las cuales no se encuentran adecuadamente representados?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q26_lkup" name="q26_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q26_lkup") == null || session.getAttribute("temp_admin_organization_q26_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">31</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Los cursos de capacitación de la empresa/organización se realizan en las propias instalaciones, tomando en cuenta que la duración, frecuencia y horarios no interfieran con las responsabilidades familiares de los/las empleados/as para asegurar su participación?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q27_lkup" name="q27_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q27_lkup") == null || session.getAttribute("temp_admin_organization_q27_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">31</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización ofrece anualmente , en todos los niveles, capacitación en género a cargo de profesionales especializados en el tema. (Prioritariamente alta gerencia, jefaturas, recursos humanos, sindicatos/ trabajadores-as, comité/comisiones/mesas de género de la empresa/organización)?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q28_lkup" name="q28_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q28_lkup") == null || session.getAttribute("temp_admin_organization_q28_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">33</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores, ¿considera que los procesos de capacitación/formación contemplan criterios de igualdad y no discriminación por razón de sexo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q47_lkup" name="q47_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q47_lkup") == null || session.getAttribute("temp_admin_organization_q47_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->								
							</div>
					</fieldset> <!-- fin de reclutamiento -->
					
					
					
					
					
					<fieldset>	
						<h5><label class="label label-primary padding-small">POLÍTICA SALARIAL</label></h5>
						<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">34</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La política de la empresa/organización es explícita en lo que se refiere a garantizar la remuneración de la plantilla desde una perspectiva de igualdad de género, asegurando que hombres y mujeres obtengan el mismo salario para un mismo trabajo?</label>
									</div>
									<div class="col-xs-4  ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q29_lkup" name="q29_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q29_lkup") == null || session.getAttribute("temp_admin_organization_q29_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">35</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización cuenta con un sistema de información y comunicación transparente sobre la política de compensaciones y que permite clarificar dudas del personal?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q30_lkup" name="q30_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q30_lkup") == null || session.getAttribute("temp_admin_organization_q30_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">36</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización cuenta con una política de remuneración y compensaciones que asegure la implementación del principio de igual remuneración por igual trabajo?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q31_lkup" name="q31_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q31_lkup") == null || session.getAttribute("temp_admin_organization_q31_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">37</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Los criterios de asignación de remuneraciones aplican un método de cálculo de incentivos/prestaciones/beneficios sin sesgos de género, que son informados y conocidos por toda la plantilla?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q32_lkup" name="q32_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q32_lkup") == null || session.getAttribute("temp_admin_organization_q32_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">38</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Tiene la empresa/organización una política salarial equitativa desde el punto de vista de género y que es aplicada a todos los puestos de la empresa/organización?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q33_lkup" name="q33_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q33_lkup")  == null || session.getAttribute("temp_admin_organization_q33_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
							</div>
						</fieldset>
						
						<fieldset>
							<h5><label class="label label-primary padding-small">PREVENCIÓN Y TRATAMIENTO DEL ACOSO SEXUAL Y ACOSO POR RAZÓN DE SEXO</label></h5>
							<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">39</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿Se informa a la plantilla sobre la prohibición expresa de la empresa/organización de actividades que puedan acosar a las mujeres en el ámbito laboral?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q34_lkup" name="q34_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q34_lkup") == null || session.getAttribute("temp_admin_organization_q34_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">40</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Se aplica una política institucional específica que regule la prevención, sanción y eliminación del acoso sexual en base a la legislación nacional?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q35_lkup" name="q35_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q35_lkup") == null || session.getAttribute("temp_admin_organization_q35_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
							
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">41</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización lleva a cabo anualmente acciones para que las personas responsables de establecer medidas para prevenir, detectar y actuar en casos de acoso tengan formación actualizada sobre género y acoso sexual?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q36_lkup" name="q36_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q36_lkup") == null || session.getAttribute("temp_admin_organization_q36_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">42</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Se ha asignado a una persona, comité o comisión responsable de establecer medidas para prevenir, detectar y actuar en casos de acoso?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q37_lkup" name="q37_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q37_lkup") == null || session.getAttribute("temp_admin_organization_q37_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">43</label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input">¿Se realiza en la empresa/organización un seguimiento de la incidencia de casos de acoso en la empresa/organización?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q38_lkup" name="q38_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q38_lkup") == null || session.getAttribute("temp_admin_organization_q38_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">44</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización ha impartido talleres o charlas de sensibilización a la  todo el personal sobre el acoso sexual y laboral?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q39_lkup" name="q39_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q39_lkup") == null || session.getAttribute("temp_admin_organization_q39_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">45</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿En la empresa/organización existe y se aplica un procedimiento documentado para la detección y el tratamiento del acoso sexual y laboral?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q40_lkup" name="q40_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q40_lkup") == null || session.getAttribute("temp_admin_organization_q40_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">46</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿Se da seguimiento, en la empresa, a las denuncias que sobre acoso laboral  y se aplican sanciones si se demuestran las denuncias?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q_lkup" name="q41_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q41_lkup") == null || session.getAttribute("temp_admin_organization_q41_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">47</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">¿La empresa/organización lleva a cabo anualmente acciones de sensibilización para evitar el acoso, las actitudes sexistas y el trato discriminatorio en la empresa/organización?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q42_lkup" name="q42_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q42_lkup") == null || session.getAttribute("temp_admin_organization_q42_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">48</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores, ¿cree que todas las personas de la plantilla tienen conocimiento sobre  la existencia del mecanismo y/o protocolo de prevención y actuación en caso de acoso sexual y lo considera de fácil acceso?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q48_lkup" name="q48_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q48_lkup") == null || session.getAttribute("temp_admin_organization_q48_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos">49</label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores, ¿considera que este mecanismo o protocolo puede ser eficaz si se recurre a él?</label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q49_lkup" name="q49_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q49_lkup") == null || session.getAttribute("temp_admin_organization_q49_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
										</select>
									</div>
								</div> <!-- fin de row -->
							</div>
						
					</fieldset> <!-- fin de reclutamiento -->
					
					<fieldset>
						<h5><label class="label label-primary padding-small">POLÍTICA A FAVOR DE LA CONCILIACIÓN DE LA VIDA FAMILIAR, PROFESIONAL Y PERSONAL CON CORRESPONSABILIDAD</label></h5>
						<div class="table">
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">50</label>
								</div>
								<div class="col-xs-6 col-sm-7">
									<label class="titulo-input">¿Usted cree que  en esta  empresa/organización alguna mujer ha tenido que renunciar por situación de maternidad y/o cuidado de la familia?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q50_lkup" name="q50_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q50_lkup") == null || session.getAttribute("temp_admin_organization_q50_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">51</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿En su empresa, usted considera, que se cumplen los beneficios de las licencias por maternidad y paternidad, de acuerdo a lo que estipula la legislación vigente?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q51_lkup" name="q51_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q51_lkup") == null || session.getAttribute("temp_admin_organization_q51_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
						
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">52</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿En su empresa/organización se consulta a los trabajadores y trabajadoras acerca de  necesidades familiares y personales que podrían ser compatibilizadas con el trabajo?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q52_lkup" name="q52_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q52_lkup") == null || session.getAttribute("temp_admin_organization_q52_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">53</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿Considera que su empresa/organización fomenta la co-parentalidad, es decir promueve el cuidado de hijos e hijas tanto de hombres como de mujeres?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q53_lkup" name="q53_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q53_lkup") == null || session.getAttribute("temp_admin_organization_q53_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">54</label>
								</div>
								<div class="col-xs-6 col-sm-7">
									<label class="titulo-input">¿En esta empresa/organización existen apoyos para servicios de cuidado para hijos/as y otras personas (detallar tipo de servicios: guardería en la empresa, subvenciones económicas para guarderías; subvenciones para el cuidado de otro tipo de dependientes; apoyo en el verano para hijos/as, etc.).</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q54_lkup" name="q54_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q54_lkup") == null || session.getAttribute("temp_admin_organization_q54_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">55</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿En su empresa/organización existe algún sistema de jornada reducida, horarios flexibles y tele-trabajo el personal?(por ejemplo: jornadas reducidas, semana reducida, flexibilidad de horario, jornada coincidente con horario escolar, trabajo partido, tele-trabajo, etc.).</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q55_lkup" name="q55_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q55_lkup") == null || session.getAttribute("temp_admin_organization_q55_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">56</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿En la empresa/organización  a las personas se les anima a que equilibren su vida de trabajo y su vida personal?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q56_lkup" name="q56_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q56_lkup") == null || session.getAttribute("temp_admin_organization_q56_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">57</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿El personal cuenta con la posibilidad de solicitar permisos para ausentarse dentro del horario laboral para atender situaciones particulares, familiares o escolares de carácter extraordinario?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q_lkup" name="q57_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q57_lkup") == null || session.getAttribute("temp_admin_organization_q57_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">58</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">En definitiva y a la vista de sus respuestas anteriores,  ¿cree que estas  políticas en favor de  la conciliación de la vida familiar, laboral de la empresa/organización se realizan de forma equitativa y se hacen desde criterios de igualdad de mujeres y hombres?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q58_lkup" name="q58_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q58_lkup") == null || session.getAttribute("temp_admin_organization_q58_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos">59</label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input">¿En definitiva y a la vista de sus respuestas anteriores, ¿cree que  toda la plantilla conoce la existencia de las medidas de conciliación que facilita la empresa/organización y las consideran de fácil acceso?</label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q59_lkup" name="q59_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q59_lkup") == null || session.getAttribute("temp_admin_organization_q59_lkup").equals("")) { %> selected <% } %>>Seleccione una opción</option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("89")) { %> selected <% } %>>Sí, siempre</option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("90")) { %> selected <% } %>>Sí, algunas veces</option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("91")) { %> selected <% } %>>No, nunca</option>
									</select>
								</div>
							</div> <!-- fin de row -->								
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