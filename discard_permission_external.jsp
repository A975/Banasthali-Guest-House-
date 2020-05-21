<%-- 
    Document   : confirm_permission_external
    Created on : 2 Mar, 2020, 5:21:41 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
 <%@page import= "javax.mail.Authenticator"%>
 <%@page import= "javax.mail.PasswordAuthentication"%>
<%@ page import="javax.activation.*" %><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="l" method="post">
            <table>
                <% 
                    String s=request.getParameter("id");
                    out.println(s);
                %>
                <tr><td>Are you sure you donot  want to grant permission for stay to this student <%=request.getParameter("id")%></td></tr>
                <tr><td><input type="submit" name="btngrant" value="GRANT"></td><td><input type="submit" name="btnnotgrant" value="NOT GRANT"></td></tr>
            </table>   
       
<%
    try
    {
        //String s=request.getParameter("id");
    if(request.getParameter("btnnotgrant")!=null)
    {
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project1");
       Statement stat=conn.createStatement();
       //String s=request.getParameter("id");
       out.println(s);
       String qry="delete from PERMISSION_TABLE_HOD_EXTERNALSTUDENT  where EMAILID='"+s+"' ";
       int x=stat.executeUpdate(qry);
       
       if(x>0) 
       {
           out.println("DELETED 1 permission");
           String q="delete from ROUTING_PERMISSION where EMAILID='"+s+"'";
           String q1="delete from TEMPORARY_TABLE where EMAIL_ID='"+s+"'";
           
           //out.println("to check for r1");
           //out.println(r1.next());
           //out.println("query 1 run");
           
           //out.println("query 2 run");
           int y=stat.executeUpdate(q);
           if(y>0)
           {
               out.println("deleted from Routing");
               int z=stat.executeUpdate(q1);
        
               if(z>0)
               {
                   out.println("in z");
                   String result;

// Get recipient's email-ID, message & subject-line from mail.html page
final String to = request.getParameter("id");
final String subject = "Booking Cancellation (Bansthali Vidyapith)";
final String messg = "Sorry!! Your Booking has been cancelled.";
// Sender's email ID and password needs to be mentioned
final String from = "singhanjali5811@gmail.com";
final String pass = "anjaliks@12";
// Defining the gmail host
String host = "smtp.gmail.com";
// Creating Properties object
Properties props = new Properties();
// Defining properties

props.put("mail.smtp.ssl.enable","true");
props.put("mail.smtp.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.user", from);
props.put("mail.password", pass);
props.put("mail.port","2525"); // there are some other ports also available
// Authorized the Session object.
Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
@Override

protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from, pass);
}
});
try {
// Create a default MimeMessage object.
MimeMessage message = new MimeMessage(mailSession);

// Set From: header field of the header.
message.setFrom(new InternetAddress(from));

// Set To: header field of the header.
message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

// Set Subject: header field
message.setSubject(subject);

// Now set the actual message
message.setText(messg);

// Send message
Transport.send(message);
result = "Your mail sent successfully....";
out.println(result);
} catch (MessagingException mex) {
mex.printStackTrace();
result = "Error: unable to send mail....";
out.println(mex);
out.println(result);}
                   
                   
               }
                   //out.println("deleted from Temporary ");
            
           }
                   
                   
                   
               }
              
           }
    
           
           //out.println("ok done q1 r2");
           if(request.getParameter("btngrant")!=null)
    {
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project1");
       Statement stat=conn.createStatement();
       //String s=request.getParameter("id");
       out.println(s);
       String qry="update PERMISSION_TABLE_HOD_EXTERNALSTUDENT set APPROVE=1 where EMAILID='"+s+"' ";
       int x=stat.executeUpdate(qry);
       
       if(x>0) 
       {
           //out.println("Updated");
           String q="Select ROOM_NO from ROUTING_PERMISSION where EMAILID='"+s+"'";
           String q1="Select * from TEMPORARY_TABLE where EMAIL_ID='"+s+"'";
           
           //out.println("to check for r1");
           //out.println(r1.next());
           //out.println("query 1 run");
           
           //out.println("query 2 run");
           String i1="insert into CHECK1(EMAILID) values('"+s+"')";
           int y=stat.executeUpdate(i1);
           if(y>0)
           {
               out.println("inserted into check1");
               ResultSet r1=stat.executeQuery(q);
               
               out.println("r1 run");
           while(r1.next())
           {
               out.println("in while for rooms");
               String g="update CHECK1 set ROOM_NO="+r1.getInt(1)+" where EMAILID='"+s+"'";
               int z=stat.executeUpdate(g);
               out.println("room query run");
               if(z>0)
               {
                   out.println("room no inserted");
                   ResultSet r2=stat.executeQuery(q1);
           
           while(r2.next())
           {
               out.println("in while for rooms1111");
               String g1="update CHECK1 set ADULTS="+r2.getInt(4)+",CHILDREN="+r2.getInt(5)+",CHECKIN='"+r2.getString(2)+"',CHECKOUT='"+r2.getString(3)+"' where EMAILID='"+s+"'";
               int z1=stat.executeUpdate(g1);
               out.println("checkin query run");
               if(z1>0)
               {
                   String result;

// Get recipient's email-ID, message & subject-line from mail.html page
final String to = request.getParameter("id");
final String subject = "Booking Confirmation (Bansthali Vidyapith)";
final String messg = "CONGARTULATIONS!! Your Booking is confirmed.Please make sure you visit Banasthali on the booking date otherwise it would be cancelled the next day.";
// Sender's email ID and password needs to be mentioned
final String from = "singhanjali5811@gmail.com";
final String pass = "anjaliks@12";
// Defining the gmail host
String host = "smtp.gmail.com";
// Creating Properties object
Properties props = new Properties();
// Defining properties

props.put("mail.smtp.ssl.enable","true");
props.put("mail.smtp.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.user", from);
props.put("mail.password", pass);
props.put("mail.port","2525"); // there are some other ports also available
// Authorized the Session object.
Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
@Override

protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from, pass);
}
});
try {
// Create a default MimeMessage object.
MimeMessage message = new MimeMessage(mailSession);

// Set From: header field of the header.
message.setFrom(new InternetAddress(from));

// Set To: header field of the header.
message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

// Set Subject: header field
message.setSubject(subject);

// Now set the actual message
message.setText(messg);

// Send message
Transport.send(message);
result = "Your mail sent successfully....";
out.println(result);
} catch (MessagingException mex) {
mex.printStackTrace();
result = "Error: unable to send mail....";
out.println(mex);
out.println(result);}

    


                   
               }
                   //out.println("checkin inserted");
               else
                   out.println("checkin not inserted");
           }
                   
                   
                   
               }
               else
                   out.println("room no not inserted");
           }
           
           //out.println("ok done q1 r2");
           
           
           }
          
           
       }
       else
           out.println("not updated");
    }
           
           
           }
          
           
    catch(Exception ex)
    {
           ex.printStackTrace();
    }

    
    %>
 </form>
        
    </body>
</html>