package com.itn.roomfinders.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamSource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {

	static String emailToRecipient, emailSubject, emailMessage;
    static final String emailFromRecipient = "binoddangi46@gmail.com";
 
   static ModelAndView modelViewObj;
 
    //@Autowired
    //private JavaMailSender mailSenderObj;
 
    @RequestMapping(value = {"/Admin/Mail", "email"}, method = RequestMethod.GET)
    public ModelAndView showEmailForm(ModelMap model) {
    	ModelAndView modelViewObj = new ModelAndView();
    	 modelViewObj.setViewName("email");
        return  modelViewObj;       
    }
 
    // This Method Is Used To Prepare The Email Message And Send It To The Client
    //@RequestMapping(value = "/Admin/sendEmail", method = RequestMethod.POST)
    //public ModelAndView sendEmailToClient(HttpServletRequest request) {
 
        // Reading Email Form Input Parameters      
      //  emailSubject = request.getParameter("subject");
        //emailMessage = request.getParameter("message");
        //emailToRecipient = request.getParameter("mailTo");
 
         //Properties props;
        //props = System.getProperties();
        //props.put("mail.smtp.auth", "true");
        //props.put("mail.smtp.starttls.enable", "true");
        //props.put("mail.smtp.host", "smtp.gmail.com");
        //props.put("mail.smtp.port", "587"); 

       //Session session = Session.getInstance(props,
         //   new javax.mail.Authenticator() {
           //     protected PasswordAuthentication getPasswordAuthentication() {
             //       return new PasswordAuthentication("binoddangi46@gmail.com","dcbhim123");
               // }
              //});
        //try {
        	//MimeMessage message = mailSenderObj.createMimeMessage();
              // message.setFrom(new InternetAddress("binoddangi46@gmail.com"));
               
                //message.addRecipient(Message.RecipientType.TO, new InternetAddress(emailToRecipient));
                //message.setSubject(emailSubject);

                //message.setText(emailMessage);
                //Transport.send(message);
            //} catch (MessagingException e) {e.printStackTrace();}
        
   
       //modelViewObj = new ModelAndView("email","messageObj","Thank You! Your Email Has Been Sent!");
        //return  modelViewObj;
      
    //}
    //@RequestMapping(value = "/Admin/send", method = RequestMethod.POST)
   // void sendEmail() {

     //   SimpleMailMessage msg = new SimpleMailMessage();
       // msg.setTo(emailToRecipient);

        //msg.setSubject(emailSubject);
        //msg.setText(emailMessage);

        //mailSenderObj.send(msg);

    //}
	 @Autowired
	    private JavaMailSender sender;
	 
	 @RequestMapping(value = "/Admin/sendEmail", method = RequestMethod.POST)	 
	 public String sendEmailToClient(HttpServletRequest request, Model model) {
		 emailSubject = request.getParameter("subject");
	        emailMessage = request.getParameter("message");
	        emailToRecipient = request.getParameter("mailTo");
	        try {
	           sendEmail();
	            model.addAttribute("message", "Email send!");
	            
	            return "email";
	        }catch(Exception ex) {
	        	System.out.println(ex);
	        	model.addAttribute("message", "Error in sending email");
	            return "email";
	        }
	       
	    }
	
	    private void sendEmail() {
	    	SimpleMailMessage simpleMailMessage=new SimpleMailMessage();
	        simpleMailMessage.setTo(emailToRecipient);
	        simpleMailMessage.setFrom("binoddangi46@gmail.com");
	        simpleMailMessage.setSubject(emailSubject);
	        simpleMailMessage.setText(emailMessage);
	        try {
	      sender.send(simpleMailMessage);
	        }catch(Exception ex) {
	        	System.out.println(ex);
	        }
	    }
	    
	   @RequestMapping(value = "/Admin/send", method = RequestMethod.POST)
	     void sendMail() {

	         SimpleMailMessage msg = new SimpleMailMessage();
	         msg.setTo(emailToRecipient);

	         msg.setSubject(emailSubject);
	         msg.setText(emailMessage);

	         sender.send(msg);

	     }
	   
	   
}
