<%-- 
    Document   : forgot_password
    Created on : 2 Mar, 2020, 2:31:52 PM
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
        <form name="k" method="post">
            <table>
                
                
                <tr><td>Enter the email id<td><input type="text" name="txtemail" ></td></tr>
                <tr><td>what is your nickname<td><input type="text" name="txtnick"></td></tr>
                <tr><td><input type="submit" name="btnlogin" value="Confirm"></td><td></tr>
            
<% 
    try
    {
    //out.println("hi");
     String email=request.getParameter("txtemail");
     String nick=request.getParameter("txtnick");
     //out.println(email);
     //out.println(nick);
    if(request.getParameter("btnlogin")!=null)
    {
       
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
        Statement stat=conn.createStatement();
        ResultSet rs=stat.executeQuery("select * from GUARDIAN");
        //out.println("Hey");
         while(rs.next())
        {
            //out.println("In while");
            if(rs.getString(1).equals(email) && rs.getString(4).equals(nick))
            {%>
            <% out.println("ok done");%>
            <tr> <td><a href="resetpassword_external.jsp?id=<%=rs.getString(1)%>">Proceed to reset my password</a></td></tr>
                 </table>
        </form>
    </body>
</html>  
                   
                
                <%
            }
        }
       
        
    }
    }


    catch(Exception ex)
    {
        
    }
%>

