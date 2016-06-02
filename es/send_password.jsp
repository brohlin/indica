<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="java.net.URLEncoder" %>


<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="org.undp.i18n.text" />

<%
	String[] args = null;
	// InternetAddress addressTo = null;
	InternetAddress[] addressTo = new InternetAddress[1];
    
	MailSender mail = new MailSender();;
	String p_email = request.getParameter("email");
	DynStringArray parameters = new DynStringArray();
	parameters.add(p_email);
	StringBuffer sbMessage = new StringBuffer("Estimad@ colega,");
	sbMessage.append(System.getProperty("line.separator"));
	sbMessage.append(System.getProperty("line.separator"));
	
	sbMessage.append("Usted puede acceder la página web de Indica Igualdad usando lo siguiente: ");
	sbMessage.append(System.getProperty("line.separator"));
	sbMessage.append(System.getProperty("line.separator"));
	

	DbResults db = Database.callProcResults("p_get_user_email", parameters);
	
	int size=0;
	
	if (db.getRowCount()>size) {
		while(size<db.getRowCount())
		{
			addressTo[0] = new InternetAddress(db.getRow(size).get(0));
			// addressTo = new InternetAddress(db.getRow(size).get(0));
			sbMessage.append("URL: " + db.getRow(size).get(3));
			sbMessage.append(System.getProperty("line.separator"));
			
			sbMessage.append("Email: " + db.getRow(size).get(0));
			sbMessage.append(System.getProperty("line.separator"));
			sbMessage.append("Contraseña: " + db.getRow(size).get(1));
			sbMessage.append(System.getProperty("line.separator"));

			size++;
		}
		
		mail.setSubject("Su acceso a Indica Igualdad");
		mail.setMessage(sbMessage.toString());
		mail.setSiteName("Indica Igualdad");
		
		mail.setAddressTo(addressTo[0]);
		mail.send();
		
		response.sendRedirect("/indica/es/main.jsp?target=login&message=sent_password");
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=lost_password&message=no_email_found");
	} 

%>