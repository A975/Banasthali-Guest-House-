<%-- 
    Document   : book_rooms
    Created on : 26 Feb, 2020, 11:16:35 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
              <tr><td>Room No</td><td>Type</td><td>Price</td></tr>
        </table>
    </body>
</html>
<%
    try{
        
        String qry="Select trial_for_rooms.ROOM_NO,TYPE,PRICE from trial_for_rooms where available=1 or (trial_for_rooms.ROOM_NO IN(Select check1.room_no from check1 where ('"+cin+"'>check_out) or ('"+cout+"'<check_in)))";
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
           Statement stat=conn.createStatement();
           //out.println("hii2");
            
          ResultSet rs=stat.executeQuery(qry); 
         // out.println("hi3");
          %>
          <table>
              <tr><td>Room No</td><td>Type</td><td>Price</td></tr>
          <%
           while(rs.next())
           {
               %>
               
                   <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2) %></td><td><%=rs.getInt(3)%></td></tr>
                  <% }%> 
               </table>
               <%
           
           }
          
       
   
   catch(Exception e)
   {
       
   }
   
    %>
