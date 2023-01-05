<%@page import="java.util.Properties" %>

<%@page import="javax.mail.internet.MimeMessage.RecipientType" %>

<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%
  String result;
  //get all the fields from index page
  
final String to = request.getParameter("mail");
final String subject = request.getParameter("sub");
final String messg = request.getParameter("mess");


// mention the sender's email id

final String from = "jaingaurav2301@gmail.com";
final String pass = "Me hu newton";



String host="localhost";

Properties pros = new Properties();

pros.put("mail.smtp.host", host);
pros.put("mail.transport.protocol", "smtp");
pros.put("mail.smtp.auth", "true");
pros.put("mail.smtp.starttls.enable","true");
pros.put("mail.user", from);
pros.put("mail.password",pass);
pros.put("mail.smto.port","587");

Session mailSession=Session.getInstance(pros, new javax.mail.Authenticator(){
   protected PasswordAuthentication getPasswordAuthentication(){
       return new PasswordAuthentication(from,pass);
   } 
});

try{
MimeMessage message = new MimeMessage(mailSession);
message.setFrom(new InternetAddress(from));
message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

message.setSubject(subject);

message.setText(messg);

Transport.send(message);

result="Mail sent Succesfully";
    }
    
catch(MessagingException mex){
    
    mex.printStackTrace();
    result="Error: unable to send the message";
    }
%>

<title>Sending mail via jsp</title>

<h2>Sending mail...</h2>
<b><font color="green"><%out.println(result); %></font></b>