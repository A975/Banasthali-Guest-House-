<%-- 
    Document   : re_guardian_try
    Created on : 7 Mar, 2020, 12:12:27 AM
    Author     : ANJALI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
  background-color: #ccccff;
 
}

* {
  box-sizing: border-box;
}

.bg-img {
  
  /*background-image: url("imgs/MainGate.jpg");*/

  min-height: 500px;
  
 /* border-sizing:border-box;*/
 border-color: #cc00cc;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  margin-top: 150px;
  text-align: center;
  display:inline-block;
  margin-left: 300px;

}
/* Add styles to the form container */
.container {
  position: absolute;
 
 
    width: 950px;

  background-color: white;
 
  
}

/* Full-width input fields */
input[type=text], input[type=password] ,input[type=email],textarea {
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
.header-list
{
    float:right;
   /* margin-top: 10px; */
    margin-bottom: 35px;
    margin-right: 30px;
    margin-left:30px;
}
header{
    color:#330033;
    
    background-color:#006699;
    height:40px;
    /*flex:auto;*/
     /*display:flex;*/
    /*flex-direction: row;*/
    /*overflow:hidden;*/
    background-size: cover;
    /*flex-shrink: 0;*/
    /*position:fixed;*/
    
}
.img-to-fit
{
    width:100%;
}
.fill .img-to-fit{
  
    padding-right:15px;
    width:100%;
    /*height:100%;*/
    position:absolute;
    background-size: cover;
    /*flex-shrink: 0;*/
   /* height:100%;*/
   margin-top: 10px;
    backgroud-size:cover;
    background-repeat: no-repeat;
    background-position: center center; 
    
    
    
   
    
}


li{
    float:right;
    list-style: none;
    
}
ul
{
    style:none;
}
.dropbtn {
  background-color:#9999ff;
  color: white;
  /*padding: 16px;*/
  font-size: 12px;
  border: none;
/*padding-bottom: 20px;*/
 /* margin-bottom: 40px;*/
 margin-right: 20px;
 align:center;
}

.dropdown {
  position: relative;
  display: inline-block;
  
}

.dropbtn:hover{
   background-color: #3e8e41; 
}
.dropbtn{
    border-radius: 20px;
    margin-bottom: 10px;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
   z-index: 10;
}
.notification {
  background-color: #555;
  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}

.notification:hover {
  background: red;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background-color: red;
  color: white;
}


.dropdown-content a:hover {background-color: dodgerblue;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: dodgerblue;}

.dropbtn:hover{
    background-color: dodgerblue;
}

/* Add a green text color and a checkmark when the requirements are right */
button{
    width:150px;
    background-color: #9999ff;
    border-radius: 4px;
    height: 15px;
}
.bt{
    height:35px;
    width:200px;
    
}
.bt:hover{
    background-color: #000099;
}
.l{
    margin-right:50px;   
    width:100px;
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
        
           
            </ul>
                            </div>
    </header>
        <div class="fill">
         <img class="img-to-fit" src="imgs/project images.gif">
        </div> 
          
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


<div class="bg-img">
  <form name="f1" class="container" method="post">


    <label for="txtgemailid"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="txtgemailid" required>

    <label for="psw"><b>Password(password should be not more than 8 characters long and can contain alphabets,digits and only @!_)</b></label>
    <input type="password" placeholder="Enter Password" id="psw" name="psw" pattern="[A-Za-z0-9_@!]{8}" required>

   <!-- <div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div> -->

<h3>Confirm Your password</h3>
       
<input type="text" placeholder="Re-enter your password" id="txtconfirmp" name="txtconfirmp" vaue="" size="30" required>
<script>
    function Validate()
    {
     var pass1=document.getElementById("psw").value;
        var pass2=document.getElementById("txtconfirmp").value;
    
    if(pass1!=pass2)
    {
        alert("\n Passwords did not match Please Try Again");
        return false;
    }
    return true;
}
    </script>       
        <h3> Tell Us Your NickName</h3>
        
        <input type="text" placeholder="Your Nickname" name="txtnickname" size="30" required>
        
        <h3> Tell Us Your Name</h3>
        
        <input type="text" placeholder="Your name" name="txtgname" size="30" required>
        
        
        <h3>Select your Gender</h3>
        
        <input type="radio" name="g"/>Male     
        <input type="radio" name="g" />Female
        <input type="radio" name="g" />Other

         <h3> Enter your Address</h3>
       
         <textarea name="txtaddress" placeholder="address" size="40" required></textarea>
          <h3>Enter your age</h3>
        
          <input type="text" name="txtage" placeholder="your age" value="" size="30" required=""/>
         <h3>Your Phone number?</h3>
        
         <input type="text" placeholder="Phone number" pattern="[0-9]{10}" name="txtphone" value="" size="30" required=""/>
         <h3>Purpose of visit</h3>
       <textarea name="txtpurposeofvisit" placeholder="purpose of visit"size="40" required></textarea>
        

         <h3>Department to visit</h3>
       <textarea name="dept" placeholder="department to visit"size="40" required></textarea>
 
           
        
        
        
            
            <button class="bt" name="btninsert"  onclick="return Validate()" >REGISTER</button>
                
                
       


                      
       
       
        
        
                </div>
        </div>
        <!--<div class="btn">
        <input type="submit" name="btninsert" value="REGISTER" size="40">
        </div> -->

        
 
  </form>
</div>

    </body>
</html>










<%
   try
   {
        //out.println("Hi");   
       if(request.getParameter("btninsert")!=null)
       {
           
          //out.println("Hi1");
          
           String GEMAILID=request.getParameter("txtgemailid");
           String PASSWORD=request.getParameter("psw");
           String CONFIRMP=request.getParameter("txtconfirmp");
           String NICKNAME=request.getParameter("txtnickname");
           String GNAME=request.getParameter("txtgname");
           String GENDER=request.getParameter("g");
           String  AGE=(request.getParameter("txtage"));
           String PHONE=(request.getParameter("txtphone"));
           String ADDRESS=request.getParameter("txtaddress");
           //String RELATIONWITHSTUDENT=request.getParameter("txtrelationwithstudent");
           String PURPOSEOFVISIT=request.getParameter("txtpurposeofvisit");
           String GDEPARTTOVISIT=request.getParameter("dept");
           //String STUDENTHOSTEL=request.getParameter("txtstudenthostel");
  
            
           
           Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
            Statement stat=conn.createStatement();
            //out.println("hii2");
            
          int x=stat.executeUpdate("insert into GUEST_FACULTY values('"+GEMAILID+"','"+PASSWORD+"','"+CONFIRMP+"','"+NICKNAME+"','"+GNAME+"','"+GENDER+"','"+ADDRESS+"','"+AGE+"','"+PHONE+"','"+PURPOSEOFVISIT+"','"+GDEPARTTOVISIT+"')");        
        //  out.println("hii4");
           if(x>0)%>
           
           <a href="home_user_guest.jsp?id=<%=GEMAILID%>" class="notification">
  <span>Proceed to my account</span>

</a>
                <!--<a href="home_user_guest.jsp?id=<%=GEMAILID%>">Proceed to my account</a>>
                
                <%
                         }
   }
   catch(Exception e)
   {
       
   }
   %>