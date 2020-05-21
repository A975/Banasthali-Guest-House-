<%-- 
    Document   : Datepick
    Created on : 24 Feb, 2020, 8:30:18 PM
    Author     : ANJALI
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Java Date Picker</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
    </head>
    <body>
        <Pre>
        <form >
            <label for="datepicker">Enter Your Date of Birth:</label>
                <input type="text" name="dob" id="datepicker">
            
            <input type="submit" value="Submit" name="btninsert">
        </form>
        </pre>    
    </body>
</html>

<%
try {
                Date today=new Date();
                SimpleDateFormat d=new SimpleDateFormat("yyyy-MM-dd");
                String ddt=d.format(today);
                /* TODO output your page here. You may use following sample code. */
                out.println(ddt);
                String dob = request.getParameter("dob");
                if(request.getParameter("btninsert")!=null)
                {
                    
                    //char avail='0';
                    //String val="1";
                    //String qry="Select dob from emp where avail='0'";
                    String qry1="Update emp set avail='1' where dob='"+ddt+"'";
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                
                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
                 
                    Statement stmt = con.createStatement();
                    stmt.executeUpdate("insert into emp(dob) values('"+dob+"')");
                
                //out.println("Your Date of birth "+dob+ " is submited is database");

                    
                    
                    
                    
                    //out.println("hi");
                    
                    /*ResultSet rs=stmt.executeQuery(qry);
                    while(rs.next())
                    {
                        out.println("hi1");
                        if(rs.getString(1).equals(ddt))
                        {
                            out.println("hi2");*/
                            int x=stmt.executeUpdate(qry1);
                            //out.println("hi22");
                            if(x>0)
                                out.println("Avail updated");
                            else
                                out.println("Not ");
                        }
                    }
                    //out.println("Hi1");
                    //out.println("Your Date of birth "+dob+ " is submited is database");
            
catch (Exception ex) {
 }
            
%>