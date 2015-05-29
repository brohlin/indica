<details>
<summary>Entrevista de Elegibildad y Asesoría Legal - <a href="/onpar/EntrevistaLegal_v2" target="_blank">Imprimir la entrevista legal para la firma</a></summary>
<form action="sql_upd_solicitante_leg_v2.jsp" method="post" name="solicitante_upd_leg_v2">

	<input type="hidden" name="id" value="<%= session.getAttribute("temp_solicitante_v2_id") %>">

<!-- fieldset -->
<table border="0" cellspacing="2" cellpadding="4" width="600">
	<tr>
		<td align="left" valign="bottom" colspan="2" class="subHdrBlackTxt" nowrap><strong>Datos Generales de la Declaración Jurada</td>
	</tr>
	<tr class="datatablerowv2">
		<td colspan="4">Número de caso:  <%= session.getAttribute("temp_solicitante_v2_id") %> </td>
	</tr>	
	<tr class="datatablerowv2">
		<td colspan="4">Nombre:  <%= session.getAttribute("temp_solicitante_v2_pre_primer_nombre") + " " + session.getAttribute("temp_solicitante_v2_pre_apellido_paterno") + " " + session.getAttribute("temp_solicitante_v2_pre_apellido_materno") %> </td>
	</tr>
	<tr class="datatablerowv2">
		<td colspan="4">Pasaporte: <%= session.getAttribute("temp_solicitante_v2_pre_pasaporte") %></td>
	</tr>
	<tr>
	    <td colspan="4">Otro documento de identidad:  <%= session.getAttribute("temp_solicitante_v2_pre_otros_documentos") %></td>
	</tr>
	
	<tr class="datatablerowv2">
	    <td colspan="4">Nacionalidad: <%= session.getAttribute("temp_solicitante_v2_pre_nacionalidad_lkup") %> </td>
	</tr>	
	<tr class="datatablerowv2">
	    <td colspan="4">Edad: <%= session.getAttribute("temp_solicitante_v2_pre_edad") %> </td>
	</tr>
	<tr class="datatablerowv2">
	    <td colspan="4">Fecha de nacimiento: <%= session.getAttribute("temp_solicitante_v2_pre_fecha_de_nacimiento") %> </td>
	</tr>	
	<tr class="datatablerowv2">
		<td colspan="4">Dirección actual:  <%= session.getAttribute("temp_solicitante_v2_pre_direccion_actual") %></td>
	</tr>
	<tr>
	    <td colspan="4">Número de teléfono:  <%= session.getAttribute("temp_solicitante_v2_pre_telefono1") %></td>
	</tr>

	<tr><td  align="left">Fecha de entrada a Panamá:  <%= session.getAttribute("temp_solicitante_v2_pre_fecha_llegada_panama") %></td></tr>

	<tr>
	    <td colspan="4">Fecha de llegada a ONPAR:  <%= session.getAttribute("temp_solicitante_v2_pre_fecha_solicitud_onpar") %></td>
	</tr>	
	
</table>
<!-- /fieldset -->


<!--- Start display. --->
<table border="0" cellspacing="0" cellpadding="4" width="600">
<br>
<br>
<tr>
	<td align="left" valign="bottom" colspan="2" class="subHdrBlackTxt" nowrap><strong>Preguntas/Repuestas</strong>
	<br>
	</td>
</tr>

<tr><td  align="left">Fecha de entrevista legal:  <input type="date" name="pre_fecha_entrevista_legal" value="<%= session.getAttribute("temp_solicitante_v2_pre_fecha_entrevista_legal") %>" required="required" ></td></tr>

