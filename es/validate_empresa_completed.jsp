<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>

<%	
	request.setCharacterEncoding("UTF-8");
	String p_organization_id = request.getParameter("id");
	String mQuery = "update organization set resultados_informe = ?, resultados_encuesta = ?, last_mod_tmstmp = now() where id = ?";
	String _language = request.getParameter("language");
	
	String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
	
	Connection con = null;
	PreparedStatement prest = null;
	DataSource IndicaDB;
	javax.naming.Context initCtx = new javax.naming.InitialContext();
	javax.naming.Context envCtx = (javax.naming.Context) initCtx.lookup("java:comp/env");
	IndicaDB = (DataSource) envCtx.lookup("jdbc/IndicaDB");
	
	ServletContext context = pageContext.getServletContext();
	String phantomjsPath = context.getInitParameter("phantomjs-path");
	String domainUrl = context.getInitParameter("domain-url");
	String phantomjsReportsDirectory = context.getInitParameter("phantomjs-reports-directory");
	String outputFile = phantomjsReportsDirectory + p_organization_id +"_resultados_informe.pdf";
	String outputFile2 = phantomjsReportsDirectory + p_organization_id +"_resultados_encuesta.pdf";

	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(p_organization_id);
	parameters.add(request.getParameter("completed"));

	int x = Database.callProc("p_upd_organization_completed", parameters);	
	
	int y = 0;
	int exitVal = 0;
	int exitVal2 = 0;
	int z = 0;
		
	System.out.println("Start 1: "+ timeStamp);
	try {
		Process p = Runtime.getRuntime().exec(phantomjsPath + "bin/phantomjs " + phantomjsPath + "examples/rasterize3.js " + domainUrl + "indica/es/empresa_render_resultados_highcharts.jsp?language=" + _language + "&organization_id=" + p_organization_id + " " + outputFile + " " + "A3");
		System.out.println(phantomjsPath + "bin/phantomjs " + phantomjsPath + "examples/rasterize3.js " + domainUrl + "indica/es/empresa_render_resultados_highcharts.jsp?language=" + _language + "&organization_id=" + p_organization_id + " " + outputFile + " " + "A3");
		exitVal = p.waitFor();
		System.out.println("Call phantomjs to generate resultados informe: " + String.valueOf(exitVal));
		
        BufferedReader in = new BufferedReader(
                            new InputStreamReader(p.getInputStream()));
        String line = null;
        while ((line = in.readLine()) != null) {
            System.out.println(line);
        }     
        
   	} catch (IOException e) {
        e.printStackTrace();
    }


	try {
		Process p2 = Runtime.getRuntime().exec(phantomjsPath + "bin/phantomjs " + phantomjsPath + "examples/rasterize3.js " + domainUrl + "indica/es/empresa_render_resultados_encuesta.jsp?language=" + _language + "&organization_id=" + p_organization_id + " " + outputFile2 + " " + "A3");
		System.out.println(phantomjsPath + "bin/phantomjs " + phantomjsPath + "examples/rasterize3.js " + domainUrl + "indica/es/empresa_render_resultados_encuesta.jsp?language=" + _language + "&organization_id=" + p_organization_id + " " + outputFile2 + " " + "A3");

		
		exitVal2 = p2.waitFor();
		System.out.println("Call phantomjs to generate resultados encuesta: " + String.valueOf(exitVal2));
		
        BufferedReader in2 = new BufferedReader(
                           new InputStreamReader(p2.getInputStream()));
        String line2 = null;
        while ((line2 = in2.readLine()) != null) {
            System.out.println(line2);
        }     
        
    } catch (IOException e) {
        e.printStackTrace();
    }
	
	if ((exitVal + exitVal2) == 0) {
		try{
			
			con = IndicaDB.getConnection();
			prest=con.prepareStatement(mQuery);
			
			FileInputStream fs = new FileInputStream(outputFile);
			FileInputStream fs2 = new FileInputStream(outputFile2);
			prest.setBinaryStream(1,fs,fs.available());
			prest.setBinaryStream(2,fs2,fs2.available());
			prest.setString(3, p_organization_id);
			// prest.setString(2, p_organization_id);
				
			y = prest.executeUpdate();
					
		}
		catch(Exception e){
			e.printStackTrace();
		} finally {
			if(prest != null) { prest.close(); }
			if(con != null) { con.close(); }
		}
	} else {
		parameters.clear();
		parameters.add(p_organization_id);
		parameters.add("N");

		z = Database.callProc("p_upd_organization_completed", parameters);
		session.setAttribute("temp_user_organization_completed","N");
	}
	
	System.out.println("exitVal = " + String.valueOf(exitVal));
	System.out.println("exitVal2 = " + String.valueOf(exitVal));

	if (x==1 && z==0) {
		session.setAttribute("temp_user_organization_completed","Y");
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=caracterizacion_basica&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>