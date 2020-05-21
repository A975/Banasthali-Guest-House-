<%-- 
    Document   : display_room
    Created on : 28 Feb, 2020, 10:22:47 PM
    Author     : ANJALI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.io.*"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
/* Center the loader */
body{
    
    background-color: #ccccff;
}
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
</style>

    </head>
    
      <body onload="myFunction()" style="margin:0;">

<div id="loader"></div>

<div style="display:none;" id="myDiv" class="animate-bottom">
  
  <h2>Please wait while your request is being processed.We will update you after sometime regarding confirmation of your room booking.</h2>
</div>

<script>
var myVar;

function myFunction() {
  myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>

    
    </body>
</html>
<%
    
    try
    {
    
    
    
        int room_no=Integer.parseInt((request.getParameter("room_no")));
        //out.println(room_no);
        String email=request.getParameter("email");
        //String pass=request.getParameter("pass");
        String user="Joined Faculty";
        //out.println("Hi5");
        if(user.equals("Joined Faculty"))
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            //ResultSet rs=stat.executeQuery("select * from GUARDIAN");
            //out.println("hi3");
    
            
                    //out.println("Please wait for some time until you get confirmation");
                    String qryG="insert into ROUTING_PERMISSION values("+room_no+",'"+email+"','"+user+"')";
                    int x=stat.executeUpdate(qryG);
                    if(x>0)
                    {
                        out.println("inserted into Routing_permission");
                    }
                    else{
                        out.println("not inserted");
                    }
                    
                    String qryJ="select * from JOINED_FACULTY where GEMAILID='"+email+"'";
                   // out.println("hey email selected");
                    ResultSet r=stat.executeQuery(qryJ);
                    while(r.next())
                    {
                        out.println("in while");
                      
                        //out.println(ph);
                        int i=0;
                        String qJ="insert into PERMISSION_TABLE_HOD_JOINEDFACULTY values('"+r.getString(1)+"','"+r.getString(5)+"','"+r.getString(8)+"','"+r.getString(9)+"','"+r.getString(10)+"',"+i+")";
 
                        int y=stat.executeUpdate(qJ);
                        out.println("query done");
                        if(y>0)
                            out.print("Inserted into permission");
                        else
                            out.println("not inserted into permission");
                    }
                    
                }
        /*
                
            }
    
        }
        if(user.equals("External Student"))
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("select * from EXTERNALSTUDENT");
            out.println("hi3");
            
            while(rs.next())
            {
                if(rs.getString(1).equals(email) && rs.getString(2).equals(pass))
                {
                    out.println("Please wait for some time until you get confirmation");
                     String qryG="insert into ROUTING_PERMISSION values("+room_no+",'"+email+"','"+user+"')";
                     
                    int x=stat.executeUpdate(qryG);
                    if(x>0)
                    {
                        out.println("inserted into Routing_permission");
                    }
                    else{
                        out.println("not inserted");
                    }
                    String qryP="select * from EXTERNALSTUDENT where GEMAIL='"+email+"'";
                    out.println("hey email selected");
                    ResultSet r=stat.executeQuery(qryP);
                    while(r.next())
                    {
                        out.println("in while");
                        int ph=Integer.parseInt(r.getString(8));
                        out.println(ph);
                        int i=0;
                        String qI="insert into PERMISSION_TABLE_HOD_EXTERNALSTUDENT values('"+r.getString(1)+"','"+r.getString(5)+"',"+ph+",'"+r.getString(9)+"','"+r.getString(10)+"','"+r.getString(11)+"','"+r.getString(12)+"',"+i+")";
                        
                        int y=stat.executeUpdate(qI);
                        out.println("query done");
                        if(y>0)
                            out.print("Inserted into permission");
                        else
                            out.println("not inserted into permission");
                    }
                }
                
            }
            
    
        }
        
        if(user.equals("Joined Faculty"))
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("select * from JOINED_FACULTY");
            out.println("hi3");
            
            while(rs.next())
            {
                if(rs.getString(1).equals(email) && rs.getString(2).equals(pass))
                {
                    out.println("Please wait for some time until you get confirmation");
                     String qryG="insert into ROUTING_PERMISSION values("+room_no+",'"+email+"','"+user+"')";
                    int x=stat.executeUpdate(qryG);
                    if(x>0)
                    {
                        out.println("inserted into Routing_permission");
                    }
                    else{
                        out.println("not inserted");
                    }
                
                String qryJ="select * from JOINED_FACULTY where GEMAILID='"+email+"'";
                ResultSet r=stat.executeQuery(qryJ);
                out.println("Query Done");
                while(r.next())
                {
                    out.println("In while");
                    int ph=Integer.parseInt(r.getString(9));
                    out.println(ph);
                    int i=0;
                    String qJ="insert into PERMISSION_TABLE_HOD_JOINEDFACULTY values('"+r.getString(1)+"','"+r.getString(5)+"',"+ph+",'"+r.getString(10)+"','"+r.getString(11)+"','"+r.getString(12)+"',"+i+")";
                    int z=stat.executeUpdate(qJ);
                    out.println(z);
                    out.println("Okay Done");
                    if(z>0)
                        out.println("inserted into PERMISSION_TABLE_HOD_JOINEDFACULTY");
                    else
                        out.println("NOT INSERTED");
                    
                }
                
                
            }
            
          }
       }
        
       
        
        if(user.equals("Guest Faculty"))
        {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("select * from GUEST_FACULTY");
            out.println("hi3");
    
            while(rs.next())
            {
                if(rs.getString(1).equals(email) && rs.getString(2).equals(pass))
                {
                    out.println("Please wait for some time until you get confirmation");
                     String qryG="insert into ROUTING_PERMISSION values("+room_no+",'"+email+"','"+user+"')";
                    int x=stat.executeUpdate(qryG);
                    if(x>0)
                    {
                        out.println("inserted into Routing_permission");
                    }
                    else{
                        out.println("not inserted");
                    }
                    String qG="select * from GUEST_FACULTY where GEMAILID='"+email+"' ";
                    ResultSet r=stat.executeQuery(qG);
                    
                    while(r.next())
                    {
                        int i=0;
                        int ph=Integer.parseInt(r.getString(9));
                        String QG="insert into PERMISSION_TABLE_HOD_GUESTFACULTY values('"+r.getString(1)+"','"+r.getString(5)+"',"+ph+",'"+r.getString(10)+"','"+r.getString(11)+"',"+i+")";
                        int y=stat.executeUpdate(QG);
                        if(y>0)
                        {
                            out.println("Done");
                        }
                        else
                        {
                            out.println("NOT DONE");
                        }
                        
                    }
                    
                }
                
            }
    
        }
        }
    }*/
    }
     catch(Exception ex)
    {
        
    }
    
%>



