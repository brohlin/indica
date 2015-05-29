<details>
<summary>Entrevista Social - <a href="/onpar/EntrevistaSocial_v2" target="_blank">Imprimir la entrevista social para la firma</a></summary>
<table border="0" cellspacing="2" cellpadding="4" width="600">
	<tr>
		<td align="left" valign="bottom" colspan="2" class="subHdrBlackTxt" nowrap><strong>Datos Generales de la Declaraci�n Jurada</td>
	</tr>
	<tr class="datatablerowv2">
		<td colspan="4">N�mero de caso:  <%= session.getAttribute("temp_solicitante_v2_id") %> </td>
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
	    <td colspan="4">Educaci�n: </td>
	</tr>		
	
	<tr>
		<td width="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td width="95%">
			<table border="0">
				<tr class="datatablerowaltv2">
					<td>Nombre</td>
				    <td>Ciudad/Pa�s</td>
					<td>Desde</td>
				    <td>Hasta</td>
				    <td>Titulo</td>
				</tr>
				<tr class="datatablerowv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_edu_nombre") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_lugar") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_titulo") %></td>	    
				</tr>
				<tr class="datatablerowaltv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_edu_nombre2") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_lugar2") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_desde2") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_hasta2") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_edu_titulo2") %></td>	    
				</tr>		
			</table>
		</td>
	</tr>






	<tr class="datatablerowv2">
	    <td colspan="4">Religi�n: <%= session.getAttribute("temp_solicitante_v2_pre_religion_lkup") %> </td>
	</tr>

	<tr class="datatablerowv2">
	    <td colspan="4">Fecha salida su pa�s de origen: <%= session.getAttribute("temp_solicitante_v2_pre_fecha_de_salida_origen") %> </td>
	</tr>	
	<tr class="datatablerowv2">
	    <td colspan="4">Ruta utilizada para llegar a Panam�: </td>
	</tr>	
	<tr>
		<td width="5%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td width="95%">
			<table border="0">
				<tr class="datatablerowaltv2">
					
					<td>Pa�ses de tr�nsito</td>
				    <td>Desde</td>
					<td>Hasta</td>
				    <td>Medio</td>
				    
				</tr>
				<tr class="datatablerowv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje1_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje1_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje1_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje1_medio") %></td>
				</tr>
				
				<tr class="datatablerowaltv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje2_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje2_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje2_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje2_medio") %></td>
				</tr>
						<tr class="datatablerowv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje3_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje3_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje3_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje3_medio") %></td>
				</tr>
				<tr class="datatablerowaltv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje4_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje4_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje4_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje4_medio") %></td>
				</tr>
				<tr class="datatablerowv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje5_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje5_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje5_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje5_medio") %></td>
				</tr>
				<tr class="datatablerowaltv2">
					<td><%= session.getAttribute("temp_solicitante_v2_pre_viaje6_pais") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje6_desde") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje6_hasta") %></td>
				    <td><%= session.getAttribute("temp_solicitante_v2_pre_viaje6_medio") %></td>
				</tr>
			</table>
		</td>
	</tr>
	
	
	
	<tr><td colspan="4" align="left">Fecha de entrada a Panam�:  <%= session.getAttribute("temp_solicitante_v2_pre_fecha_llegada_panama") %></td></tr>

	<tr>
	    <td colspan="4">Fecha de llegada a ONPAR:  <%= session.getAttribute("temp_solicitante_v2_pre_fecha_solicitud_onpar") %></td>
	</tr>	
	<tr class="datatablerowv2">
		<td colspan="4">Direcci�n actual:  <%= session.getAttribute("temp_solicitante_v2_pre_direccion_actual") %></td>
	</tr>
	<tr>
	    <td colspan="4">N�mero de tel�fono:  <%= session.getAttribute("temp_solicitante_v2_pre_telefono1") %></td>
	</tr>
	<tr>
		<td colspan="4">Estado civil: <%= session.getAttribute("temp_solicitante_v2_pre_estatus_civil_lkup") %></td>
	</tr>
		
</table>

<form action="sql_upd_solicitante_soc_v2.jsp" method="post" name="solicitante_upd_soc_v2">

	<input type="hidden" name="id" value="<%= session.getAttribute("temp_solicitante_v2_id") %>">

<!--- Start display. --->
<table border="0" cellspacing="0" cellpadding="4" width="600">
<tr>
	<td align="left" valign="bottom" colspan="2" class="subHdrBlackTxt" nowrap><strong>Preguntas/Repuestas</strong>
	<br>
	</td>
</tr>

