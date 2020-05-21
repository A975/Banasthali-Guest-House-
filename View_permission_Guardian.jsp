<%-- 
    Document   : View_Permission_ExternalStudent
    Created on : 2 Mar, 2020, 4:33:15 PM
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
        <form name="f2" method="post">    
<%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("select * from PERMISSION_TABLE_WARDEN_GUARDIAN where APPROVE=0");%>
            <table border='1' cellspacing=5 cellpadding=12  width='100%'>
                <tr><td>Email-Id</td><td>Name</td><td>Relation with Student</td><td>Purpose Of Visit</td><td>Student ID</td><td>Student Hostel</td><td>Approve</td><td>Not Approve</td><tr>
                <%
    while(rs.next())
    {

    %>
                <tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><a href="confirm_permission_guardian.jsp?id=<%=rs.getString(1)%>">Approve</a></td><td><a href="discard_permission_guardian.jsp?id=<%=rs.getString(1)%>">Not Approve</a></td></tr>
                
                <%}
%>
</form>

    </table>
        </body>
</html>
        
        <%
}

catch(Exception ex)
{

}
%>
