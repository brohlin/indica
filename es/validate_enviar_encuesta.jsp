<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException" %>


<%	
	
	MailSender mailSender = new MailSender();
	InternetAddress[] addressTo = new InternetAddress[1];
	StringBuffer sbMessage = null;
	
	// mailSender.setSubject("ENCUESTA PARA EL PERSONAL DE " + session.getAttribute("temp_empresa_resultados_nm").toString() );
	
	request.setCharacterEncoding("UTF-8");
	String p_email_cellphone_survey = request.getParameter("email_cellphone_survey");
	String p_organization_id = request.getParameter("organization_id");
	String p_email = request.getParameter("email");	
	
	ServletContext context = pageContext.getServletContext();
	String domainUrl = context.getInitParameter("domain-url");
	DbResults db = null; 
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_organization_id);
	parameters.add(p_email);
	parameters.add(p_email_cellphone_survey);
	
	int x = 0;
	int size=0;	
	String bad_email = "";
	int len_email = 0;

	try {
		
		if ( p_email_cellphone_survey.equals("email") ) {

			String emailList[] = p_email.replaceAll("\\s","").split(",");
			for(String _email : emailList){
				if (MailSender.isValidEmailAddress(_email) ) {
					System.out.println(_email);
					bad_email = _email; 
					len_email = _email.length();
					
					if (len_email>45) {
						throw new AddressException();
					}
					
				} else {
					bad_email = _email; 
					throw new AddressException();
				}
			}

		}
		
		if ( p_email_cellphone_survey.equals("cellphone") ) {

			String emailList2[] = p_email.replaceAll("\\s","").split(",");
			for(String _email2 : emailList2){
				
				System.out.println(_email2);
				bad_email = _email2; 
				len_email = _email2.length();
				
				if (len_email>45) {
					throw new AddressException();
				} 
			}

		}		
		
		x = Database.callProc("p_ins_emp_survey", parameters);
		
		if (p_email_cellphone_survey.equals("email")) {
	
			parameters.clear();
			parameters.add(p_organization_id);
			db = Database.callProcResults("p_get_new_encuesta_invites", parameters);
			
			while(size<db.getRowCount()) {
				addressTo[0] = new InternetAddress(db.getRow(size).get(1));
				mailSender.setSubject("ENCUESTA PARA EL PERSONAL DE " + db.getRow(size).get(0) );
				
				sbMessage = new StringBuffer("Estimad@ colega,");
				sbMessage.append(System.getProperty("line.separator"));
				sbMessage.append(System.getProperty("line.separator"));
				sbMessage.append("Por favor, complete la encuesta.");
				sbMessage.append(System.getProperty("line.separator"));
				sbMessage.append(System.getProperty("line.separator"));
				
				sbMessage.append("Encuesta: " + domainUrl + "indica/es/main.jsp" + db.getRow(size).get(2));
				sbMessage.append(System.getProperty("line.separator"));
				
				
				mailSender.setMessage(sbMessage.toString());
				mailSender.setSiteName("Indica Igualdad");
				mailSender.setAddressTo(addressTo[0]);
				
				try {
					mailSender.send();
					parameters.clear();
					parameters.add(p_organization_id);
					parameters.add(db.getRow(size).get(3));
					
					x = Database.callProc("p_upd_emp_survey_sent_invites", parameters);
					
				} catch(Exception e) {
					// just keep going
				}
				size++;			
			}
		}
		
		response.sendRedirect("/indica/es/main.jsp?target=gestionar_encuestas");
	} catch (AddressException addex) {
		response.sendRedirect("/indica/es/main.jsp?target=gestionar_encuestas&message=bad_email_list&bad_email=" + bad_email);
	} catch (Exception e) {	
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>