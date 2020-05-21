<%-- 
    Document   : my_account
    Created on : 5 Mar, 2020, 12:20:05 AM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;"%>
<%@page import="java.util.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
     
        
<%
   try
   {
       String user=request.getParameter("user");
        String email=request.getParameter("email");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
           Statement stat=conn.createStatement();
           String qry="";
           if(user.equals("External Student"))
           {
                qry="Select * from EXTERNALSTUDENT where GEMAIL='"+email+"'";
                 ResultSet rs=stat.executeQuery(qry);%>
            <table border='1' cellspacing=5 cellpadding=12  width='100%'>
                <tr><td>EMAIL-ID</td><td>Name</td><td>Address</td></tr>
                    <% 
                            while(rs.next())
          {%>
       
          <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString("ADDRESS")%></td></tr>
         
          
         <% }%>
            </table>         
<%}
         
           else if(user.equals("Joined Faculty"))
           {
                qry="Select * from JOINED_FACULTY where GEMAILID='"+email+"'";
                 ResultSet rs=stat.executeQuery(qry);%>
            <table border='1' cellspacing=5 cellpadding=12  width='100%'>
                <tr><td>EMAIL-ID</td><td>Name</td><td>Address</td></tr>
                    <% 
                        while(rs.next())
          {%>
       
                <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString("ADDRESS")%></td></tr>
         
          
         <% }%>
            </table>
           <%}
           else if(user.equals("Guest Faculty"))
           {
                qry="Select * from GUEST_FACULTY where GEMAILID='"+email+"'";
                 ResultSet rs=stat.executeQuery(qry);%>
            <table border='1' cellspacing=5 cellpadding=12  width='100%'>
                <tr><td>EMAIL-ID</td><td>Name</td><td>Address</td></tr>
                    <% 
                        while(rs.next())
          {%>
       
                <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString("ADDRESS")%></td></tr>
         
          
         <% }%>
            </table>
           <%}
            else if(user.equals("Guardian"))
            {
                qry="Select * from GUARDIAN where GEMAIL='"+email+"'";
                 ResultSet rs=stat.executeQuery(qry);%>
            <table border='1' cellspacing=5 cellpadding=12  width='100%'>
                <tr><td>EMAIL-ID</td><td>Name</td><td>Address</td></tr>
                    <% 
                        while(rs.next())
          {%>
       
                <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString("ADDRESS")%></td></tr>
         
          
         <% }%>
            </table>
         
         <%   
            }
}

catch(Exception e){
   }
   
    
    %>

          
    </body>
</html>

             
          
   