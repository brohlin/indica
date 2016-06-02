	<section role="document">
	<h4 class="text-hide reset-margin"><fmt:message key="terminos.element1" /></h4>	
		<div class="well">
			<h1 class="text-center text-white"><fmt:message key="terminos.element2" /></h1>
		</div>
		<div class="container">
		  <div class="col-md-8 col-centered separador-top">
				<p><fmt:message key="terminos.element3" /> </p> 
				<p><fmt:message key="terminos.element4" /> </p> 
				<h5 class="resaltado"><fmt:message key="terminos.element5" /></h5>
				<p><fmt:message key="terminos.element6" /> </p> 
				<p><fmt:message key="terminos.element7" /> </p> 
			   <div class="col-md-12 col-centered scroll texto-terminos">
			<p><fmt:message key="terminos.element8" /></p>
			<p><fmt:message key="terminos.element8" /></p>
			<p><fmt:message key="terminos.element8" /></p>
			<p><fmt:message key="terminos.element8" /></p>
			<p><fmt:message key="terminos.element8" /></p>
			<p><fmt:message key="terminos.element8" /></p>
	 </div>
			  <div class="col-md-8 col-centered text-center separador-bottom"> 
				<form class="form-horizontal" role="form" id="formulario-terminos" name="formulario-terminos" action="/indica/es/validate_terminos.jsp" method="post">
					<input name="user_id" value="<%= session.getAttribute("temp_user_id") %>" type="hidden">
				  <div class="form-group">
					<label>
					 <input name="accept_terminos" id="checkbox_terminos" type="checkbox" required name="terms"> <fmt:message key="terminos.element9" />
					</label>
				  </div>
				  <button type="submit" class="btn btn-info btn-block"><fmt:message key="terminos.element10" /></button>
				</form>
			</div>
	   </div> <!-- end col-8 -->
	 </div> <!-- end container -->
	</section>  