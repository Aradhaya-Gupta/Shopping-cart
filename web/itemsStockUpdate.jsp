<%-- 
    Document   : itemsStockUpdate
    Created on : Dec 7, 2016, 5:43:59 PM
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
        String iid=request.getParameter("iid");
        int stock=Integer.parseInt(request.getParameter("nStock"));
        
        Connection cn;
        PreparedStatement pstm;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        pstm=cn.prepareStatement("Update Items set Stock=Stock+? where ItemId=?");
        pstm.setInt(1, stock);
        pstm.setString(2, iid);
        pstm.executeUpdate();
        out.println("Stock updated");
        
        %>
    </body>
</html>
