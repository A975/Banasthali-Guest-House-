<%-- 
    Document   : My_bookings
    Created on : 4 Mar, 2020, 11:26:43 PM
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
        <form name="f" method="post">
        <h1>Hello World!</h1>
       
<%

    String id=request.getParameter("id");
    out.println("Hi"+id);
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
    Statement stat=conn.createStatement();
    String s="select * from  ALREADY_STAYED_PEOPLE where EMAIL_ID='"+id+"' ";
    ResultSet rs=stat.executeQuery(s);
    //out.println("Query Done");
%>
    <table border='1' cellspacing=5 cellpadding=12  width='100%'>
        <tr><td>Room No</td><td>EMAIL_ID</td><td>ADULTS</td><td>CHILDREN</td><td>CHECKIN</td><td>CHECKOUT</td></tr>
    <%while(rs.next())
    {
      

    %>
        
            <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2)%></td><td><%=rs.getInt(3)%></td><td><%=rs.getInt(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><tr>
                
        
    <%}%>
</table>
 </form>
    </body>
</html>

%>
