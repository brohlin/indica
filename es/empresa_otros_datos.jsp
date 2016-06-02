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

				<form role="form" action="validate_empresa_otros_datos.jsp" method="post" class="form-plantilla" name="empresa_otros_datos">
					<input name="id" value="<% if (session.getAttribute("temp_admin_organization_id") != null) { %><%= session.getAttribute("temp_admin_organization_id").toString() %><% } %>" type="hidden">

					<fieldset>	
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element1" /></label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element2" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element3" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q1_lkup" name="q1_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q1_lkup") == null || session.getAttribute("temp_admin_organization_q1_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q1_lkup") != null && session.getAttribute("temp_admin_organization_q1_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element8" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element9" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q2_lkup" name="q2_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q2_lkup") == null || session.getAttribute("temp_admin_organization_q2_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q2_lkup") != null && session.getAttribute("temp_admin_organization_q2_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element10" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element11" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q3_lkup" name="q3_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q3_lkup") == null || session.getAttribute("temp_admin_organization_q3_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q3_lkup") != null && session.getAttribute("temp_admin_organization_q3_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element12" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element13" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q43_lkup" name="q43_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q43_lkup") == null || session.getAttribute("temp_admin_organization_q43_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q43_lkup") != null && session.getAttribute("temp_admin_organization_q43_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
						</div>
					</fieldset> <!-- fin de com-interna -->
					<fieldset>	
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element14" /></label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element15" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element16" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q4_lkup" name="q4_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q4_lkup") == null || session.getAttribute("temp_admin_organization_q4_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q4_lkup") != null && session.getAttribute("temp_admin_organization_q4_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element17" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element18" /> </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q5_lkup" name="q5_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q5_lkup") == null || session.getAttribute("temp_admin_organization_q5_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q5_lkup") != null && session.getAttribute("temp_admin_organization_q5_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element19" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element20" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q6_lkup" name="q6_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q6_lkup") == null || session.getAttribute("temp_admin_organization_q6_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q6_lkup") != null && session.getAttribute("temp_admin_organization_q6_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element21" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element22" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q44_lkup" name="q44_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q44_lkup") == null || session.getAttribute("temp_admin_organization_q44_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q44_lkup") != null && session.getAttribute("temp_admin_organization_q44_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->								
						</div>
					</fieldset> <!-- fin de com-externa -->
					<fieldset>	
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element23" /></label></h5>
						<div class="table-responsive">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element24" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element25" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q7_lkup" name="q7_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q7_lkup") == null || session.getAttribute("temp_admin_organization_q7_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q7_lkup") != null && session.getAttribute("temp_admin_organization_q7_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element26" /></label>
									</div>
									<div class="ccol-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element27" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q8_lkup" name="q8_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q8_lkup") == null || session.getAttribute("temp_admin_organization_q8_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q8_lkup") != null && session.getAttribute("temp_admin_organization_q8_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element28" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element29" /> </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q9_lkup" name="q9_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q9_lkup") == null || session.getAttribute("temp_admin_organization_q9_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q9_lkup") != null && session.getAttribute("temp_admin_organization_q9_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element30" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element31" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q10_lkup" name="q10_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q10_lkup") == null || session.getAttribute("temp_admin_organization_q10_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q10_lkup") != null && session.getAttribute("temp_admin_organization_q10_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element32" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element33" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q11_lkup" name="q11_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q11_lkup") == null || session.getAttribute("temp_admin_organization_q11_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q11_lkup") != null && session.getAttribute("temp_admin_organization_q11_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element34" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element35" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q12_lkup" name="q12_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q12_lkup") == null || session.getAttribute("temp_admin_organization_q12_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q12_lkup") != null && session.getAttribute("temp_admin_organization_q12_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element36" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element37" /> </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q13_lkup" name="q13_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q13_lkup") == null || session.getAttribute("temp_admin_organization_q13_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q13_lkup") != null && session.getAttribute("temp_admin_organization_q13_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element38" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element39" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q14_lkup" name="q14_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q14_lkup") == null || session.getAttribute("temp_admin_organization_q14_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q14_lkup") != null && session.getAttribute("temp_admin_organization_q14_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>

										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element40" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element41" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q45_lkup" name="q45_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q45_lkup") == null || session.getAttribute("temp_admin_organization_q45_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q45_lkup") != null && session.getAttribute("temp_admin_organization_q45_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->								
						</div>
					</fieldset> <!-- fin de reclutamiento -->
					
					
					
					
					<fieldset>	
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element42" /></label></h5>
						<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element43" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element44" /></label>
									</div>
									<div class="col-xs-4  ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q15_lkup" name="q15_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q15_lkup") == null || session.getAttribute("temp_admin_organization_q15_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q15_lkup") != null && session.getAttribute("temp_admin_organization_q15_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element45" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element46" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q16_lkup" name="q16_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q16_lkup") == null || session.getAttribute("temp_admin_organization_q1_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q16_lkup") != null && session.getAttribute("temp_admin_organization_q16_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element47" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element48" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q17_lkup" name="q17_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q17_lkup") == null || session.getAttribute("temp_admin_organization_q17_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q17_lkup") != null && session.getAttribute("temp_admin_organization_q17_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element49" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element50" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q18_lkup" name="q18_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q18_lkup") == null || session.getAttribute("temp_admin_organization_q18_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q18_lkup") != null && session.getAttribute("temp_admin_organization_q18_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element51" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element52" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q19_lkup" name="q19_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q19_lkup") == null || session.getAttribute("temp_admin_organization_q19_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q19_lkup") != null && session.getAttribute("temp_admin_organization_q19_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element53" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element54" /> </label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q20_lkup" name="q20_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q20_lkup") == null || session.getAttribute("temp_admin_organization_q20_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q20_lkup") != null && session.getAttribute("temp_admin_organization_q20_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element55" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element56" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q21_lkup" name="q21_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q21_lkup") == null || session.getAttribute("temp_admin_organization_q21_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q21_lkup") != null && session.getAttribute("temp_admin_organization_q21_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element57" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element58" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q46_lkup" name="q46_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q46_lkup") == null || session.getAttribute("temp_admin_organization_q46_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q46_lkup") != null && session.getAttribute("temp_admin_organization_q46_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->								
							</div>
						</fieldset>
						<fieldset>
							<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element59" /></label></h5>
							<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element60" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element61" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q22_lkup" name="q22_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q22_lkup") == null || session.getAttribute("temp_admin_organization_q22_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q22_lkup") != null && session.getAttribute("temp_admin_organization_q22_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element62" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element63" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q23_lkup" name="q23_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q23_lkup") == null || session.getAttribute("temp_admin_organization_q23_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q23_lkup") != null && session.getAttribute("temp_admin_organization_q23_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element64" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element65" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q24_lkup" name="q24_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q24_lkup") == null || session.getAttribute("temp_admin_organization_q24_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q24_lkup") != null && session.getAttribute("temp_admin_organization_q24_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element66" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element67" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q25_lkup" name="q25_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q25_lkup") == null || session.getAttribute("temp_admin_organization_q25_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q25_lkup") != null && session.getAttribute("temp_admin_organization_q25_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element68" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element69" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q26_lkup" name="q26_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q26_lkup") == null || session.getAttribute("temp_admin_organization_q26_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q26_lkup") != null && session.getAttribute("temp_admin_organization_q26_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element70" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element71" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q27_lkup" name="q27_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q27_lkup") == null || session.getAttribute("temp_admin_organization_q27_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q27_lkup") != null && session.getAttribute("temp_admin_organization_q27_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element72" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element73" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q28_lkup" name="q28_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q28_lkup") == null || session.getAttribute("temp_admin_organization_q28_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q28_lkup") != null && session.getAttribute("temp_admin_organization_q28_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element74" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element75" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q47_lkup" name="q47_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q47_lkup") == null || session.getAttribute("temp_admin_organization_q47_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q47_lkup") != null && session.getAttribute("temp_admin_organization_q47_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->								
							</div>
					</fieldset> <!-- fin de reclutamiento -->
					
					
					
					
					
					<fieldset>	
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element76" /></label></h5>
						<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element77" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element78" /></label>
									</div>
									<div class="col-xs-4  ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q29_lkup" name="q29_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q29_lkup") == null || session.getAttribute("temp_admin_organization_q29_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q29_lkup") != null && session.getAttribute("temp_admin_organization_q29_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element79" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element80" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q30_lkup" name="q30_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q30_lkup") == null || session.getAttribute("temp_admin_organization_q30_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q30_lkup") != null && session.getAttribute("temp_admin_organization_q30_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element81" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element82" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q31_lkup" name="q31_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q31_lkup") == null || session.getAttribute("temp_admin_organization_q31_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q31_lkup") != null && session.getAttribute("temp_admin_organization_q31_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element83" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element84" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q32_lkup" name="q32_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q32_lkup") == null || session.getAttribute("temp_admin_organization_q32_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q32_lkup") != null && session.getAttribute("temp_admin_organization_q32_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element85" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element86" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q33_lkup" name="q33_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q33_lkup")  == null || session.getAttribute("temp_admin_organization_q33_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q33_lkup") != null && session.getAttribute("temp_admin_organization_q33_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
							</div>
						</fieldset>
						
						<fieldset>
							<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element87" /></label></h5>
							<div class="table">
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element88" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element89" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q34_lkup" name="q34_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q34_lkup") == null || session.getAttribute("temp_admin_organization_q34_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q34_lkup") != null && session.getAttribute("temp_admin_organization_q34_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element90" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element91" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q35_lkup" name="q35_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q35_lkup") == null || session.getAttribute("temp_admin_organization_q35_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q35_lkup") != null && session.getAttribute("temp_admin_organization_q35_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
							
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element92" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element93" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q36_lkup" name="q36_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q36_lkup") == null || session.getAttribute("temp_admin_organization_q36_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q36_lkup") != null && session.getAttribute("temp_admin_organization_q36_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element94" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element95" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q37_lkup" name="q37_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q37_lkup") == null || session.getAttribute("temp_admin_organization_q37_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q37_lkup") != null && session.getAttribute("temp_admin_organization_q37_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element96" /></label>
									</div>
									<div class="col-xs-6 col-sm-7">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element97" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q38_lkup" name="q38_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q38_lkup") == null || session.getAttribute("temp_admin_organization_q38_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q38_lkup") != null && session.getAttribute("temp_admin_organization_q38_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element98" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element99" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q39_lkup" name="q39_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q39_lkup") == null || session.getAttribute("temp_admin_organization_q39_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q39_lkup") != null && session.getAttribute("temp_admin_organization_q39_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element100" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element101" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q40_lkup" name="q40_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q40_lkup") == null || session.getAttribute("temp_admin_organization_q40_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q40_lkup") != null && session.getAttribute("temp_admin_organization_q40_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element102" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element103" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q_lkup" name="q41_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q41_lkup") == null || session.getAttribute("temp_admin_organization_q41_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q41_lkup") != null && session.getAttribute("temp_admin_organization_q41_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element104" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element105" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q42_lkup" name="q42_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q42_lkup") == null || session.getAttribute("temp_admin_organization_q42_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q42_lkup") != null && session.getAttribute("temp_admin_organization_q42_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element106" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element107" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q48_lkup" name="q48_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q48_lkup") == null || session.getAttribute("temp_admin_organization_q48_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q48_lkup") != null && session.getAttribute("temp_admin_organization_q48_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
								
								<div class="row form-group">
									<div class="col-xs-1 ">
										<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element108" /></label>
									</div>
									<div class="col-xs-6 col-sm-7 ">
										<label class="titulo-input"><fmt:message key="empresa_otros_datos.element109" /></label>
									</div>
									<div class="col-xs-4 ">
										<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q49_lkup" name="q49_lkup"  class="form-control">
											<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q49_lkup") == null || session.getAttribute("temp_admin_organization_q49_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
											<option value="89" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
											<option value="90" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
											<option value="91" <% if (session.getAttribute("temp_admin_organization_q49_lkup") != null && session.getAttribute("temp_admin_organization_q49_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
										</select>
									</div>
								</div> <!-- fin de row -->
							</div>
						
					</fieldset> <!-- fin de reclutamiento -->
					
					<fieldset>
						<h5><label class="label label-primary padding-small"><fmt:message key="empresa_otros_datos.element110" /></label></h5>
						<div class="table">
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element111" /></label>
								</div>
								<div class="col-xs-6 col-sm-7">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element112" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q50_lkup" name="q50_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q50_lkup") == null || session.getAttribute("temp_admin_organization_q50_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q50_lkup") != null && session.getAttribute("temp_admin_organization_q50_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element113" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element114" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q51_lkup" name="q51_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q51_lkup") == null || session.getAttribute("temp_admin_organization_q51_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q51_lkup") != null && session.getAttribute("temp_admin_organization_q51_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
						
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element115" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element116" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q52_lkup" name="q52_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q52_lkup") == null || session.getAttribute("temp_admin_organization_q52_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q52_lkup") != null && session.getAttribute("temp_admin_organization_q52_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element117" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element118" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q53_lkup" name="q53_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q53_lkup") == null || session.getAttribute("temp_admin_organization_q53_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q53_lkup") != null && session.getAttribute("temp_admin_organization_q53_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element119" /></label>
								</div>
								<div class="col-xs-6 col-sm-7">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element120" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q54_lkup" name="q54_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q54_lkup") == null || session.getAttribute("temp_admin_organization_q54_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q54_lkup") != null && session.getAttribute("temp_admin_organization_q54_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element121" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element122" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q55_lkup" name="q55_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q55_lkup") == null || session.getAttribute("temp_admin_organization_q55_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q55_lkup") != null && session.getAttribute("temp_admin_organization_q55_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element123" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element124" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q56_lkup" name="q56_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q56_lkup") == null || session.getAttribute("temp_admin_organization_q56_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q56_lkup") != null && session.getAttribute("temp_admin_organization_q56_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element125" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element126" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q_lkup" name="q57_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q57_lkup") == null || session.getAttribute("temp_admin_organization_q57_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q57_lkup") != null && session.getAttribute("temp_admin_organization_q57_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element127" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element128" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q58_lkup" name="q58_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q58_lkup") == null || session.getAttribute("temp_admin_organization_q58_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q58_lkup") != null && session.getAttribute("temp_admin_organization_q58_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
									</select>
								</div>
							</div> <!-- fin de row -->
							<div class="row form-group">
								<div class="col-xs-1 ">
									<label class="numero-otros-datos"><fmt:message key="empresa_otros_datos.element129" /></label>
								</div>
								<div class="col-xs-6 col-sm-7 ">
									<label class="titulo-input"><fmt:message key="empresa_otros_datos.element130" /></label>
								</div>
								<div class="col-xs-4 ">
									<select <% if (session.getAttribute("temp_admin_organization_completed").toString().equals("Y") && session.getAttribute("temp_user_role_nm").toString().equals("Empresa")) { %> disabled <% } %> id="q59_lkup" name="q59_lkup"  class="form-control">
										<option value=""  disabled <% if (session.getAttribute("temp_admin_organization_q59_lkup") == null || session.getAttribute("temp_admin_organization_q59_lkup").equals("")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element4" /></option>
										<option value="89" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("89")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element5" /></option>
										<option value="90" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("90")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element6" /></option>
										<option value="91" <% if (session.getAttribute("temp_admin_organization_q59_lkup") != null && session.getAttribute("temp_admin_organization_q59_lkup").equals("91")) { %> selected <% } %>><fmt:message key="empresa_otros_datos.element7" /></option>
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
					<button type="submit" class="btn btn-info btn-block separador-top"><fmt:message key="empresa_otros_datos.element131" /></button>
<%
	}
%>
				</form>