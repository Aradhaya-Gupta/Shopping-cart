<%-- 
    Document   : Statistics
    Created on : Dec 2, 2016, 6:03:31 PM
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
        <h2>Statistics!</h2>
        <%
        Connection cn;
        PreparedStatement pstm, pstm1;
        ResultSet rs, rs1;
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select count(*) from Users");
        rs= pstm.executeQuery();
        if(rs.next()){
        out.println("<a href=Customers.jsp>Total Customers are "+rs.getInt(1)+" </a>");
        
        out.println("<br>");
        out.println("<br>");
        }
        pstm1=cn.prepareStatement("Select count(*) from Items");
        rs1=pstm1.executeQuery();
        if(rs1.next()){
        out.println("<a href=Products.jsp>Total Products are "+rs.getInt(1)+" </a>");
        }
        out.println("<br>");
         out.println("<br>");
        out.println("<a href=ItemSales.jsp>Items wise Sales Analysis</a>");
        
        out.println("<br>");
         out.println("<br>");
        out.println("<a href=LoadYear.jsp>Year wise Sales Analysis</a>");
        
        //pstm2=cn.prepareStatement("Select itemId, count(*), Sum(Price) from orderDetailswithItems group by itemId");
        //rs2=pstm2.executeQuery();
        //if(rs2.next()){
        
        //}
%>
        
    </body>
</html>
