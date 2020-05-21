<%-- 
    Document   : Permission
    Created on : 27 Feb, 2020, 12:01:23 AM
    Author     : ANJALI
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
<%
    try
    {
    if(request.getParameter("btnrequest")!=null)
    {
        String emailid=request.getParameter("emailid");
        String pass=request.getParameter("pass");
        String user=request.getParameter("g");
         Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            
          Statement stat=conn.createStatement();
        if(user.equals("Guardian"))
        {
           
            String qry="select * from GUARDIAN where GEMAILID='"+emailid+"' ";
            
            ResultSet rs=stat.executeQuery(qry);
           //out.println("Heyy");
           %>
           
              <form> 
              <table>
              
           <tr><td>NAME </td> <td>GENDER </td><td>ADDRESS </td><td>AGE </td><td>PHONE </td><td>RELATION_WITH_STUDENT </td><td>PURPOSE_OF_VISIT </td><td>STUDENT_ID </td><td>STUDENT_HOSTEL </td></tr>
           <%
            while(rs.next())
            {    
              %>
                  
              <tr><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td><td><%=rs.getString(9)%></td><td><%=rs.getString(10)%></td><td><%=rs.getString(11)%></td><td><%=rs.getString(12)%><td><%=rs.getString(13)%><td><input type="submit" name="btnA" value="APPROVE" ></td> 
                  <td><input type="submit" name="btnN" value="NOT APPROVE"></td></tr>
              </table>
             
                 
             
            
            <%}%>

            
              </form></body></html>
             <%
                 //out.println(request.getParameter("btnA"));
            if(request.getParameter("btnA")!=null)
            {
                //out.println(request.getParameter("btnA"));
                out.println("hi"); 
              
                int x=stat.executeUpdate("update GUARDIAN set GRANTED='1' where GEMAILID='"+emailid+"'");
                //out.println("No");
                if(x>0)
                    out.println("UPDATED");
                else
                    out.println("NOT UPDATED");

            }
            else
            {
                out.println("Not found");
            }
             
             
        }
        else if(user.equals("Guest Faculty"))
        {
            
        }
        else if(user.equals("Joined Faculty"))
        {
            
        }
        else if(user.equals("Guardian"))
        {
            
        }
else
{
out.println("could not find");
}
             
    }
    }
    catch(Exception ex)
    {
        
    }
    
%>
