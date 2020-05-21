<%-- 
    Document   : View_Permission_ExternalStudent
    Created on : 2 Mar, 2020, 4:33:15 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="home_try.css">
        <title>JSP Page</title>
        <style>
            table {
  table-layout: fixed;
  width: 100%;
  border-collapse: collapse;
  border: 2px solid black;
  margin-top: 2px;
}

thead th:nth-child(1) {
  width: 30%;
}

thead th:nth-child(2) {
  width: 20%;
}

thead th:nth-child(3) {
  width: 15%;
}

thead th:nth-child(4) {
  width: 35%;
}

th, td {
  padding: 20px;
}
html {
  font-family: 'helvetica neue', helvetica, arial, sans-serif;
}

thead th, tfoot th {
  font-family: 'Rock Salt', cursive;
}

th {
  letter-spacing: 1px;
}

td {
  letter-spacing: 1px;
}

tbody td {
  text-align: center;
}

tfoot th {
  text-align: right;
}
thead, tfoot {
  background: url(leopardskin.jpg);
  color: white;
  text-shadow: 1px 1px 1px black;
}

thead th, tfoot th, tfoot td {
  background:#006699;
  border: 3px #9999ff;
}
tbody tr:nth-child(odd) {
  background-color: #9999ff;
}

tbody tr:nth-child(even) { 
    background-color: #ccccff;
}

tbody tr {
  background-image: url(noise.png);
}

table {
  background-color: #ff33cc;
}
/*caption {
  font-family: 'Rock Salt', cursive;
  padding: 20px;
  font-style: italic;
  caption-side: bottom;
  color: #666;
  text-align: right;
  letter-spacing: 1px;
}*/
        </style>
    </head>
    
    <body>
        <header>
        
        
        <div class="header-list">
            
            <ul>
                <li> <button class="dropbtn" onclick="window.location.href ='home_try.html';">Home</button></li>
                
                
             
               
                <li> <button class="dropbtn" onclick="window.location.href ='home.html';">Contact Us</button></li>
                
                
       
               
                <li>  <div class="dropdown">
                        
  <button class="dropbtn">About Us:</button>
  <div class="dropdown-content">
    <a href="Vision_try.html">Vision & Mission</a>
    <a href="panchmukhi.html">Five-Fold Activities</a>
    <a href="History.html">History</a>
  </div>
  </div></li>
        
        
        
        
        
        
        
        
        
                    <li>  <div class="dropdown">
  <button class="dropbtn">Sign-up as:</button>
  <div class="dropdown-content">
    <a href="re_externalstudent_try.jsp">External Student</a>
    <a href="re_joinedfaculty_try.jsp">Joined Faculty</a>
    <a href="re_guestfaculty_try.jsp">Guest Faculty</a>
       <a href="re_guardian_try.jsp">Guardian</a>
  </div>
                        </div></li>
        
       
        
        
        
       
        
        
        
        
                        <li>     <div class="dropdown">
  <button class="dropbtn">Login as:</button>
  <div class="dropdown-content">
    <a href="Login_user.jsp">User</a>
    <a href="Login_HOD.jsp">HOD</a>
    <a href="Login_HOD.jsp">Warden</a>
    <a href="Login_HOD.jsp">Admin</a>
  </div>
                            </div></li>
        
           
            </ul>
                            </div>
    </header>
        <div class="fill">
         <img class="img-to-fit" src="imgs/project images.gif">
        </div>
    
        <table>
  
  <!--<thead>
    <tr>
      <th scope="col">Email-Id</th>
      <th scope="col">Name</th>
      <th scope="col">Purpose Of Visit</th>
      <th scope="col">Department To Visit</th>
      <th scope="col">Batch OF Student</th>
      <th scope="col">Pervious College Id</th>
      <th scope="col">Approve</th>
      <th scope="col">Not Approve</th>
      
      
    </tr>
  </thead>-->
  <tbody>
     

        <form name="f2" method="post">    
<%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project1");
            Statement stat=conn.createStatement();
            ResultSet rs=stat.executeQuery("select * from PERMISSION_TABLE_HOD_EXTERNALSTUDENT where APPROVE=0");%>
            <table border='1' cellspacing=12 cellpadding=8  width='100%'>
                <tr><td>Email-Id</td><td>Name</td><td>Purpose Of Visit</td><td>Department To Visit</td><td>Batch OF Student</td><td>Pervious College Id</td><td>Approve</td><td>Not Approve</td></tr>
                <%
    while(rs.next())
    {

    %>
                <tr><td><%=rs.getString(1)%><td><%=rs.getString(2)%><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(6)%></td><td><a href="confirm_permission_external.jsp?id=<%=rs.getString(1)%>">Approve</a></td><td><a href="discard_permission_external.jsp?id=<%=rs.getString(1)%>">Not Approve</a></td></tr>
                
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
