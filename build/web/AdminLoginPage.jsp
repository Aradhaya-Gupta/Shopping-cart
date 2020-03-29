<%-- 
    Document   : AdminLoginPage
    Created on : Nov 29, 2016, 4:46:19 PM
    Author     : Aradhaya Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input{
                background-color: aqua;
                text-align: center;
                text-decoration: blink;
            }
        </style>
    </head>
    <body><center>
        
        <form action="AdminLoginCheck.jsp">
            <h3>Admin Login Page</h3>
            <table style="border-style: solid; border-color: blue; background-color: blanchedalmond">
                <tr><td>Admin User Id</td><td><input type="text" name="aUid"/></td></tr>
                <tr> <td>Password</td><td><input type="password" name="pass"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Sign in"/></td></tr>
            </table>
            
            
        </form>
        </center>
    </body>
</html>
