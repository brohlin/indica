<%@include file="./header.jsp"%>

 <%
  	String mName = "";
  	String mID = "0";
  	String mEmail = "";
  	String mUser_id = "";

 	try {
		mName = request.getParameter("name");
		mID = request.getParameter("id"); 
		mEmail = request.getParameter("email");
		mUser_id = request.getParameter("user_id"); 		
		if (mName == null) {
			mName = "";
		} else {
			mName = mName.toLowerCase();
		}
		if ((mID == null) || mID.equals("")) {
			mID = "0";
		}	
		
		if (mEmail == null) {
			mEmail = "";
		} else {
			mEmail = mEmail.toLowerCase();
		}
		if ((mUser_id == null) || mUser_id.equals("")) {
			mUser_id = "0";
		}		
	} catch (Exception ex) {
		// dont do anything here
	}
 
 %>

<%
	if (p_target != null) {
		if (p_target.equals("login")) { 
%>
			<%@include file="./login.jsp" %>
<%
		} else if (p_target.equals("failed_login")) {
%>
			<%@include file="./login.jsp" %>
<%	
		} else if (p_target.equals("lost_password")) {
%>
			<%@include file="./lost_password.jsp" %>
<%	
		} else if (p_target.equals("estructura")) {
%>
			<!-- %@include file="./estructura.jsp" % -->
			<jsp:include page="estructura.jsp" flush="true" />
<%	
		}  else if (p_target.equals("gestionar_empresas")) {
%>
			<!-- %@include file="./gestionar_empresas.jsp" % -->
			<jsp:include page="gestionar_empresas.jsp">
        		<jsp:param name="id" value="<%= mID %>"/>
        		<jsp:param name="name" value="<%= mName %>"/>
        		<jsp:param name="message" value="<%= p_message %>"/>
        		<jsp:param name="bad_email" value="<%= p_bad_email %>"/>
    		</jsp:include>
<%	
		}  else if (p_target.equals("empresa_nueva")) {
%>
			<%@include file="./empresa_nueva.jsp" %>
<%	
		}  else if (p_target.equals("empresa")) {
%>
			<%@include file="./empresa.jsp" %>
<%	
		}  else if (p_target.equals("gestionar_cuentas")) {
%>
			<!-- %@include file="./gestionar_cuentas.jsp" % -->
			<jsp:include page="gestionar_cuentas.jsp">
        		<jsp:param name="email" value="<%= mEmail %>"/>
        		<jsp:param name="user_id" value="<%= mUser_id %>"/>
    		</jsp:include>
<%	
		}  else if (p_target.equals("cuenta")) {
%>
			<%@include file="./cuenta.jsp" %>
<%	
		}  else if (p_target.equals("cuenta_nueva")) {
%>
			<%@include file="./cuenta_nueva.jsp" %>
<%	
		}  else if (p_target.equals("resultados")) {
%>
			<%@include file="./gestionar_resultados.jsp" %>
<%	
		}  else if (p_target.equals("empresa_resultados")) {
%>
			<%@include file="./empresa_resultados.jsp" %>
<%	
		}  else if (p_target.equals("empresa_resultados_highcharts")) {
%>
			<jsp:include page="empresa_resultados_highcharts.jsp" flush="true" />
			<!-- %@include file="./empresa_resultados_highcharts.jsp" % -->
<%	
		}  else if (p_target.equals("resultados_otros_datos")) {
%>
			<jsp:include page="resultados_otros_datos.jsp" flush="true" />
			<!-- %@include file="./resultados_otros_datos.jsp" % -->
			
<%	
		}    else if (p_target.equals("descargas")) {
%>
			<!-- %@include file="./descargas.jsp" % -->
			<jsp:include page="descargas.jsp" flush="true" />
			
<%	
		}  else if (p_target.equals("encuesta")) {
%>
			<jsp:include page="encuesta.jsp" flush="true" />
			<!-- %@include file="./encuesta.jsp" % -->
<%	
		}  else if (p_target.equals("encuesta_recibida")) {
%>
			<jsp:include page="encuesta_recibida.jsp" flush="true" />
<%	
		}  else if (p_target.equals("encuesta_expirada")) {
%>
			<jsp:include page="encuesta_expirada.jsp" flush="true" />
<%	
		}  else if (p_target.equals("encuesta_login")) {
%>
			<%@include file="./encuesta_login.jsp" %>
<%	
		}  else if (p_target.equals("exito")) {
%>
			<!-- %@include file="./exito.jsp" % -->
			<jsp:include page="exito.jsp" flush="true" />
<%	
		}  else if (p_target.equals("inicio")) {
%>
			<%@include file="./inicio.jsp" %>
<%	
		}  else if (p_target.equals("terminos")) {
%>
			<%@include file="./terminos.jsp" %>
<%	
		}  else if (p_target.equals("enviar_encuesta")) {
%>
			<%@include file="./enviar_encuesta.jsp" %>
<%	
		}  else if (p_target.equals("gestionar_encuestas")) {
%>
			<%@include file="./gestionar_encuestas.jsp" %>
<%	
		}  else if (p_target.equals("error")) {
%>
			<%@include file="./error.jsp" %>
			
<%	
		}  else {
%>					
		<jsp:include page="bajo_construccion.jsp" flush="true" />
		<!-- %@include file="./bajo_construccion.jsp" % -->	
<%
		}
	} 
%>
								


<%@include file="./footer.jsp"%>