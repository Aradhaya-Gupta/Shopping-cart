<%-- 
    Document   : ItemSales
    Created on : Dec 6, 2016, 6:08:21 PM
    Author     : ict
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
Connection cn;
PreparedStatement pstm;
ResultSet rs;

Class.forName("com.mysql.jdbc.Driver")  ;
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");
pstm=cn.prepareStatement("Select itemId, ItemName, count(*), Sum(Price),Stock, Photograph from orderDetailswithItems group by itemId");
rs=pstm.executeQuery();
        if(rs.next()){
        out.println("<table>");
        out.println("<tr><th>Item Id</th><th>Item Name</th><th>Items Sold</th><th>Price</th><th>Stock</th><th>Photograph</th></tr>");
        do{
            String pic=rs.getString(6);
        out.println("<tr>");
        out.println("<td>"+rs.getString(1)+"</td>");
        out.println("<td>"+rs.getString(2)+"</td>");
        out.println("<td>"+rs.getInt(3)+"</td>");
        out.println("<td>"+rs.getInt(4)+"</td>");
        out.println("<td>"+rs.getInt(5)+"</td>");
        out.println("<td><img src="+pic+" style='width: 60px; height:80px'></img></td>");
        out.println("</tr>");
        }while(rs.next());
        out.println("</table>");
        }
        
        %>
    </body>
</html>
