<%@ page language="java" import="java.sql.*" %>
<%@ page import="org.onpar.database.*" %>
<%@ page import="org.onpar.utils.*" %>
<%@ page import="org.onpar.utils.arrays.*" %>
<%@ page import="org.onpar.log.*" %>
<%@ page import="javax.sql.*" %>

<!-- %
	String mQuery = "select " +
					"pre_copia_pasaporte, " +
					"pre_copia_otro_documento, " +
					"pre_declaracion_jurada, " +
					"pre_entrevista_social, " +
					"pre_soc_foto_jefe_de_familia, " +
					"pre_entrevista_legal, " +
					"adm_peticion_para_la_recon, " +
					"adm_peticion_para_la_apel, " +
					"ref_peticion_para_la_recon, " +
					"ref_peticion_para_la_apel, " +
					"renuncia, " +
					"quitar_refug_recon " +
					"from vw_solicitante " +
					"where id = ? " + 
					"and id > 0 ";
	
	String mId = session.getAttribute("temp_solicitante_v2_id").toString();

	Connection con = null;
	PreparedStatement prest = null;
	ResultSet rs = null;
	
	DataSource OnparDB;
	javax.naming.Context initCtx = new javax.naming.InitialContext();
	javax.naming.Context envCtx = (javax.naming.Context) initCtx.lookup("java:comp/env");
	OnparDB = (DataSource) envCtx.lookup("jdbc/OnparDB");

	try{
		if(OnparDB == null) {
			javax.naming.Context initCtx1 = new javax.naming.InitialContext();
			javax.naming.Context envCtx1 = (javax.naming.Context) initCtx1.lookup("java:comp/env");
			OnparDB = (DataSource) envCtx1.lookup("jdbc/OnparDB");
		}
	} catch(Exception e){
		System.out.println("inside the context exception");
		e.printStackTrace();
	}

	con = OnparDB.getConnection();	
	System.out.println("before try");
	// System.out.println(mQuery);
	
	
	try{
		if (session.getAttribute("email") != null) {
		
			prest=con.prepareStatement(mQuery);
			prest.setString(1,mId);
			rs=prest.executeQuery();

			int size = 0;
			

			while(rs.next())
			{
				size++;
				session.setAttribute("temp_solicitante_v2_pre_copia_pasaporte", rs.getBlob(1));
				session.setAttribute("temp_solicitante_v2_pre_copia_otro_documento", rs.getBlob(2));	
				session.setAttribute("temp_solicitante_v2_pre_declaracion_jurada", rs.getBlob(3));
				session.setAttribute("temp_solicitante_v2_pre_entrevista_social", rs.getBlob(4));
				session.setAttribute("temp_solicitante_v2_pre_soc_foto_jefe_de_familia", rs.getBlob(5));
				session.setAttribute("temp_solicitante_v2_pre_entrevista_legal", rs.getBlob(6));
				session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_recon", rs.getBlob(7));
				session.setAttribute("temp_solicitante_v2_adm_peticion_para_la_apel", rs.getBlob(8));
				session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_recon", rs.getBlob(9));
				session.setAttribute("temp_solicitante_v2_ref_peticion_para_la_apel", rs.getBlob(10));
				session.setAttribute("temp_solicitante_v2_renuncia", rs.getBlob(11));
				session.setAttribute("temp_solicitante_v2_quitar_refug_recon", rs.getBlob(12));				
			}
			
		} else {
			response.sendRedirect("/onpar/salir.jsp");
		}
	}
	catch(Exception e){
		throw e;
	} finally {
		if(prest != null) { prest.close(); }
		if(rs != null) { rs.close(); }
		if(con != null) { con.close(); }
	}
% -->
<%
	DynStringArray parameters2 = new DynStringArray();
	DbResults db2;
	String inviewby = "";

	if (session.getAttribute("temp_solicitante_v2_id") == null) {
		parameters2.add("-1");
	} else {
		parameters2.add(session.getAttribute("temp_solicitante_v2_id").toString());
	}
	
	try {
		db2 = Database.callProcResults("p_get_solicitante_user_views", parameters2);
		if (db2.hasRows()) {
			inviewby = db2.generateHtmlTableCss();
		}
		
	} catch (SQLException s) {
	    System.out.println(s.getMessage());
	}	
%>
	
<fieldset>
<div style="background-color:yellow;">
<%= inviewby %>
</div>
</fieldset>
<br>
<table border="0" cellspacing="0" cellpadding="4" width="600">
<tr>
	<td valign="top" colspan="2" width="270" class="hdrBlackTxt">
	Solicitante: 
	<%= session.getAttribute("temp_solicitante_v2_id").toString() %>&nbsp;-&nbsp;<%= session.getAttribute("temp_solicitante_v2_pre_primer_nombre") %>&nbsp;<%= session.getAttribute("temp_solicitante_v2_pre_apellido_paterno") %>&nbsp;<%= session.getAttribute("temp_solicitante_v2_pre_apellido_materno") %>
	</td>
</tr>

