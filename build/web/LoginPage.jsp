<%-- 
    Document   : LoginPage
    Created on : Nov 17, 2016, 5:51:23 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
        td{
        border: burlywood; 
      <%--  background-color: blanchedalmond; --%>
        color: blue;
        text-align: center;
        text-decoration: blink;
        }
        input {
            background: lightcoral; color: crimson;
        }
        </style>
    </head>
    
    <body>
    <center>
        <form method="post" action="LoginCheck.jsp">
            
            <h3 style="background-color: bisque; color: blue">Login</h3>
            <table>
                <tr><td>User Id</td><td><input type=" textbox" name="uId"></td></tr>
                <tr><td>Password</td><td><input type="password" name="pas"></td></tr>
                <tr><td><input type="Submit" value="Login"></td></tr>
            </table>
        </form>
    </center>
    </body>
</html>
