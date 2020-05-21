<%-- 
    Document   : trial_for_rooms
    Created on : 25 Feb, 2020, 5:13:29 PM
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
        <form>
        <input type="submit" name="btnsearch" value="SEARCH" size="40">
        <h1>All available rooms</h1>
        </form>
    </body>
</html>
<%
    try
   {
        //out.println("Hi");   
       if(request.getParameter("btnsearch")!=null)
       {
           
          //out.println("Hi1");
          
           String qry="Select ROOM_NO,TYPE,PRICE from trial_for_rooms where AVAILABLE=1";
            
           
           Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            //out.println("hii2");
            
          ResultSet rs=stat.executeQuery(qry);  
          //out.println("Room no Type Price");
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
          
       }
   
   catch(Exception e)
   {
       
   }
   
    %>