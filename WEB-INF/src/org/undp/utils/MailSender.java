package org.undp.utils;
import java.util.*; 
import java.io.File;
import java.io.IOException;
import javax.mail.*;
import javax.mail.internet.*;

public class MailSender {
	String 	message="",
			subject="",
			smtpServer = "mail.ruandunduma120.org",
			authAddress="brohlin@ruandunduma120.org",
			authPassword = "OverHead13",
			smtpPort =  "25",
			siteName="";
	
	InternetAddress addressTo=null;
	List<File> attachedFiles=null;
	
	

	public MailSender(){}           
		
	public void send ()	{		

		try{
			Properties props = new Properties();
			props.put("mail.smtp.host", smtpServer);
			props.put("mail.smtp.port", smtpPort);
			props.put("mail.smtp.auth", "true");


			// create some properties and get the default Session
			Session sessionMail = Session.getInstance(props, new Authenticator() {
				public PasswordAuthentication getPasswordAuthentication() {      
					return new PasswordAuthentication(authAddress, authPassword);
				}
			});

			System.out.println(message);
			sessionMail.setDebug(true);

			// create a message
			Message msg = new MimeMessage(sessionMail);
			

			// set the from and to address
			InternetAddress addressFrom = new InternetAddress(authAddress);
			msg.setFrom(addressFrom);
			msg.setRecipient(Message.RecipientType.TO, addressTo);
			// msg.setRecipients(Message.RecipientType.TO, addressTo);		        	
			msg.addHeader("site", siteName);
			
			// Setting the Subject and Content Type
			msg.setSubject(subject);
			// msg.setContent(message, "text/plain");
			msg.setContent(message, "text/plain; charset=utf-8");
			
			Transport.send(msg);
		}catch(Exception e){
			e.printStackTrace();
		}

	}

	public  void sendAttachment()
					throws AddressException, MessagingException {
		// sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.host", smtpServer);
		properties.put("mail.smtp.port", smtpPort);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.user", authAddress);
		properties.put("mail.password", authPassword);	
	
		// creates a new session with an authenticator
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(authAddress, authPassword);
			}
		};
		Session session = Session.getInstance(properties, auth);
 		
	
		// creates a new e-mail message
		Message msg = new MimeMessage(session);
	
		msg.setFrom(new InternetAddress(authAddress));
		msg.setRecipient(Message.RecipientType.TO, addressTo);
		msg.setSubject(subject);
		msg.setSentDate(new Date());
	
		// creates message part
		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent(message, "text/html");
	
		// creates multi-part
		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
	
		// adds attachments
		if (attachedFiles != null && attachedFiles.size() > 0) {
			for (File aFile : attachedFiles) {
				MimeBodyPart attachPart = new MimeBodyPart();
	
				try {
					attachPart.attachFile(aFile);
				} catch (IOException ex) {
					ex.printStackTrace();
				}
	
				multipart.addBodyPart(attachPart);
			}
		}
	
		// sets the multi-part as e-mail's content
		msg.setContent(multipart);
	
		// sends the e-mail
		Transport.send(msg);
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
	
	public String getSubject() {
		return subject;
	}
	
	public void setSubject(String subject) {
		this.subject = subject;
	}
	
	public String getSmtpServer() {
		return smtpServer;
	}
	
	public void setSmtpServer(String smtpServer) {
		this.smtpServer = smtpServer;
	}
	
	public String getAuthAddress() {
		return authAddress;
	}
	
	public void setAuthAddress(String authAddress) {
		this.authAddress = authAddress;
	}
	
	public String getAuthPassword() {
		return authPassword;
	}
	
	public void setAuthPassword(String authPassword) {
		this.authPassword = authPassword;
	}
	
	public String getSmtpPort() {
		return smtpPort;
	}
	
	public void setSmtpPort(String smtpPort) {
		this.smtpPort = smtpPort;
	}
	
	public String getSiteName() {
		return siteName;
	}
	
	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	
	public InternetAddress getAddressTo() {
		return addressTo;
	}
	
	public void setAddressTo(InternetAddress addressTo) {
		this.addressTo = addressTo;
	}

}