<%
	if (session.getAttribute("temp_solicitante_v2_pre_estatus_lkup").toString().equals("Digitalizar Caso Cerrado") && session.getAttribute("temp_solicitante_v2_pre_copia_otro_documento") == null) {
%>
        <form method="POST" action="sql_upd_solicitante_file_otro_v2.jsp" enctype="multipart/form-data" onsubmit="return checkFilesize('fileinput22')">
        	<input type="hidden" name="id" value="<%= session.getAttribute("temp_solicitante_v2_id") %>">
        <br>
		<tr bgcolor="yellow">        
        	
        	<td>Subir Otro Documento para digitalizar el caso cerrado:</td>
        	<td><input  type="file" name="file" accept="application/pdf" required="required" id="fileinput22"></td>
            <td></td>
            <td><input  type="submit" class="butnTxt" value="Guardar" name="save">            
        </tr>
        <br>  
        </form>
<%
	}
%>

</table>

<%
	if (session.getAttribute("temp_solicitante_v2_pre_declaracion_jurada") == null || (session.getAttribute("role_id").equals("4"))) {
%>
<br>
<details>
<summary>Declaración Jurada - <a href="/onpar/DeclaracionJurada_v2" target="_blank">Imprimir la declaración jurada para la firma</a></summary>
<form action="sql_upd_solicitante_v2.jsp" method="post" name="solicitante_upd_v2">

	<input type="hidden" name="id" value="<%= session.getAttribute("temp_solicitante_v2_id").toString() %>">

<jsp:include page="dj_datos_personales.jsp" flush="true" />
<br>

<jsp:include page="dj_educacion.jsp" flush="true" />
<br>
<jsp:include page="dj_ocupacion.jsp" flush="true" />
<br>	
<jsp:include page="dj_militar.jsp" flush="true" />
<br>	
<jsp:include page="dj_org.jsp" flush="true" />
<br>
<jsp:include page="dj_arrest.jsp" flush="true" />
<br>
<jsp:include page="dj_familia.jsp" flush="true" />
<br>
<jsp:include page="dj_viaje.jsp" flush="true" />
<br>
<jsp:include page="dj_escrita.jsp" flush="true" />
<br>
<jsp:include page="dj_pref.jsp" flush="true" />
<br>
<jsp:include page="dj_entrega.jsp" flush="true" />
<br>
<jsp:include page="dj_uso_interno.jsp" flush="true" />
<br>

<fieldset>
<table border="0" cellspacing="2" cellpadding="4" width="600">		
	<tr class="datatablerowv2">
	<td>
		<!-- input type="submit" value="Guardar" name="save" onclick="return confirm('¿Está seguro que quiere guardar este formulario?');" -->
		<input type="submit" value="Guardar" name="save">
	</td>
	<td>
		<input type="reset" value="Reiniciar" name="reset">
	</td>
</tr>
</table>
</fieldset>
<br>
</form>
</details>

<%
	} else {
%>
		<br>
		<details>
			<summary>Declaración Jurada - No se puede hacer cambios a la Declaración Jurada después de subirla.</summary>
		</details>
<%
	}
%>
<%
	if ((session.getAttribute("role_id").equals("2")) || (session.getAttribute("role_id").equals("4"))) {
		if (session.getAttribute("temp_solicitante_v2_pre_entrevista_legal") == null || (session.getAttribute("role_id").equals("4"))) {
%>
	<br>
	<br>	
	<%@include file="entrevista_legal_v2.jsp"%>
<%
		}  else {
%>
			<br>
			<details>
				<summary>Entrevista Legal - No se puede hacer cambios a la Entrevista Legal después de subir el PDF.</summary>
			</details>
<%
		}
	}

	if ((session.getAttribute("role_id").equals("3")) || (session.getAttribute("role_id").equals("4"))) {
		if (session.getAttribute("temp_solicitante_v2_pre_entrevista_social") == null || (session.getAttribute("role_id").equals("4"))) {
%>	
	<br>
	<br>
	<%@include file="entrevista_social_v2.jsp"%>
<%
		} else {
%>
			<br>
			<details>
				<summary>Entrevista Social - No se puede hacer cambios a la Entrevista Social después de subir el PDF.</summary>
			</details>
<%
		}
	}
%>

<br>
<br>
<jsp:include page="direccion_v2.jsp" flush="true" />
<br>
<br>
<jsp:include page="comision_v2.jsp" flush="true" />
<br>
<br>
<jsp:include page="subir_archivos.jsp" flush="true" />
<br>
<br>
<jsp:include page="pruebas_v2.jsp" flush="true" />

<%
	if (session.getAttribute("role_id").equals("4")) {
%>
<table border="0" cellspacing="0" cellpadding="4" width="600">
	<tr>
		<td colspan="2" width="600">
			&nbsp;
			<br>
		</td>
	</tr>

	<form name="remove_solicitante_v2" action="sql_del_solicitante_v2.jsp" method="post" 
		onsubmit="return confirm('¿Está seguro que quiere eliminar el solicitante de la base de datos?');">

	<tr>
		<td colspace="2">
			<input type="submit" class="butnTxt" value="Eliminar Solicitante" name="eliminar">
		</td>
	</tr>
	</form>
</table>

<%
	}
%>