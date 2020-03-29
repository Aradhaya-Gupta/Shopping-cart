<%-- 
    Document   : CancelledOrder
    Created on : Dec 2, 2016, 4:53:52 PM
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
        int OrderNo= Integer.parseInt(request.getParameter("OrderNo"));
        Connection cn;
        PreparedStatement pstm;
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm=cn.prepareStatement("Update UserOrders set OrderStatus=? where OrderNo=?");
        pstm.setString(1, "Cancelled");
        pstm.setInt(2, OrderNo);
        pstm.executeUpdate();
        out.println("OrderCancelled");
        
        %>
    </body>
</html>
