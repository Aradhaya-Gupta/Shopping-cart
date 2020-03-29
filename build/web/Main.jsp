<%-- 
    Document   : Main
    Created on : Dec 8, 2016, 6:01:18 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td{
                text-align: center;
                text-decoration: blink;
                border-style: ridge;
                border-spacing: inherit;
                border-color: blueviolet;
                background-color: cadetblue;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Welcome to Shopping Cart Page!</h1>
        <table>
            <tr><td><a style="text-decoration:blink" href="AdminLoginPage.jsp" target="work">Admin Login</a></td>
                <td><a href="Register.jsp" target="work">New User??? <br>Register</a></td>
                <td><a href="LoginPage.jsp" target="work">Already a user!!<br> Sign in</a></td>
            
            </tr>
        </table>
        <iframe name="work" style="width: 500px; height: 500px; border-style: hidden"></iframe>
        </center>
    </body>
</html>
