<%-- 
    Document   : Login_HOD
    Created on : 2 Mar, 2020, 2:00:24 PM
    Author     : ANJALI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home_try.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

         




<style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("imgs/MainGate.jpg");
 
  min-height: 500px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  margin-top: 10px;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
.footer{
    background-color:#006699;
    position:absolute;
    height:150px;
    width:100%;
    
    
}

.row{
  
  float:left;
}
.row1 {
    
  float:right;
  
 
}
.column{
    padding-top: 20px;
}
.column1{
    padding-top: 20px;
}

.master{
   margin:0px auto;
}
.header-list li
{
    float: left;
}
</style>
</head>
<body>

    
    <header>
        <div class="header-list">
            <ul>
                <li> <button class="dropbtn" onclick="window.location.href ='home_try.html';">Home</button></li>
                
                
                <li> <button class="dropbtn" onclick="window.location.href ='search_room1.html';">Search</button></li>
               
                <li> <button class="dropbtn" onclick="window.location.href ='home.html';">Contact Us</button></li>
                
                
       
               
                <li>  <div class="dropdown">
                        
  <button class="dropbtn">About Us:</button>
  <div class="dropdown-content">
    <a href="RE_externalstudent.jsp">Vision & Mission</a>
    <a href="RE_joinedfaculty.jsp">Five-Fold Activities</a>
    <a href="RE_guestfaculty.jsp">History</a>
  </div>
  </div></li>
        
        
        
        
        
        
        
        
        
                    <li>  <div class="dropdown">
  <button class="dropbtn">Sign-up as:</button>
  <div class="dropdown-content">
    <a href="RE_externalstudent.jsp">External Student</a>
    <a href="RE_joinedfaculty.jsp">Joined Faculty</a>
    <a href="RE_guestfaculty.jsp">Guest Faculty</a>
       <a href="RE_guardian.jsp">Guardian</a>
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
        
                            <button  class="dropbtn" onclick="window.location.href ='home_try.html';">LogOut</button>
                                
                            </div>       
            
            </ul>
                            </div>
    </header>

    
    <div class="fill">
         <img class="img-to-fit" src="imgs/project images.gif">
        </div> 
        
    
    

<div class="bg-img">
  <form  class="container">
    <h1>Login</h1>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="txtemail" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="txtpass" required>

    <button type="submit" class="btn" name="btnlogin">Login</button>
  </form>
</div>
<div class="footer"> 
   
    
    <div class="row">
  <div class="column">
      <a href="Login_HOD.jsp">
    <img src="imgs/ban_inte.gif" style="height:40px; width:300px;">
      </a>
  </div>
  <div class="column">
      <a href="Datepick.jsp">
    <img src="imgs/panchmukhi.jpg" style="height:40px; width:300px;">
      </a>
  </div>
    </div>
  
    <div class="row1">
    
    <div class="column1">
        <a href="google_map.html">
            <img src="imgs/reach_us.gif" style="height:40px; width:300px;">
        </a>
    </div>
    
    <div class="column1">
        <a href="feedback.jsp">
            <img src="imgs/feedback.gif" style="height:40px; width:300px;">
        </a>
    </div>
    
 </div>   
    <div class="master">
        <div class="handlelist">
            <ul>
                <li><a href="https://www.facebook.com/banasthali.org"> <i class="fa fa-facebook-square" style="font-size:20px; color:black;padding-left: 20px;padding-right: 140px;padding-top: 100px;">www.facebook.com/banasthali.org</i></a></li>
                <li><i class="fa fa-envelope" style="font-size:20px; color:black;padding-left: 20px;padding-right: 20px;padding-top: 100px;">siddhshastri@gmail.com</i></li>
                <li>  <i class="fa fa-phone" style="font-size:20px;padding-right: 20px;padding-top: 100px;">228913</i></li>
            </ul>      
        </div>
    
        
    </div>
    </div>


</body>
</html>

































<%
    try
    {
    out.println("hi");
     String email=request.getParameter("txtemail");
     String pass=request.getParameter("txtpass");
     out.println(email);
     out.println(pass);
    if(request.getParameter("btnlogin")!=null)
    {
       
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
        Statement stat=conn.createStatement();
        ResultSet rs=stat.executeQuery("select * from LOGIN_HOD_WARDEN_ADMIN");
        out.println("Hey");
         while(rs.next())
         {
            out.println("In while");
            if(rs.getString(1).equals(email) && rs.getString(2).equals(pass))
            {
                //out.println("matched");
                response.sendRedirect("home_try_HOD.jsp");  
            }
        }
       
        
    }
    }
    catch(Exception ex)
    {
        
    }
%>
