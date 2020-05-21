<%-- 
    Document   : resetpassword1
    Created on : 2 Mar, 2020, 3:27:12 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="p" method="post">
            <table>
                <tr><td>Enter your new password</td><td><input type="password" name="txtpass1" value=""> </td></tr>
                <tr><td>Confirm your password</td><td><input type="password" name="txtpass2" value=""> </td></tr>
                <tr><td><input type="submit" name="txtbtn" value="Submit"></td></tr>
            </table>
        </form>
    </body>
</html>
<%
    try
    {
    out.println("hi");
     String pass1=request.getParameter("txtpass1");
     String pass2=request.getParameter("txtpass2");
     String email=request.getParameter("id");
     out.println(email) ;
     
     
    if(request.getParameter("txtbtn")!=null)
    {
       
        out.println("hi1");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
        Statement stat=conn.createStatement();
        if(pass1.equals(pass2))
        {
           out.println("hi2");
           //String qry="UPDATE LOGIN_HOD_WARDEN_ADMIN set PASSWORD='"+pass1+"' where GEMAILID= "admin@gmail.com" ";
           int x=stat.executeUpdate("Update JOINED_FACULTY set PASSWORD='"+pass1+"' where GEMAILID='"+email+"' ");
           out.println("Hi3");
           out.println(x);
           
           if(x>0)
           {
               out.println("updated");
               //response.sendRedirect("Login_HOD.jsp");
           }
           else
           {
               out.println("not updated");
           }
        }
        else{
            out.println("Password you entered do not match");
        }
    }
    }
    catch(Exception e)
    {
        
    }
    %>