<%-- 
    Document   : Register
    Created on : Dec 8, 2016, 6:11:01 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><center>
        <h2>Register Yourself!</h2>
        <br>
        <h4>Just few simple steps to shop with us...</h4>
        <form>
            <table>
                <tr><td>Name</td><td><input type="textbox" name="name"/></td></tr>
                <tr><td>User Id</td><td><input type="textbox" name="userId"/></td></tr>
                <tr><td>Password</td><td><input type="Password" name="Password"/></td></tr>
                <tr><td>Gender</td><td><select name="gender"><option>M</option><option>F</option></select></td></tr>
                <tr><td>City</td><td><input type="textbox" name="city"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Login"/></td></tr>
            </table>
        </form>
        </center>
    </body>
</html>
