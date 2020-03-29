<%-- 
    Document   : ChangePasswordConfirm
    Created on : Dec 1, 2016, 5:15:51 PM
    Author     : ict
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String uid= session.getAttribute("aUid")+"";
        String pass= session.getAttribute("pass")+"";
        String oPass= request.getParameter("oPass");
        String nPass= request.getParameter("nPass");
        String cPass= request.getParameter("cPass");
        if(pass==oPass && nPass==cPass){
            Connection cn;
            PreparedStatement pstm;
            Class.forName("com.mysql.jdbc.Driver");
            cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
            pstm= cn.prepareStatement("Update AdminUser set Password=? where UserId=?");
            pstm.setString(1, nPass);
            pstm.setString(2, uid);
            pstm.executeUpdate();
            out.println("Password changed successfully");
        
        }
        else
            out.println("Password does not match");
        
        %>
        
    </body>
</html>
