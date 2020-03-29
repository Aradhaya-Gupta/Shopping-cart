<%-- 
    Document   : AdminLoginCheck
    Created on : Nov 29, 2016, 5:02:39 PM
    Author     : ict
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        String uid= request.getParameter("aUid");
        String pass= request.getParameter("pass");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select * from AdminUser where UserId=? and Password=?");
        pstm.setString(1, uid);
        pstm.setString(2, pass);
        rs= pstm.executeQuery();
        if(rs.next()){
        response.sendRedirect("AdminMain.jsp");
        session.setAttribute("aUid", "uid");
        session.setAttribute("pass", "pass");
        }
        else
            out.println("User Id or Password is not correct");
        
        %>
    </body>
</html>
