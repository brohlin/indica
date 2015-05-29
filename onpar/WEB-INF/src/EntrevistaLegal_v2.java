import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.DataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;

// import the iText packages
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;

/** 
 * 
 *  a servlet that will generate a PDF document
 *  and send the document to the client via the 
 *  ServletOutputStream
 * 
 *  @author Bob Rohlin
 * 
 */
public class EntrevistaLegal_v2 extends HttpServlet
{
	/** 
	* 
	* 
	*/
	public EntrevistaLegal_v2()
	{
		super();
	}

	/**
	 *  
	 * 
	 * we implement doGet so that this servlet will process all 
	 * HTTP GET requests
	 * 
	 * @param req HTTP request object 
	 * @param resp HTTP response object
	 * 
	 */
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws javax.servlet.ServletException, java.io.IOException
	{
				
		ByteArrayOutputStream baosPDF = null;
		
		try
		{
			baosPDF = generatePDFDocumentBytes(req, this.getServletContext());
			
			StringBuffer sbFilename = new StringBuffer();
			sbFilename.append("filename_");
			sbFilename.append(System.currentTimeMillis());
			sbFilename.append(".pdf");

			////////////////////////////////////////////////////////
			// Note: 
			//
			// It is important to set the HTTP response headers 
			// before writing data to the servlet's OutputStream 
			//
			////////////////////////////////////////////////////////
			//
			//
			// Read the HTTP 1.1 specification for full details
			// about the Cache-Control header
			//
			resp.setHeader("Cache-Control", "max-age=30");
			
			resp.setContentType("application/pdf");
			
			StringBuffer sbContentDispValue = new StringBuffer();
			sbContentDispValue.append("inline");
			sbContentDispValue.append("; filename=");
			sbContentDispValue.append(sbFilename);
							
			resp.setHeader(
				"Content-disposition",
				sbContentDispValue.toString());

			resp.setContentLength(baosPDF.size());

			ServletOutputStream sos;

			sos = resp.getOutputStream();
			
			baosPDF.writeTo(sos);
			
			sos.flush();
		}
		catch (DocumentException dex)
		{
			resp.setContentType("text/html");
			PrintWriter writer = resp.getWriter();
			writer.println(
					this.getClass().getName() 
					+ " caught an exception: " 
					+ dex.getClass().getName()
					+ "<br>");
			writer.println("<pre>");
			dex.printStackTrace(writer);
			writer.println("</pre>");
		}
		finally
		{
			if (baosPDF != null)
			{
				baosPDF.reset();
			}
		}
		 
	}

	/**
	 *  
	 * @param req must be non-null
	 * 
	 * @return a non-null output stream. The output stream contains
	 *         the bytes for the PDF document
	 * 
	 * @throws DocumentException
	 * 
	 */
	protected ByteArrayOutputStream generatePDFDocumentBytes(
		final HttpServletRequest req,
		final ServletContext ctx)
		throws DocumentException
		
	{	
		Document doc = new Document();
		HttpSession session = req.getSession(true);
		int page = 0;
		ByteArrayOutputStream baosPDF = new ByteArrayOutputStream();
		PdfWriter docWriter = null;	
		
		URL img = null;
		URL img2 = null;
		try {
			img = new URL(req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + "/onpar/img/mingob_onpar.png");
			img2 = new URL(req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + "/onpar/img/mingob.png");
		} catch (MalformedURLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		com.lowagie.text.Image myImgMinGob = null;
		com.lowagie.text.Image myImgMinGob2 = null; 
		try {
			myImgMinGob = com.lowagie.text.Image.getInstance(img);
			myImgMinGob.scalePercent(50);
			myImgMinGob2 = com.lowagie.text.Image.getInstance(img2);
			myImgMinGob2.scalePercent(50);

		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println("MalformedURLException");
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("IO");
			e.printStackTrace();
		}		
			
		Table tab = null;

		try
		{
			tab = new Table(2 /* columns */);
		}
		catch (BadElementException ex)
		{
			throw new RuntimeException(ex);
		}
		
		// tab.setBorderWidth(1.0f);
		// tab.setPadding(5);
		// tab.setSpacing(5);
		tab.setBorder(0);
		
		tab.setWidth(100);
		
		Cell mLeftCell = new Cell();
		mLeftCell.addElement(new Chunk(myImgMinGob, 0, 0));
		mLeftCell.setBorder(0);
		tab.addCell(mLeftCell);
		
		Cell mRightCell = new Cell();
		mRightCell.addElement(new Chunk(myImgMinGob2, 0, 0));
		mRightCell.setHorizontalAlignment("right");
		mRightCell.setVerticalAlignment("bottom");
		mRightCell.setBorder(0);
		tab.addCell(mRightCell);
		
		// Cell mRightCell = new Cell("right");
		// mRightCell.setHorizontalAlignment("right");
		// tab.addCell(mRightCell);
		
		tab.endHeaders();
		Element mTableHeader = (Element) tab;
		
		try
		{
			docWriter = PdfWriter.getInstance(doc, baosPDF);
			
			doc.addAuthor(this.getClass().getName());
			doc.addCreationDate();
			doc.addProducer();
			doc.addCreator(this.getClass().getName());
			doc.addTitle("Entrevista Legal del Solicitante.");
			
			doc.setPageSize(PageSize.LEGAL);
			HeaderFooter footer = new HeaderFooter(new Phrase("Page ", FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 0))), true);
			
			footer.setAlignment(1);
			doc.setFooter(footer);
		
			doc.open();
			doc.add(mTableHeader);
			// doc.add(myImgMinGob);
			
			Paragraph mParagraph1 = new Paragraph("REPÚBLICA DE PANAMÁ", FontFactory.getFont(FontFactory.HELVETICA, 12, Font.BOLD, new java.awt.Color(0, 0, 0)));
			mParagraph1.setAlignment(1);
			doc.add(mParagraph1);
		
			Paragraph mParagraph2 = new Paragraph("MINISTERIO DE GOBIERNO");
			mParagraph2.setAlignment(1);
			doc.add(mParagraph2);
			
			Paragraph mParagraph3 = new Paragraph("OFICINA NACIONAL PARA LA ATENCIÓN DE REFUGIADOS");
			mParagraph3.setAlignment(1);
			doc.add(mParagraph3);
			
			Paragraph mParagraph4 = new Paragraph("ENTREVISTA DE ELEGIBILIDAD ASESORÍA LEGAL");
			mParagraph4.setAlignment(1);
			doc.add(mParagraph4);
					
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Phrase("Número de caso: ")); 
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_id").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);			
			
