<%-- 
    Document   : feedback
    Created on : 23 Feb, 2020, 7:13:56 PM
    Author     : ANJALI
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="feed.css">
    </head>
    <body>
        <form>
        <div class="container">
            <div class="header">
                <h2>Feedback Form</h2>
                <h3>Please help us to avail your invaluable feedback</h3>
                
            </div>
            <div class="ques">
                <h3>How to rate your experience of visit at Banasthali Vidyapith ?</h3>
                <div class="rating-wrapper">
            <input type="radio" name="rating1" id="star-1" value="1"><label for="star-1"></label>
            <input type="radio" name="rating1" id="star-2" value="2"><label for="star-2"></label>
            <input type="radio" name="rating1" id="star-3"  value="3"><label for="star-3"></label>
            <input type="radio" name="rating1" id="star-4" value="4"><label for="star-4"></label>
            <input type="radio" name="rating1" id="star-5" value="5"><label for="star-5"></label>
            </div>
                <h3>How to rate your experience of stay at the Banasthali Guest House ?</h3>
                <div class="rating-wrapper2">
            <input type="radio" name="rating2" id="star-6" value="1"><label for="star-6"></label>
            <input type="radio" name="rating2" id="star-7" value="2"><label for="star-7"></label>
            <input type="radio" name="rating2" id="star-8"  value="3"><label for="star-8"></label>
            <input type="radio" name="rating2" id="star-9" value="4"><label for="star-9"></label>
            <input type="radio" name="rating2" id="star-10" value="5"><label for="star-10"></label>
            </div>
                <h3>How do you rate the cleanliness in the Banasthali Guest House ?</h3>
                <div class="rating-wrapper3">
            <input type="radio" name="rating3" id="star-11" value="1"><label for="star-11"></label>
            <input type="radio" name="rating3" id="star-12" value="2"><label for="star-12"></label>
            <input type="radio" name="rating3" id="star-13"  value="3"><label for="star-13"></label>
            <input type="radio" name="rating3" id="star-14" value="4"><label for="star-14"></label>
            <input type="radio" name="rating3" id="star-15" value="5"><label for="star-15"></label>
            </div>
                <h3>How do you rate the quality and taste of the food we offered ?</h3>
                <div class="rating-wrapper4">
            <input type="radio" name="rating4" id="star-16" value="1"><label for="star-16"></label>
            <input type="radio" name="rating4" id="star-17" value="2"><label for="star-17"></label>
            <input type="radio" name="rating4" id="star-18"  value="3"><label for="star-18"></label>
            <input type="radio" name="rating4" id="star-19" value="4"><label for="star-19"></label>
            <input type="radio" name="rating4" id="star-20" value="5"><label for="star-20"></label>
            </div>
                <h3>Would you prefer to visit the campus and the guest house again in future ?</h3>
                <div class="rating-wrapper5">
            <input type="radio" name="rating5" id="star-21" value="1"><label for="star-21"></label>
            <input type="radio" name="rating5" id="star-22" value="2"><label for="star-22"></label>
            <input type="radio" name="rating5" id="star-23"  value="3"><label for="star-23"></label>
            <input type="radio" name="rating5" id="star-24" value="4"><label for="star-24"></label>
            <input type="radio" name="rating5" id="star-25" value="5"><label for="star-25"></label>
            </div>
                
                    <div class="btnwrapper">
                        <div class="btn">
                            <input type="submit" name="btninsert" value="SUBMIT"> 
                        </div>
                    </div>
                </div>
            </div>
           
            
            
        
       </form>
    </body>

</html>
<%
   if(request.getParameter("btninsert")!=null)
   {
       String EXPRVISITBANAS=request.getParameter("rating1");
       String EXPRVISITGUEST=request.getParameter("rating2");
       String EXPRCLEAN=request.getParameter("rating3");
       String EXPRFOOD=request.getParameter("rating4");
       String VISITAGAIN=request.getParameter("rating5");
       
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project1");
       Statement stat=conn.createStatement();
       
       int x=stat.executeUpdate("insert into FEEDBACK values ('"+EXPRVISITBANAS+"','"+EXPRVISITGUEST+"','"+EXPRCLEAN+"','"+EXPRFOOD+"','"+VISITAGAIN+"')");
       if(x>0)
           out.println("Inseted Successfully");
       else
       {
           out.println("Not inserted");
       }
   }
%>