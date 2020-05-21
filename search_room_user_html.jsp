<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
        
        <script>
            $(function () {
                $("#datepicker1").datepicker();
            });
        </script>

    </head>
    <body>
        <form name="f1" method="post" action="search_rooms_jsp.jsp">
            <table>
              
                
                <tr><td>Email Id</td><td><input type="text" name="txtemail" value=""></td></tr>
    
                
                <tr><td>Check-in</td><td><input type="text" name="txtcheckin" id="datepicker"></td></tr>
                
                <tr><td>Check-out</td><td><input type="text" name="txtcheckout"  id="datepicker1"></td></tr>
                
                <tr><td>Adults</td><td><input type="text" name="txtadults" value=""></td></tr>
                
                <tr><td>Children</td><td><input type="text" name="txtchildren" value=""></td></tr>
                
                <tr><td><input type="submit" name="btnsearch" value="Search"></td></tr> 
            </table>
        </form>
       
    </body>
</html>