<tr><td align="left" valign="top">1.- ¿Dónde nació usted? Y enuncie por favor zona de residencia en su país de origen: Zona Rural o Zona Urbana.</td><td><textarea  name="pre_leg_q1" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q1") %></textarea></td></tr>
<tr><td align="left" valign="top">2.- ¿Diga el/la entrevistado/a a qué se dedicaba en su país de origen?</td><td><textarea  name="pre_leg_q2" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q2") %></textarea></td></tr>
<tr><td align="left" valign="top">3.- ¿Diga el/la entrevistado/a quienes componen su núcleo familiar?</td><td><textarea  name="pre_leg_q3" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q3") %></textarea></td></tr>
<tr><td align="left" valign="top">4.- ¿Diga el/la entrevistadao/a si tiene familiares en Panamá?</td><td><textarea  name="pre_leg_q4" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q4") %></textarea></td></tr>
<tr><td align="left" valign="top">5.- ¿Que miembros de su núcleo familiar todavía permanecen en su país de origen y esperan reunirse con usted?</td><td><textarea  name="pre_leg_q5" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q5") %></textarea></td></tr>
<tr><td align="left" valign="top">6.- ¿Que miembros de su familia, y de los que permanecen en su país de origen, dependen de usted económicamente?</td><td><textarea  name="pre_leg_q6" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q6") %></textarea></td></tr>
<tr><td align="left" valign="top">7.- ¿Con que frecuencia se comunica usted con sus familiares?</td><td><textarea  name="pre_leg_q7" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q7") %></textarea></td></tr>
<tr><td align="left" valign="top">8.- ¿Qué vía utilizó para llegar hasta Panamá?</td><td><textarea  name="pre_leg_q8" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q8") %></textarea></td></tr>
<tr><td align="left" valign="top">9.- ¿Cual fue el recorrido o ruta de viaje que utilizó hasta llegar a Panamá</td><td><textarea  name="pre_leg_q9" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q9") %></textarea></td></tr>
<tr><td align="left" valign="top">10.- ¿Al ingresar al país se anunció como solicitante de refugio ante alguna autoridad?</td><td><textarea  name="pre_leg_q10" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q10") %></textarea></td></tr>
<tr><td align="left" valign="top">11.- ¿Qué tipo de documentos de identidad personal posee?</td><td><textarea  name="pre_leg_q11" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q11") %></textarea></td></tr>
<tr><td align="left" valign="top">12.- ¿Ha hecho usted algún trámite para regularizar su estatus en Panamá?</td><td><textarea  name="pre_leg_q12" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q12") %></textarea></td></tr>
<tr><td align="left" valign="top">13.- ¿Diga usted si genera algún tipo de ingresos en Panamá?</td><td><textarea  name="pre_leg_q13" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q13") %></textarea></td></tr>
<tr><td align="left" valign="top">14.- ¿Alguna vez ha sido deportado (a)?</td><td><textarea  name="pre_leg_q14" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q14") %></textarea></td></tr>
<tr><td align="left" valign="top">15.- ¿Usted u otro miembro de su familia han sido detenidos?</td><td><textarea  name="pre_leg_q15" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q15") %></textarea></td></tr>
<tr><td align="left" valign="top">16.- ¿Recibió en los primeros días de su llegada a Panamá alguna ayuda de emergencia?</td><td><textarea  name="pre_leg_q16" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q16") %></textarea></td></tr>
<tr><td align="left" valign="top">17.- ¿Que institución, ONGs, u otras le han brindado ayuda y orientación?</td><td><textarea  name="pre_leg_q17" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q17") %></textarea></td></tr>
<tr><td align="left" valign="top">18.- ¿Con quién viajó hacia Panamá?</td><td><textarea  name="pre_leg_q18" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q18") %></textarea></td></tr>
<tr><td align="left" valign="top">19.- ¿Quién la trajo a Panamá?</td><td><textarea  name="pre_leg_q19" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q19") %></textarea></td></tr>
<tr><td align="left" valign="top">20.- ¿Diga el/la entrevistado/a, cuales son las causas o motivos por la cual sale de su país de origen?</td><td><textarea  name="pre_leg_q20" cols="50" rows="20" maxlength="2000"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q20") %></textarea></td></tr>
<tr><td align="left" valign="top">21.- ¿Tiene usted conocimiento de quien o quienes la persiguen?</td><td><textarea  name="pre_leg_q21" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q21") %></textarea></td></tr>
<tr><td align="left" valign="top">22.- ¿Piensa usted regresar algún día a su país?</td><td><textarea  name="pre_leg_q22" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q22") %></textarea></td></tr>
<tr><td align="left" valign="top">23.- ¿Qué desea usted de Panamá?</td><td><textarea  name="pre_leg_q23" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q23") %></textarea></td></tr>
<tr><td align="left" valign="top">24.- ¿Ha visitado otros países además de Panamá?</td><td><textarea  name="pre_leg_q24" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q24") %></textarea></td></tr>
<tr><td align="left" valign="top">25.- ¿Por qué eligió Panamá para solicitar refugio?</td><td><textarea  name="pre_leg_q25" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q25") %></textarea></td></tr>
<tr><td align="left" valign="top">26.- ¿Desea agregar algo más a esta entrevista?</td><td><textarea  name="pre_leg_q26" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_leg_q26") %></textarea></td></tr>

<!--- Submit/cancel. --->
<tr>
	<td>&nbsp;</td>
	<td valign="middle">

	<!--- Save button --->
	<input  type="submit" class="butnTxt" value="Guardar" name="save">

	<!--- Cancel button --->
	<input  type="reset" class="butnTxt" value="Reiniciar" name="reset">
	</td>
</tr>
</table>
</form>
<br>
<br>
<br>
</details>
