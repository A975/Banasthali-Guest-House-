<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="home_try.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
       

    <header>
        <div class="header-list">
            
            <ul>
        
        
                
         
                
                
                

<


        
        
        
      
       
        
        
                <li> <button class="dropbtn" onclick="window.location.href ='home_try.html';">Home</button></li>
                
                
             
               
                <li> <button class="dropbtn" onclick="window.location.href ='Contact.html';">Contact Us</button></li>
                
       
                
                
                
                
                
                
                
                
       <li><button class="dropbtn" onclick="window.location.href='home_try1.html';">Logout</button></li>
                
                
                
                
                
                
               
                <li>  <div class="dropdown">
                        
  <button class="dropbtn">About Us:</button>
  <div class="dropdown-content">
    <a href="Vision_try.html">Vision & Mission</a>
    <a href="panchmukhi.html">Five-Fold Activities</a>
    <a href="History.html">History</a>
  </div>
  </div></li>
        
        
        
        
    <div class="dropdown">
  <button class="dropbtn">Grant permission to:</button>
  <div class="dropdown-content">
    <a href="View_Permission_ExternalStudent.jsp">External Student</a>
    <a href="View_Permission_GuestFaculty.jsp">Guest Faculty</a>
    <a href="View_Permission_JoinedFaculty.jsp">Joined Faculty</a>
  </div>
</div>    
        
        
        
        
                    
        
        
        
        
       
 
        
        
        
        
        
        
        
                       
        
           
            </ul>
                            </div>
    </header>
        <div class="fill">
         <img class="img-to-fit" src="imgs/project images.gif">
        </div> 
        
        
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="imgs/img2.jpg" style="height:500px; width:100%;
       ">
  <div class="text">Dormetry</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="imgs/img1.jpg" style="height:500px; width:100%;
      ">
  <div class="text">Superior Rooms</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="imgs/img3.jpg" style="height:500px;
       width:100%;
       
       
       ">
  <div class="text">Deluxe Room</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
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













        
        
        
        
                
      
       
       
        
      
       
        
        
        
        
        
        
        
        
        
       
