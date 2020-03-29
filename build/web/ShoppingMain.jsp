<%-- 
    Document   : ShoppingMain
    Created on : Nov 26, 2016, 1:09:23 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Main</title>
        <style>
            td{
                border: 1; 
                border-style: solid;
                border-color: black;
            }
        </style>
    </head>
    <body>
        <img src="7.jpg" style="border-style: ridge; border-color: blue; width: 100%; height: 300px" ></img>
        <table style="border:1; border-style: dotted; border-color: brown; width: 100%">
            <tr>
                <td><a href="Home.jsp" target="work">Home</a></td>
                <td><a href="Shopping.jsp" target="work">Shopping</a></td>
                <td><a href="ViewCart.jsp" target="work">View Cart</a></td>
                <td><a href="MyAccount.jsp" target="work">My Account</a></td>
                <td><a href="ChangePassword.jsp" target="work">Change Password</a></td>
                <td>Sign Out</td>
            </tr>
            
        </table>
        <iframe name="work" style="border-style: solid; border-color: black; width:100%; height:400px"></iframe>
    </body>
</html>
