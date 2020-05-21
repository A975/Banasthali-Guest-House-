<%-- 
    Document   : table_for_rooms
    Created on : 13 May, 2020, 4:20:05 PM
    Author     : ANJALI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  border: 3px solid #9999ff;
  margin-top: 50px;
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
  letter-spacing: 2px;
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
caption {
  font-family: 'Rock Salt', cursive;
  padding: 20px;
  font-style: italic;
  caption-side: bottom;
  color: #666;
  text-align: right;
  letter-spacing: 1px;
}
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
  <caption>ROOMS THAT ARE AVAILABLE</caption>
  <thead>
    <tr>
      <th scope="col">Room Number</th>
      <th scope="col">Type</th>
      <th scope="col">Price</th>
      <th scope="col">Book</th>
    </tr>
  </thead>
  <tbody>
     
             
              
        <%
    
        try
   {
        //out.println("Hi");  
                //Date today=new Date();
                //SimpleDateFormat d=new SimpleDateFormat("yyyy-MM-dd");
                //String ddt=d.format(today);
                /* TODO output your page here. You may use following sample code. */
                //out.println(ddt);
                //out.println("hi");
                String emailid=request.getParameter("txtemail");
                String cin = request.getParameter("txtcheckin");
                //cin=d.format(cin);
                 //cin=to_date;
                 //out.println(cin);
                //out.println("hi1");
                String cout = request.getParameter("txtcheckout");
                int ad=Integer.parseInt(request.getParameter("txtadults"));
                int ch=Integer.parseInt(request.getParameter("txtchildren"));
                
                //out.println(cout);
                //String cout=d.formRat(cout1);
                //out.println(cin+"  "+cout);
               // ResultSet rs;
           out.println("hi");     
       if(request.getParameter("btnsearch")!=null)
                    
       {
           out.println("hi1"); 
           //response.sendRedirect("book_rooms.jsp");
          //out.println("Hi2");
          //String qry="Select trial_for_rooms.ROOM_NO,TYPE,PRICE from trial_for_rooms where available=1 or (trial_for_rooms.ROOM_NO IN(Select check1.room_no from check1 where (check_in  not between '"+cin+"' and '"+cout+"') or (check_out not between '"+cin+"' and '"+cout+"')))";
           //String qry="Select ROOM_NO,TYPE,PRICE from trial_for_rooms where ROOM_NO=(Select ROOM_NO from check1 where CHECK_IN NOT BETWEEN '2020-02-20' and '2020-02-23')";
            //String qry="Select trial_for_rooms.ROOM_NO,TYPE,PRICE from trial_for_rooms where Available=1 or trial_for_rooms.ROOM_NO=(Select check1.ROOM_NO from check1 where  CHECK_IN NOT BETWEEN '2020-02-26' and '2020-02-28' )"; 
           
            String qry1="insert into TEMPORARY_TABLE values('"+emailid+"','"+cin+"','"+cout+"',"+ad+","+ch+")";
           
            
            
            
          String qry="Select trial_for_rooms.ROOM_NO,TYPE,PRICE from trial_for_rooms where available=1 or (trial_for_rooms.ROOM_NO IN(Select check1.room_no from check1 where ('"+cin+"'>check1.checkout) or ('"+cout+"'<check1.checkin)))";
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
           Statement stat=conn.createStatement();
           //out.println("hi2"); 
            //Statement stat1=conn.createStatement();
           
            out.println("hii2");
           int x=stat.executeUpdate(qry1);
           out.println("hi3"); 
           if(x>0)
               out.println("Inserted");
           else
               out.println("Not inserted");
       
       
       
       //Everything is important from here
        ResultSet rs=stat.executeQuery(qry); 
          out.println("hiii3");
          %>
          
              <form>
                    <%
             //int i=0;
              
           while(rs.next())
           {
             %>
               
             <tr><td><%=rs.getInt(1)%></td><td><%=rs.getString(2) %></td><td><%=rs.getInt(3)%></td><td><a href="display_loggedIn_User_guest.jsp?room_no=<%=rs.getInt(1)%>&email=<%=emailid%>">Book</a></td></tr>
                  <% 
                     
                //i+=1;
                  }
                  %> 
              
              </form>
              
          <%
              
               
           
           }
       

       }
   
   catch(Exception e)
   {
       
   }
   
    %>

    
   <!-- <tr>
      <th scope="row">Buzzcocks</th>
      <td>1976</td>
      <td>9</td>
      <td>Ever fallen in love (with someone you shouldn't've)</td>
    </tr>
    <tr>
      <th scope="row">The Clash</th>
      <td>1976</td>
      <td>6</td>
      <td>London Calling</td>
    </tr>
       
     

    <tr>
      <th scope="row">The Stranglers</th>
      <td>1974</td>
      <td>17</td>
      <td>No More Heroes</td>
    </tr>-->
  </tbody>
  <tfoot>
    <tr>
      <th scope="row" colspan="2"></th>
      <td colspan="2">PLEASE SELECT ROOM OF YOUR CHOICE</td>
    </tr> 
  </tfoot>
</table>
        
    </body>
</html>


 