<tr class="datatablerowv2"><td colspan="4">Direcci�n en su pa�s de origen: <input type="text" name="pre_direccion_pais_de_origen" value="<%= session.getAttribute("temp_solicitante_v2_pre_direccion_pais_de_origen") %>" size="60" maxlength="80"></td></tr>		
<tr class="datatablerowv2"><td colspan="4">Profesi�n (a que se dedicaba) en su pa�s de origen: <input type="text" name="pre_ocup_pais_de_origen" value="<%= session.getAttribute("temp_solicitante_v2_pre_ocup_pais_de_origen") %>" size="40" maxlength="40"></td></tr>		
<tr class="datatablerowv2"><td colspan="4">Lugar de trabajo: <input type="text" name="pre_lugar_de_trabajo" value="<%= session.getAttribute("temp_solicitante_v2_pre_lugar_de_trabajo") %>" size="40" maxlength="40"></td></tr>	
<br>

<tr><td  align="left">Fecha de entrevista social:  <input type="date" name="pre_fecha_entrevista_social" value="<%= session.getAttribute("temp_solicitante_v2_pre_fecha_entrevista_social") %>" required="required" ></td></tr>
<tr><td align="left" valign="top">1. Relato de la situaci�n que motiv� la salida de su pa�s de origen:</td><td><textarea  name="pre_soc_qiii" cols="50" rows="20" maxlength="2000"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qiii") %></textarea></td></tr>
<tr><td align="left" valign="top">2. C�mo era su situaci�n econ�mica en su pa�s de origen:</td><td><textarea  name="pre_soc_qv11" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv11") %></textarea></td></tr>
<tr><td align="left" valign="top">3. Ingreso laboral en su pa�s de origen:</td><td><textarea  name="pre_soc_qv12" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv12") %></textarea></td></tr>
<tr><td align="left" valign="top">4. Ingreso laboral en Panam� y a que se dedica actualmente:</td><td><textarea  name="pre_soc_qv13" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv13") %></textarea></td></tr>
<tr><td align="left" valign="top">5. Aspectos econ�micos relevantes del caso:</td><td><textarea  name="pre_soc_qv14" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv14") %></textarea></td></tr>
<tr><td align="left" valign="top">6. Condiciones de las vivienda familiar en su pa�s de origen:</td><td><textarea  name="pre_soc_qv21" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv21") %></textarea></td></tr>
<tr><td align="left" valign="top">7. Condiciones habitacionales actuales:</td><td><textarea  name="pre_soc_qv22" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv22") %></textarea></td></tr>
<tr><td align="left" valign="top">8. Aspectos habitacionales relevantes en el caso:</td><td><textarea  name="pre_soc_qv23" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv23") %></textarea></td></tr>
<tr><td align="left" valign="top">9. Condici�n educativa de los miembros menores en su pa�s de origen:</td><td><textarea  name="pre_soc_qv31" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv31") %></textarea></td></tr>
<tr><td align="left" valign="top">11. Condici�n educativa de los miembros menores en Panam�:</td><td><textarea  name="pre_soc_qv32" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv32") %></textarea></td></tr>
<tr><td align="left" valign="top">11. Aspectos educativos relevantes en el caso:</td><td><textarea  name="pre_soc_qv33" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv33") %></textarea></td></tr>
<tr><td align="left" valign="top">12. Alg�n miembro de su familia presenta discapacidad:</td><td><textarea  name="pre_soc_qv41" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv41") %></textarea></td></tr>
<tr><td align="left" valign="top">13. Antecedentes de salud de los solicitantes:</td><td><textarea  name="pre_soc_qv42" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv42") %></textarea></td></tr>
<tr><td align="left" valign="top">14. Condici�n de salud actual:</td><td><textarea  name="pre_soc_qv43" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qv43") %></textarea></td></tr>
<tr><td align="left" valign="top">15. Causas que lo motivaron a buscar refugio:</td><td><textarea  name="pre_soc_qvi1" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvi1") %></textarea></td></tr>
<tr><td align="left" valign="top">16. Acciones de busqueda de protecci�n realizadas en su pa�s de origen:</td><td><textarea  name="pre_soc_qvi2" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvi2") %></textarea></td></tr>
<tr><td align="left" valign="top">17. Reubicaci�n en su pa�s de origen o de residencia (desplazamientos):</td><td><textarea  name="pre_soc_qvi3" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvi3") %></textarea></td></tr>
<tr><td align="left" valign="top">18. Tiene usted planes de permanecer en Panam� o viajar a otro pa�s:</td><td><textarea  name="pre_soc_qvi4" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvi4") %></textarea></td></tr>
<tr><td align="left" valign="top">19. Documentos que presenta:</td><td><textarea  name="pre_soc_qvi5" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvi5") %></textarea></td></tr>
<tr><td align="left" valign="top">20. Analisis de trabajador social:</td><td><textarea  name="pre_soc_qvii" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qvii") %></textarea></td></tr>
<tr><td align="left" valign="top">21. Recomendaciones del departamento:</td><td><textarea  name="pre_soc_qviii" cols="50" rows="4" maxlength="200"><%= session.getAttribute("temp_solicitante_v2_pre_soc_qviii") %></textarea></td></tr>

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
