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
        <form name="l1" method="post">
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
               String qry="select * from CHECK1 where CHECKOUT='"+ddt+"'";
               // String dob = request.getParameter("dob");
            /*   if(request.getParameter("btninsert")!=null)
               {
*/                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery(qry);
            out.println("YES") ;
            while(rs.next())
            {
                int r1=rs.getInt(1);
                String e=rs.getString(2);
                out.println(e);
                String qr="insert into ALREADY_STAYED_PEOPLE values("+r1+",'"+rs.getString(2)+"',"+rs.getInt(3)+","
                        +rs.getInt(4)+",'"+rs.getString(5)+"','"+rs.getString(6)+"')";
                int x=stat.executeUpdate(qr);
                if(x>0)
                {
                   out.println("x done");
                    
                    String qw="update TRIAL_FOR_ROOMS set AVAILABLE=1 where ROOM_NO="+r1+"";
                    int y=stat.executeUpdate(qw);
                   
                    if(y>0)
                    {
                         out.println("y done");
                        String del="delete from TEMPORARY_TABLE where EMAIL_ID='"+e+"'";
                        int z=stat.executeUpdate(del);
                        if(z>0)
                        {
                             out.println("z done");
                            String st="select * from ROUTING_PERMISSION where EMAILID='"+e+"'";
                            ResultSet r2=stat.executeQuery(st);
                            out.println("done ");
                            while(r2.next())
                            {
                                String user=r2.getString(3);
                                String qE="";
                                if(user.equals("External Student"))
                                {
                                     qE="delete from PERMISSION_TABLE_HOD_EXTERNALSTUDENT where EMAILID='"+e+"'";
                                    
                                }
                                else if(user.equals("Joined Faculty"))
                                {
                                      qE="delete from PERMISSION_TABLE_HOD_JOINEDFACULTY where EMAIL_ID='"+e+"'";
   
                                }
                                else if(user.equals("Guest Faculty"))
                                {
                                  qE="delete from PERMISSION_TABLE_HOD_GUESTFACULTY where GEMAILID='"+e+"'";
   
                                }
                                else if(user.equals("Guardian"))
                                {
                                     qE="delete from PERMISSION_TABLE_WARDEN_GUARDIAN where GEMAILID='"+e+"'";
                                }
                                
                                int dp=stat.executeUpdate(qE);
                                if(dp>0)
                                {
                                    String qR="delete from ROUTING_PERMISSION  where EMAILID='"+e+"' ";
                                    int ds=stat.executeUpdate(qR);
                                    
                                    if(ds>0)
                                    {
                                        String qC="delete from CHECK1 where EMAILID='"+e+"' ";
                                        
                                        int g=stat.executeUpdate(qC);
                                        
                                        if(g>0)
                                            out.println("Finally Done");
                                    }
                                   
                                }
                      
                                
                            }
                                    
                                    
                                    
                                    
                                    
                            
                        }
                    }
                }
                
            }
                   
                   /*if(ddt.equals(dob))
                {*/
                    //out.println("Date Matched");
                    
                /*}
                else
                {
                    out.println("NOt Matched");
                }
               }*/
                /*
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
                  /*          int x=stmt.executeUpdate(qry1);
                            //out.println("hi22");
                            if(x>0)
                                out.println("Avail updated");
                            else
                                out.println("Not ");
                        }
                    }*/
                    //out.println("Hi1");
                    //out.println("Your Date of birth "+dob+ " is submited is database");
}
catch (Exception ex) {
 }
            
%>