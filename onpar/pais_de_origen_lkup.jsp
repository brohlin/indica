<%
	String mPais_de_origen = "";
	try {
		mPais_de_origen = session.getAttribute("temp_solicitante_pre_pais_de_origen_lkup").toString();
	} catch (Exception ex) {
		// catch the error and keep on going
	}		 
%>
<option value=""></option>
<option value="Afganist�n"<% if (mPais_de_origen.equals("Afganist�n")) {%> selected <% } %>>Afganist�n</option>
<option value="Albania"<% if (mPais_de_origen.equals("Albania")) {%> selected <% } %>>Albania</option>
<option value="Alemania"<% if (mPais_de_origen.equals("Alemania")) {%> selected <% } %>>Alemania</option>
<option value="Andorra"<% if (mPais_de_origen.equals("Andorra")) {%> selected <% } %>>Andorra</option>
<option value="Anguila"<% if (mPais_de_origen.equals("Anguila")) {%> selected <% } %>>Anguila</option>
<option value="Antigua y Barbuda"<% if (mPais_de_origen.equals("Antigua y Barbuda")) {%> selected <% } %>>Antigua y Barbuda</option>
<option value="Antillas Holandesas"<% if (mPais_de_origen.equals("Antillas Holandesas")) {%> selected <% } %>>Antillas Holandesas</option>
<option value="Arabia Saudita"<% if (mPais_de_origen.equals("Arabia Saudita")) {%> selected <% } %>>Arabia Saudita</option>
<option value="Argelia"<% if (mPais_de_origen.equals("Argelia")) {%> selected <% } %>>Argelia</option>
<option value="Argentina"<% if (mPais_de_origen.equals("Argentina")) {%> selected <% } %>>Argentina</option>
<option value="Aruba"<% if (mPais_de_origen.equals("Aruba")) {%> selected <% } %>>Aruba</option>
<option value="Australia"<% if (mPais_de_origen.equals("Australia")) {%> selected <% } %>>Australia</option>
<option value="Austria"<% if (mPais_de_origen.equals("Austria")) {%> selected <% } %>>Austria</option>
<option value="Bahamas"<% if (mPais_de_origen.equals("Bahamas")) {%> selected <% } %>>Bahamas</option>
<option value="Banglad�s/Bangladesh"<% if (mPais_de_origen.equals("Banglad�s/Bangladesh")) {%> selected <% } %>>Banglad�s/Bangladesh</option>
<option value="Barbados"<% if (mPais_de_origen.equals("Barbados")) {%> selected <% } %>>Barbados</option>
<option value="Barbuda"<% if (mPais_de_origen.equals("Barbuda")) {%> selected <% } %>>Barbuda</option>
<option value="B�lgica"<% if (mPais_de_origen.equals("B�lgica")) {%> selected <% } %>>B�lgica</option>
<option value="Belice"<% if (mPais_de_origen.equals("Belice")) {%> selected <% } %>>Belice</option>
<option value="Ben�n"<% if (mPais_de_origen.equals("Ben�n")) {%> selected <% } %>>Ben�n</option>
<option value="Birmania"<% if (mPais_de_origen.equals("Birmania")) {%> selected <% } %>>Birmania</option>
<option value="Bolivia"<% if (mPais_de_origen.equals("Bolivia")) {%> selected <% } %>>Bolivia</option>
<option value="Bonaire"<% if (mPais_de_origen.equals("Bonaire")) {%> selected <% } %>>Bonaire</option>
<option value="Botswana"<% if (mPais_de_origen.equals("Botswana")) {%> selected <% } %>>Botswana</option>
<option value="Brasil"<% if (mPais_de_origen.equals("Brasil")) {%> selected <% } %>>Brasil</option>
<option value="Bulgaria"<% if (mPais_de_origen.equals("Bulgaria")) {%> selected <% } %>>Bulgaria</option>
<option value="Burkina Faso"<% if (mPais_de_origen.equals("Burkina Faso")) {%> selected <% } %>>Burkina Faso</option>
<option value="Camboya"<% if (mPais_de_origen.equals("Camboya")) {%> selected <% } %>>Camboya</option>
<option value="Camer�n"<% if (mPais_de_origen.equals("Camer�n")) {%> selected <% } %>>Camer�n</option>
<option value="Canad�"<% if (mPais_de_origen.equals("Canad�")) {%> selected <% } %>>Canad�</option>
<option value="Ceil�n"<% if (mPais_de_origen.equals("Ceil�n")) {%> selected <% } %>>Ceil�n</option>
<option value="Chad"<% if (mPais_de_origen.equals("Chad")) {%> selected <% } %>>Chad</option>
<option value="Chile"<% if (mPais_de_origen.equals("Chile")) {%> selected <% } %>>Chile</option>
<option value="China"<% if (mPais_de_origen.equals("China")) {%> selected <% } %>>China</option>
<option value="Chipre"<% if (mPais_de_origen.equals("Chipre")) {%> selected <% } %>>Chipre</option>
<option value="Colombia"<% if (mPais_de_origen.equals("Colombia")) {%> selected <% } %>>Colombia</option>
<option value="Congo"<% if (mPais_de_origen.equals("Congo")) {%> selected <% } %>>Congo</option>
<option value="Corea del Norte"<% if (mPais_de_origen.equals("Corea del Norte")) {%> selected <% } %>>Corea del Norte</option>
<option value="Corea del Sur"<% if (mPais_de_origen.equals("Corea del Sur")) {%> selected <% } %>>Corea del Sur</option>
<option value="Costa de Marfil"<% if (mPais_de_origen.equals("Costa de Marfil")) {%> selected <% } %>>Costa de Marfil</option>
<option value="Costa Rica"<% if (mPais_de_origen.equals("Costa Rica")) {%> selected <% } %>>Costa Rica</option>
<option value="Croacia"<% if (mPais_de_origen.equals("Croacia")) {%> selected <% } %>>Croacia</option>
<option value="Cuba"<% if (mPais_de_origen.equals("Cuba")) {%> selected <% } %>>Cuba</option>
<option value="Curazao"<% if (mPais_de_origen.equals("Curazao")) {%> selected <% } %>>Curazao</option>
<option value="Dinamarca"<% if (mPais_de_origen.equals("Dinamarca")) {%> selected <% } %>>Dinamarca</option>
<option value="Dominica"<% if (mPais_de_origen.equals("Dominica")) {%> selected <% } %>>Dominica</option>
<option value="Dubai"<% if (mPais_de_origen.equals("Dubai")) {%> selected <% } %>>Dubai</option>
<option value="Ecuador"<% if (mPais_de_origen.equals("Ecuador")) {%> selected <% } %>>Ecuador</option>
<option value="Egipto"<% if (mPais_de_origen.equals("Egipto")) {%> selected <% } %>>Egipto</option>
<option value="El Salvador"<% if (mPais_de_origen.equals("El Salvador")) {%> selected <% } %>>El Salvador</option>
<option value="Eritrea"<% if (mPais_de_origen.equals("Eritrea")) {%> selected <% } %>>Eritrea</option>
<option value="Escocia"<% if (mPais_de_origen.equals("Escocia")) {%> selected <% } %>>Escocia</option>
<option value="Eslovaquia"<% if (mPais_de_origen.equals("Eslovaquia")) {%> selected <% } %>>Eslovaquia</option>
<option value="Espa�a"<% if (mPais_de_origen.equals("Espa�a")) {%> selected <% } %>>Espa�a</option>
<option value="Estados Unidos"<% if (mPais_de_origen.equals("Estados Unidos")) {%> selected <% } %>>Estados Unidos</option>
<option value="Etiop�a"<% if (mPais_de_origen.equals("Etiop�a")) {%> selected <% } %>>Etiop�a</option>
<option value="Filipinas"<% if (mPais_de_origen.equals("Filipinas")) {%> selected <% } %>>Filipinas</option>
<option value="Finlandia"<% if (mPais_de_origen.equals("Finlandia")) {%> selected <% } %>>Finlandia</option>
<option value="Francia"<% if (mPais_de_origen.equals("Francia")) {%> selected <% } %>>Francia</option>
<option value="Gab�n"<% if (mPais_de_origen.equals("Gab�n")) {%> selected <% } %>>Gab�n</option>
<option value="Gales"<% if (mPais_de_origen.equals("Gales")) {%> selected <% } %>>Gales</option>
<option value="Gambia"<% if (mPais_de_origen.equals("Gambia")) {%> selected <% } %>>Gambia</option>
<option value="Ghana"<% if (mPais_de_origen.equals("Ghana")) {%> selected <% } %>>Ghana</option>
<option value="Gran Breta�a"<% if (mPais_de_origen.equals("Gran Breta�a")) {%> selected <% } %>>Gran Breta�a</option>
<option value="Granada"<% if (mPais_de_origen.equals("Granada")) {%> selected <% } %>>Granada</option>
<option value="Grecia"<% if (mPais_de_origen.equals("Grecia")) {%> selected <% } %>>Grecia</option>
<option value="Guadalupe"<% if (mPais_de_origen.equals("Guadalupe")) {%> selected <% } %>>Guadalupe</option>
<option value="Guam"<% if (mPais_de_origen.equals("Guam")) {%> selected <% } %>>Guam</option>
<option value="Guatemala"<% if (mPais_de_origen.equals("Guatemala")) {%> selected <% } %>>Guatemala</option>
<option value="Guinea"<% if (mPais_de_origen.equals("Guinea")) {%> selected <% } %>>Guinea</option>
<option value="Guinea Ecuatorial"<% if (mPais_de_origen.equals("Guinea Ecuatorial")) {%> selected <% } %>>Guinea Ecuatorial</option>
<option value="Guinea-Bissau"<% if (mPais_de_origen.equals("Guinea-Bissau")) {%> selected <% } %>>Guinea-Bissau</option>
<option value="Guyana"<% if (mPais_de_origen.equals("Guyana")) {%> selected <% } %>>Guyana</option>
<option value="Hait�"<% if (mPais_de_origen.equals("Hait�")) {%> selected <% } %>>Hait�</option>
<option value="Hawaii"<% if (mPais_de_origen.equals("Hawaii")) {%> selected <% } %>>Hawaii</option>
<option value="Holanda"<% if (mPais_de_origen.equals("Holanda")) {%> selected <% } %>>Holanda</option>
<option value="Honduras"<% if (mPais_de_origen.equals("Honduras")) {%> selected <% } %>>Honduras</option>
<option value="India"<% if (mPais_de_origen.equals("India")) {%> selected <% } %>>India</option>
<option value="Indonesia"<% if (mPais_de_origen.equals("Indonesia")) {%> selected <% } %>>Indonesia</option>
<option value="Inglaterra"<% if (mPais_de_origen.equals("Inglaterra")) {%> selected <% } %>>Inglaterra</option>
<option value="Irak, Iraq"<% if (mPais_de_origen.equals("Irak, Iraq")) {%> selected <% } %>>Irak, Iraq</option>
<option value="Ir�n"<% if (mPais_de_origen.equals("Ir�n")) {%> selected <% } %>>Ir�n</option>
<option value="Irlanda"<% if (mPais_de_origen.equals("Irlanda")) {%> selected <% } %>>Irlanda</option>
<option value="Islandia"<% if (mPais_de_origen.equals("Islandia")) {%> selected <% } %>>Islandia</option>
<option value="Islas Caim�n"<% if (mPais_de_origen.equals("Islas Caim�n")) {%> selected <% } %>>Islas Caim�n</option>
<option value="Islas Turcas y Caicos"<% if (mPais_de_origen.equals("Islas Turcas y Caicos")) {%> selected <% } %>>Islas Turcas y Caicos</option>
<option value="Islas V�rgenes Brit�nicas"<% if (mPais_de_origen.equals("Islas V�rgenes Brit�nicas")) {%> selected <% } %>>Islas V�rgenes Brit�nicas</option>
<option value="Islas V�rgenes de Estados Unidos"<% if (mPais_de_origen.equals("Islas V�rgenes de Estados Unidos")) {%> selected <% } %>>Islas V�rgenes de Estados Unidos</option>
<option value="Israel"<% if (mPais_de_origen.equals("Israel")) {%> selected <% } %>>Israel</option>
<option value="Italia"<% if (mPais_de_origen.equals("Italia")) {%> selected <% } %>>Italia</option>
<option value="Jamaica"<% if (mPais_de_origen.equals("Jamaica")) {%> selected <% } %>>Jamaica</option>
<option value="Jap�n"<% if (mPais_de_origen.equals("Jap�n")) {%> selected <% } %>>Jap�n</option>
<option value="Jordania"<% if (mPais_de_origen.equals("Jordania")) {%> selected <% } %>>Jordania</option>
<option value="Kenya"<% if (mPais_de_origen.equals("Kenya")) {%> selected <% } %>>Kenya</option>
<option value="Kuwait"<% if (mPais_de_origen.equals("Kuwait")) {%> selected <% } %>>Kuwait</option>
<option value="Laos"<% if (mPais_de_origen.equals("Laos")) {%> selected <% } %>>Laos</option>
<option value="las Islas Cook"<% if (mPais_de_origen.equals("las Islas Cook")) {%> selected <% } %>>las Islas Cook</option>
<option value="L�bano"<% if (mPais_de_origen.equals("L�bano")) {%> selected <% } %>>L�bano</option>
<option value="Liberia"<% if (mPais_de_origen.equals("Liberia")) {%> selected <% } %>>Liberia</option>
<option value="Libia"<% if (mPais_de_origen.equals("Libia")) {%> selected <% } %>>Libia</option>
<option value="Lituania"<% if (mPais_de_origen.equals("Lituania")) {%> selected <% } %>>Lituania</option>
<option value="Luxemburgo"<% if (mPais_de_origen.equals("Luxemburgo")) {%> selected <% } %>>Luxemburgo</option>
<option value="Malasia"<% if (mPais_de_origen.equals("Malasia")) {%> selected <% } %>>Malasia</option>
<option value="Mali"<% if (mPais_de_origen.equals("Mali")) {%> selected <% } %>>Mali</option>
<option value="Malta"<% if (mPais_de_origen.equals("Malta")) {%> selected <% } %>>Malta</option>
<option value="Marruecos"<% if (mPais_de_origen.equals("Marruecos")) {%> selected <% } %>>Marruecos</option>
<option value="Martinique"<% if (mPais_de_origen.equals("Martinique")) {%> selected <% } %>>Martinique</option>
<option value="Mauricio"<% if (mPais_de_origen.equals("Mauricio")) {%> selected <% } %>>Mauricio</option>
<option value="Mauritania"<% if (mPais_de_origen.equals("Mauritania")) {%> selected <% } %>>Mauritania</option>
<option value="M�xico, M�jico"<% if (mPais_de_origen.equals("M�xico, M�jico")) {%> selected <% } %>>M�xico, M�jico</option>
<option value="M�naco"<% if (mPais_de_origen.equals("M�naco")) {%> selected <% } %>>M�naco</option>
<option value="Montserrat"<% if (mPais_de_origen.equals("Montserrat")) {%> selected <% } %>>Montserrat</option>
<option value="Nepal"<% if (mPais_de_origen.equals("Nepal")) {%> selected <% } %>>Nepal</option>
<option value="Namibia"<% if (mPais_de_origen.equals("Namibia")) {%> selected <% } %>>Namibia</option>
<option value="Nicaragua"<% if (mPais_de_origen.equals("Nicaragua")) {%> selected <% } %>>Nicaragua</option>
<option value="Niger"<% if (mPais_de_origen.equals("Niger")) {%> selected <% } %>>Niger</option>
<option value="Nigeria"<% if (mPais_de_origen.equals("Nigeria")) {%> selected <% } %>>Nigeria</option>
<option value="Noruega"<% if (mPais_de_origen.equals("Noruega")) {%> selected <% } %>>Noruega</option>
<option value="Nueva Zelanda"<% if (mPais_de_origen.equals("Nueva Zelanda")) {%> selected <% } %>>Nueva Zelanda</option>
<option value="Pa�ses Bajos"<% if (mPais_de_origen.equals("Pa�ses Bajos")) {%> selected <% } %>>Pa�ses Bajos</option>
<option value="Palestina"<% if (mPais_de_origen.equals("Palestina")) {%> selected <% } %>>Palestina</option>
<option value="Panam�"<% if (mPais_de_origen.equals("Panam�")) {%> selected <% } %>>Panam�</option>
<option value="Paquist�n"<% if (mPais_de_origen.equals("Paquist�n")) {%> selected <% } %>>Paquist�n</option>
<option value="Paraguay"<% if (mPais_de_origen.equals("Paraguay")) {%> selected <% } %>>Paraguay</option>
<option value="Persia"<% if (mPais_de_origen.equals("Persia")) {%> selected <% } %>>Persia</option>
<option value="Per�"<% if (mPais_de_origen.equals("Per�")) {%> selected <% } %>>Per�</option>
<option value="Polonia"<% if (mPais_de_origen.equals("Polonia")) {%> selected <% } %>>Polonia</option>
<option value="Portugal"<% if (mPais_de_origen.equals("Portugal")) {%> selected <% } %>>Portugal</option>
<option value="Puerto Rico"<% if (mPais_de_origen.equals("Puerto Rico")) {%> selected <% } %>>Puerto Rico</option>
<option value="Rep�blica Checa"<% if (mPais_de_origen.equals("Rep�blica Checa")) {%> selected <% } %>>Rep�blica Checa</option>
<option value="Rep�blica Dominicana"<% if (mPais_de_origen.equals("Rep�blica Dominicana")) {%> selected <% } %>>Rep�blica Dominicana</option>
<option value="Ruanda"<% if (mPais_de_origen.equals("Ruanda")) {%> selected <% } %>>Ruanda</option>
<option value="Ruman�a"<% if (mPais_de_origen.equals("Ruman�a")) {%> selected <% } %>>Ruman�a</option>
<option value="Rusia"<% if (mPais_de_origen.equals("Rusia")) {%> selected <% } %>>Rusia</option>
<option value="Saba"<% if (mPais_de_origen.equals("Saba")) {%> selected <% } %>>Saba</option>
<option value="Samoa"<% if (mPais_de_origen.equals("Samoa")) {%> selected <% } %>>Samoa</option>
<option value="San Bartolom�"<% if (mPais_de_origen.equals("San Bartolom�")) {%> selected <% } %>>San Bartolom�</option>
<option value="San Crist�bal y Nieves"<% if (mPais_de_origen.equals("San Crist�bal y Nieves")) {%> selected <% } %>>San Crist�bal y Nieves</option>
<option value="San Eustaquio"<% if (mPais_de_origen.equals("San Eustaquio")) {%> selected <% } %>>San Eustaquio</option>
<option value="San Mart�n"<% if (mPais_de_origen.equals("San Mart�n")) {%> selected <% } %>>San Mart�n</option>
<option value="San Vicente"<% if (mPais_de_origen.equals("San Vicente")) {%> selected <% } %>>San Vicente</option>
<option value="Santa Luc�a"<% if (mPais_de_origen.equals("Santa Luc�a")) {%> selected <% } %>>Santa Luc�a</option>
<option value="Santo Tom�s"<% if (mPais_de_origen.equals("Santo Tom�s")) {%> selected <% } %>>Santo Tom�s</option>
<option value="Senegal"<% if (mPais_de_origen.equals("Senegal")) {%> selected <% } %>>Senegal</option>
<option value="Sierra Leona"<% if (mPais_de_origen.equals("Sierra Leona")) {%> selected <% } %>>Sierra Leona</option>
<option value="Siria"<% if (mPais_de_origen.equals("Siria")) {%> selected <% } %>>Siria</option>
<option value="Somalia"<% if (mPais_de_origen.equals("Somalia")) {%> selected <% } %>>Somalia</option>
<option value="Sri Lanka"<% if (mPais_de_origen.equals("Sri Lanka")) {%> selected <% } %>>Sri Lanka</option>
<option value="Sud�frica"<% if (mPais_de_origen.equals("Sud�frica")) {%> selected <% } %>>Sud�frica</option>
<option value="Sud�n"<% if (mPais_de_origen.equals("Sud�n")) {%> selected <% } %>>Sud�n</option>
<option value="Suecia"<% if (mPais_de_origen.equals("Suecia")) {%> selected <% } %>>Suecia</option>
<option value="Suiza"<% if (mPais_de_origen.equals("Suiza")) {%> selected <% } %>>Suiza</option>
<option value="Surinam"<% if (mPais_de_origen.equals("Surinam")) {%> selected <% } %>>Surinam</option>
<option value="Tailandia"<% if (mPais_de_origen.equals("Tailandia")) {%> selected <% } %>>Tailandia</option>
<option value="Taiw�n"<% if (mPais_de_origen.equals("Taiw�n")) {%> selected <% } %>>Taiw�n</option>
<option value="Tanzania"<% if (mPais_de_origen.equals("Tanzania")) {%> selected <% } %>>Tanzania</option>
<option value="Togo"<% if (mPais_de_origen.equals("Togo")) {%> selected <% } %>>Togo</option>
<option value="Trinidad y Tobago"<% if (mPais_de_origen.equals("Trinidad y Tobago")) {%> selected <% } %>>Trinidad y Tobago</option>
<option value="T�nez"<% if (mPais_de_origen.equals("T�nez")) {%> selected <% } %>>T�nez</option>
<option value="Turqu�a"<% if (mPais_de_origen.equals("Turqu�a")) {%> selected <% } %>>Turqu�a</option>
<option value="Ucrania"<% if (mPais_de_origen.equals("Ucrania")) {%> selected <% } %>>Ucrania</option>
<option value="Uganda"<% if (mPais_de_origen.equals("Uganda")) {%> selected <% } %>>Uganda</option>
<option value="Uruguay"<% if (mPais_de_origen.equals("Uruguay")) {%> selected <% } %>>Uruguay</option>
<option value="Venezuela"<% if (mPais_de_origen.equals("Venezuela")) {%> selected <% } %>>Venezuela</option>
<option value="Vietnam"<% if (mPais_de_origen.equals("Vietnam")) {%> selected <% } %>>Vietnam</option>
<option value="Yemen"<% if (mPais_de_origen.equals("Yemen")) {%> selected <% } %>>Yemen</option>
<option value="Yugoslavia"<% if (mPais_de_origen.equals("Yugoslavia")) {%> selected <% } %>>Yugoslavia</option>
<option value="Zaire"<% if (mPais_de_origen.equals("Zaire")) {%> selected <% } %>>Zaire</option>
<option value="Zambia"<% if (mPais_de_origen.equals("Zambia")) {%> selected <% } %>>Zambia</option>
<option value="Zimbabwe"<% if (mPais_de_origen.equals("Zimbabwe")) {%> selected <% } %>>Zimbabwe</option>
