import java.io.*;


public class HtmlToPdf {


  public static void main(String[] args) throws IOException {

	  String extension = "";
	  File[] files = new File(args[0]).listFiles();
  
  
	  for (File file : files) {
		  if (file.isFile()) {
	    	  
	    	  
	
			  int i = file.getName().lastIndexOf('.');
			  
			  if (i > 0) {
				  extension = file.getName().substring(i+1);
			  }
			  
			  if (extension.equals("html")) {
					  System.out.println(file.getName()); 
			  }
		  }   
	       
	  }  
  }
  
}