<%@ page language="java" import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="org.undp.database.*" %>
<%@ page import="org.undp.log.*" %>
<%@ page import="org.undp.utils.*" %>
<%@ page import="org.undp.utils.arrays.*" %>
<%@ page import="java.util.Enumeration" %>

<%	
	request.setCharacterEncoding("UTF-8");
	String p_organization_id = request.getParameter("id");

	int _a = 0;
	int size = 0;

	String upd_rowid = "";
	String upd_dyn_row = "";
	String upd_num_mujeres = "";
	String upd_num_hombres = "";
	
	DynStringArray p = new DynStringArray();
	p.add(p_organization_id);
	p.add("table1"); 
	DbResults db = Database.callProcResults("p_get_organization_dynamic_row_ids", p);
	
	DynStringArray params_upd = new DynStringArray();

	while(size<db.getRowCount())
	{
		upd_rowid = db.getRow(size).get(0);
		upd_dyn_row = request.getParameter("dynamicrow_" + upd_rowid);
		upd_num_mujeres = request.getParameter("__num_mujeres_" + upd_rowid);
		upd_num_hombres = request.getParameter("__num_hombres_" + upd_rowid);
		
		params_upd.add(p_organization_id);
		params_upd.add(upd_dyn_row);
		params_upd.add(upd_num_mujeres);
		params_upd.add(upd_num_hombres);
		params_upd.add(upd_rowid);
		_a = Database.callProc("p_upd_organization_dynamic_rows", params_upd);
			
		LogManager.writeLog("Plantilla Table 1 Update: ", upd_dyn_row + "|" + upd_num_mujeres + "|" + upd_num_hombres + "|" +  upd_rowid);
		System.out.println( upd_dyn_row + "|" + upd_num_mujeres + "|" + upd_num_hombres + "|" +  upd_rowid);
		params_upd.clear();
		size++;
	}
	
	
	int _a2 = 0;
	int size2 = 0;

	String upd_rowid2 = "";
	String upd_dyn_row2 = "";
	String upd_num_mujeres2 = "";
	String upd_num_hombres2 = "";
	
	DynStringArray p2 = new DynStringArray();
	p2.add(p_organization_id);
	p2.add("table2"); 
	DbResults db2 = Database.callProcResults("p_get_organization_dynamic_row_ids", p2);
	
	DynStringArray params_upd2 = new DynStringArray();

	while(size2<db2.getRowCount())
	{
		upd_rowid2 = db2.getRow(size2).get(0);
		upd_dyn_row2 = request.getParameter("dynamicrow_table2_" + upd_rowid2);
		upd_num_mujeres2 = request.getParameter("__num_mujeres_table2_" + upd_rowid2);
		upd_num_hombres2 = request.getParameter("__num_hombres_table2_" + upd_rowid2);
		
		params_upd2.add(p_organization_id);
		params_upd2.add(upd_dyn_row2);
		params_upd2.add(upd_num_mujeres2);
		params_upd2.add(upd_num_hombres2);
		params_upd2.add(upd_rowid2);
		_a2 = Database.callProc("p_upd_organization_dynamic_rows", params_upd2);
			
		LogManager.writeLog("Plantilla Table 2 Update: ", upd_dyn_row2 + "|" + upd_num_mujeres2 + "|" + upd_num_hombres2 + "|" +  upd_rowid2);
		System.out.println( upd_dyn_row2 + "|" + upd_num_mujeres2 + "|" + upd_num_hombres2 + "|" +  upd_rowid2);
		params_upd2.clear();
		size2++;
	}
	
	
	
	Enumeration en = request.getParameterNames();
	int i = 1;
	int a = 0;

	String ins_dyn_row = "";
	String ins_num_mujeres = "";
	String ins_num_hombres = "";
	
	DynStringArray params = new DynStringArray();
	
	int i2 = 1;
	int a2 = 0;
	
	String ins_dyn_row2 = "";
	String ins_num_mujeres2 = "";
	String ins_num_hombres2 = "";
	String _id = "";
	String _id2 = "";
	
	DynStringArray params2 = new DynStringArray();
	
	while(en.hasMoreElements())
	{
		Object objOri=en.nextElement();
		String param=(String)objOri;
		String value=request.getParameter(param);
		
				
		if ( param.toLowerCase().contains("__table1_dyn_row_") ) {
			
			_id = param.substring(param.lastIndexOf("_") + 1,param.length());
			ins_dyn_row=request.getParameter(param);
			ins_num_mujeres=request.getParameter("num_mujeres_table1_dyn_row_" + _id);
			ins_num_hombres=request.getParameter("num_hombres_table1_dyn_row_" + _id);
			
			if (ins_num_mujeres.equals("")) {ins_num_mujeres = "0"; }
			if (ins_num_hombres.equals("")) {ins_num_hombres = "0"; }

			params.add(p_organization_id);
			params.add("table1");
			params.add(ins_dyn_row);
			params.add(ins_num_mujeres);
			params.add(ins_num_hombres);
			a = Database.callProc("p_ins_organization_dynamic_row", params);
			ins_dyn_row = "";
			ins_num_mujeres = "";
			ins_num_hombres = "";
			params.clear();
			
			LogManager.writeLog("Plantilla Table 1:", "Parameter Name is '"+param+"' and Parameter Value is '"+value+"'");

			
			i++;
		}
		
		
		if ( param.toLowerCase().contains("__table2_dyn_row_") ) {
			
			_id2 = param.substring(param.lastIndexOf("_") + 1,param.length());
			ins_dyn_row2=request.getParameter(param);
			ins_num_mujeres2=request.getParameter("num_mujeres_table2_dyn_row_" + _id2);
			ins_num_hombres2=request.getParameter("num_hombres_table2_dyn_row_" + _id2);
			
			if (ins_num_mujeres2.equals("")) {ins_num_mujeres2 = "0"; }
			if (ins_num_hombres2.equals("")) {ins_num_hombres2 = "0"; }
		
			params2.add(p_organization_id);
			params2.add("table2");
			params2.add(ins_dyn_row2);
			params2.add(ins_num_mujeres2);
			params2.add(ins_num_hombres2);
			a2 = Database.callProc("p_ins_organization_dynamic_row", params2);
			ins_dyn_row2 = "";
			ins_num_mujeres2 = "";
			ins_num_hombres2 = "";
			params2.clear();
			
			LogManager.writeLog("Plantilla Table 2:", "Parameter Name is '"+param+"' and Parameter Value is '"+value+"'");
			
			i2++;
		}			
		
		

	}	
	
	
	DynStringArray parameters = new DynStringArray();
	parameters.clear();
	parameters.add(request.getParameter("id"));
	parameters.add(request.getParameter("num_direccion_general_o_maximo_cargo_mujeres"));
	parameters.add(request.getParameter("num_direccion_general_o_maximo_cargo_hombres"));
	parameters.add(request.getParameter("num_puestos_directivos_como_gerencias_mujeres"));
	parameters.add(request.getParameter("num_puestos_directivos_como_gerencias_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel4_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel4_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel3_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel3_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel2_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel2_hombres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel1_mujeres"));
	parameters.add(request.getParameter("num_otras_jefaturas_o_mandos_intermedios_nivel1_hombres"));
	parameters.add(request.getParameter("num_subtotal_cargos_responsabilidad_mujeres"));
	parameters.add(request.getParameter("num_subtotal_cargos_responsabilidad_hombres"));
	parameters.add(request.getParameter("num_puestos_tecnicos_mujeres"));
	parameters.add(request.getParameter("num_puestos_tecnicos_hombres"));
	parameters.add(request.getParameter("num_puestos_administrativos_mujeres"));
	parameters.add(request.getParameter("num_puestos_administrativos_hombres"));
	parameters.add(request.getParameter("num_puestos_auxiliares_mujeres"));
	parameters.add(request.getParameter("num_puestos_auxiliares_hombres"));
	parameters.add(request.getParameter("num_puestos_operarios_mujeres"));
	parameters.add(request.getParameter("num_puestos_operarios_hombres"));
	parameters.add(request.getParameter("puestos_a"));
	parameters.add(request.getParameter("num_puestos_a_mujeres"));
	parameters.add(request.getParameter("num_puestos_a_hombres"));
	parameters.add(request.getParameter("puestos_b"));
	parameters.add(request.getParameter("num_puestos_b_mujeres"));
	parameters.add(request.getParameter("num_puestos_b_hombres"));
	parameters.add(request.getParameter("puestos_c"));
	parameters.add(request.getParameter("num_puestos_c_mujeres"));
	parameters.add(request.getParameter("num_puestos_c_hombres"));
	parameters.add(request.getParameter("puestos_d"));
	parameters.add(request.getParameter("num_puestos_d_mujeres"));
	parameters.add(request.getParameter("num_puestos_d_hombres"));
	parameters.add(request.getParameter("num_subtotal_resto_plantilla_mujeres"));
	parameters.add(request.getParameter("num_subtotal_resto_plantilla_hombres"));
	parameters.add(request.getParameter("num_total_de_la_plantilla_mujeres"));
	parameters.add(request.getParameter("num_total_de_la_plantilla_hombres"));

	
	parameters.add(request.getParameter("num_dept_administracion_mujeres"));
	parameters.add(request.getParameter("num_dept_comercial_y_ventas_mujeres"));
	parameters.add(request.getParameter("num_dept_logistica_mujeres"));
	parameters.add(request.getParameter("num_dept_produccion_mujeres"));
	parameters.add(request.getParameter("num_dept_financiero_mujeres"));
	parameters.add(request.getParameter("num_dept_recursos_humanos_mujeres"));
	parameters.add(request.getParameter("num_dept_a_mujeres"));
	parameters.add(request.getParameter("num_dept_b_mujeres"));
	parameters.add(request.getParameter("num_dept_c_mujeres"));
	parameters.add(request.getParameter("num_dept_d_mujeres"));
	parameters.add(request.getParameter("num_dept_e_mujeres"));
	parameters.add(request.getParameter("num_dept_total_mujeres"));
	parameters.add(request.getParameter("num_dept_administracion_hombres"));
	parameters.add(request.getParameter("num_dept_comercial_y_ventas_hombres"));
	parameters.add(request.getParameter("num_dept_logistica_hombres"));
	parameters.add(request.getParameter("num_dept_produccion_hombres"));
	parameters.add(request.getParameter("num_dept_financiero_hombres"));
	parameters.add(request.getParameter("num_dept_recursos_humanos_hombres"));
	parameters.add(request.getParameter("num_dept_a_hombres"));
	parameters.add(request.getParameter("num_dept_b_hombres"));
	parameters.add(request.getParameter("num_dept_c_hombres"));
	parameters.add(request.getParameter("num_dept_d_hombres"));
	parameters.add(request.getParameter("num_dept_e_hombres"));
	parameters.add(request.getParameter("num_dept_total_hombres"));
	parameters.add(request.getParameter("num_total_integrantes_consejo_de_direccion_mujeres"));
	parameters.add(request.getParameter("num_total_integrantes_consejo_de_direccion_hombres"));
	parameters.add(request.getParameter("dept_a"));
	parameters.add(request.getParameter("dept_b"));
	parameters.add(request.getParameter("dept_c"));
	parameters.add(request.getParameter("dept_d"));
	parameters.add(request.getParameter("dept_e"));
	parameters.add(request.getParameter("coinicide_con_tabla1_mujeres"));
	parameters.add(request.getParameter("coinicide_con_tabla1_hombres"));
	
	int x = Database.callProc("p_upd_organization_plantilla", parameters);

	if (x>0) {
		response.sendRedirect("/indica/es/main.jsp?target=empresa&section=condiciones_laborales&organization_id=" + p_organization_id);
	} else {
		response.sendRedirect("/indica/es/main.jsp?target=error");
	}

%>