			doc.add(new Phrase("Nombre: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_primer_nombre") + " " + session.getAttribute("temp_solicitante_v2_pre_apellido_paterno") + " " +  session.getAttribute("temp_solicitante_v2_pre_apellido_materno"), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));			
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Documento de identidad: ")); 
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_otros_documentos").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
				
			doc.add(new Phrase("Pasaporte: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_pasaporte").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Nacionalidad: ")); 
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_nacionalidad_lkup").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Edad: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_edad").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
				
			doc.add(new Phrase("Fecha de nacimiento: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_fecha_de_nacimiento").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Dirección actual: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_direccion_actual").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Teléfonos: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_telefono1").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Phrase("Fecha de entrada a Panamá: ")); 
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_fecha_llegada_panama").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			try {
				Table tab2 = getDetallesViaje(req, this.getServletContext());
				doc.add(tab2);
			} catch (Exception ex) {
				System.out.println("Exception at line 422 or EntrevistaSocial");
			}
			
			doc.add(new Phrase("Fecha de llegada a ONPAR: "));
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_fecha_solicitud_onpar").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("NOTA: Al solicitante se le explica el procedimiento a seguir, el valor de la declaración " +
								  "jurada y consecuencias en el caso de que falsee, exagere, omita o distorsione los hechos " +
								  "en que sustenta su alegato de persecución. Se le explicaron los recursos a que tiene derecho " +
								  "en caso de que sea admitido a trámite y no reconocido por la Comisión Nacional de Protección " +
								  "para Refugiados, así como los derechos y deberes de los solicitantes. El entrevistado afirma " +
								  "haber comprendido todo lo explicado."));
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Phrase("Fecha de la entrevista legal: ")); 
			doc.add(new Chunk(session.getAttribute("temp_solicitante_v2_pre_fecha_entrevista_legal").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			doc.add(Chunk.NEWLINE);		
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("Preguntas/Respuestas"));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("1. ¿Donde nació usted? Y enuncie por favor zona de residencia en su país de origen: Zona Rural o Zona Urbana."));			
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q1").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("2. ¿Diga el/la entrevistado/a a qué se dedicaba en su país de origen? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q2").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("3. ¿Diga el/la entrevistado/a quienes componen su núcleo familiar?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q3").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("4. ¿Diga el/la entrevistado/a si tiene familiares en Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q4").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("5. ¿Que miembros de su núcleo familiar tadavía permanecen en su país de origen y esperan reunirse con usted?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q5").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("6. ¿Que miembros de su familia, y de los que permanecen en su país de origen, dependen de usted económicamente?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q6").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("7. ¿Con que frecuencia se comunica usted con sus familiares?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q7").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("8. ¿Qué vía utilizó para llegar hasta Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q8").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("9. ¿Cual fue el recorrido o ruta de viaje que utilizó hasta llegar a Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q9").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("10. ¿Al ingresar al país se anunció como solicitante de refugio ante alguna autoridad?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q10").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("11. ¿Qué tipo de documentos de identidad personal posee?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q11").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("12. ¿Ha hecho usted algún trámite para regularizar su estatus en Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q12").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("13. ¿Diga usted si genera algún tipo de ingresos en Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q13").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("14. ¿Alguna vez ha sido deportado (a)?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q14").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("15. ¿Usted u otro miembro de su familia han sido detenidos?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q15").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("16. ¿Recibió en los primeros días de su llegada a Panamá alguna ayuda de emergencia?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q16").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("17. ¿Que institución, ONGs, u otras le han brindado ayuda y orientación?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q17").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("18. ¿Con quién viajó hacia Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q18").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("19. ¿Quién la trajo a Panamá?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q19").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("20. ¿Diga el/la entrevistado/a, cuales son las causas o motivos por la cual sale de su país de origen? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q20").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("21. ¿Tiene usted conocimiento de quien o quienes la persiguen?"));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q21").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("22. ¿Piensa usted regresar algún día a su país? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q22").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("23. ¿Qué desea usted de Panamá? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q23").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("24. ¿Ha visitado otros países además de Panamá? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q24").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("25. ¿Por qué eligió Panamá para solicitar refugio? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q25").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("26. ¿Desea agregar algo más a esta entrevista? "));
			doc.add(new Paragraph(session.getAttribute("temp_solicitante_v2_pre_leg_q26").toString(), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("Se lee y revisa esta Entrevista de Elegibilidad por ambas partes, con la finalidad que lo manifestado, " +
								  "conste en el expediente y así concluir con este requisito dentro de esta Etapa de Admisibilidad.", 
								  FontFactory.getFont(FontFactory.HELVETICA, 12, Font.BOLD, new java.awt.Color(0, 0, 0))));
			doc.add(new Paragraph("FUNDAMENTO LEGAL. Decreto Ejecutivo No. 23 de 10 de febrero de 1998, capitula VI, articulo 35, " +
								  "numeral 3.", FontFactory.getFont(FontFactory.HELVETICA, 12, Font.BOLD, new java.awt.Color(0, 0, 0))));
			
			
			
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("                                                                ", FontFactory.getFont(FontFactory.HELVETICA, 12, Font.UNDERLINE, new java.awt.Color(0, 0, 0))));
			doc.add(new Paragraph("Solicitante"));

			doc.add(new Paragraph(" "));
			doc.add(new Paragraph(" "));
			doc.add(new Paragraph("                                                                ", FontFactory.getFont(FontFactory.HELVETICA, 12, Font.UNDERLINE, new java.awt.Color(0, 0, 0))));
			doc.add(new Paragraph("Abogada, ONPAR"));

		}
		catch (DocumentException dex)
		{
			baosPDF.reset();
			throw dex; 
		}
		finally
		{
			if (doc != null)
			{
				doc.close();
			}
			if (docWriter != null)
			{
				docWriter.close();
			}
		}

		if (baosPDF.size() < 1)
		{
			throw new DocumentException(
				"document has "
				+ baosPDF.size()
				+ " bytes");		
		}
		return baosPDF;
	}	

	private Table getDetallesViaje( final HttpServletRequest req2, final ServletContext ctx2)
			throws Exception
			
		{	
		 	HttpSession session2 = req2.getSession(true);
			String mQuery = "select " +
					        "pre_viaje1_pais, pre_viaje1_desde, pre_viaje1_hasta, pre_viaje1_medio, " +
		 	                "pre_viaje2_pais, pre_viaje2_desde, pre_viaje2_hasta, pre_viaje2_medio, " +
		 	                "pre_viaje3_pais, pre_viaje3_desde, pre_viaje3_hasta, pre_viaje3_medio, " +
		 	                "pre_viaje4_pais, pre_viaje4_desde, pre_viaje4_hasta, pre_viaje4_medio, " +
		 	                "pre_viaje5_pais, pre_viaje5_desde, pre_viaje5_hasta, pre_viaje5_medio, " +
		 	                "pre_viaje6_pais, pre_viaje6_desde, pre_viaje6_hasta, pre_viaje6_medio " +
					        "from solicitante_v2 where id=?";

			Table tab = null;
			
			try
			{
				tab = new Table(4 /* columns */);
			}
			catch (BadElementException ex)
			{
				throw new RuntimeException(ex);
			}
			
			tab.setBorderWidth(1.0f);
			tab.setPadding(2);
			tab.setSpacing(2);
	
			tab.addCell(new Cell("País"));
			tab.addCell(new Cell("Desde"));
			tab.addCell(new Cell("Hasta"));
			tab.addCell(new Cell("Medio"));
		
			
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

			try{
		
					prest=con.prepareStatement(mQuery);
					prest.setString(1,session2.getAttribute("temp_solicitante_v2_id").toString());			
					rs=prest.executeQuery();
					
					while(rs.next())
					{
						tab.addCell(new Phrase(rs.getString(1), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(2), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(3), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(4), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(5), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(6), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(7), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(8), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(9), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(10), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(11), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(12), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(13), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(14), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(15), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(16), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255))));
						tab.addCell(new Phrase(rs.getString(17), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(18), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(19), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(20), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(21), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(22), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(23), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						tab.addCell(new Phrase(rs.getString(24), FontFactory.getFont(FontFactory.HELVETICA, 12, Font.NORMAL, new java.awt.Color(0, 0, 255)))); 
						

					}
					
					return tab;
			}
			catch(Exception e){
				throw e;
			} finally {
				if(prest != null) { prest.close(); }
				if(rs != null) { rs.close(); }
				if(con != null) { con.close(); }
			}
		
		}	
	
}