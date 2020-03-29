<%-- 
    Document   : RemoveCart
    Created on : Nov 22, 2016, 5:56:05 PM
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
        String iid= request.getParameter("ItemID");
      
        String uid= session.getAttribute("uId")+"";
       
        Connection cn;
        PreparedStatement pstm;
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Delete from UserCart where ItemId=? and UserId=?");
        pstm.setString(1, iid);
        pstm.setString(2, uid);
        pstm.executeUpdate();
       
        out.println("Item removed from cart");
         //Thread.sleep(5000);
        %>
    </body>
</html>
