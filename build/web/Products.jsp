<%-- 
    Document   : Products
    Created on : Dec 2, 2016, 6:24:24 PM
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
     Connection cn;
        PreparedStatement pstm, pstm1;
        ResultSet rs, rs1;
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select * from Items");
        rs= pstm.executeQuery();
        if(rs.next()){
            out.println("<table>");
            out.println("<tr><th>Item Id</th><th>Item Name</th><th>Price</th><th>Stock</th><th>Photograph</th></tr>");
            do{
                 out.println("<tr>");
                 String pic=rs.getString(5);
        out.println("<td>"+rs.getString(1)+" </td>");
        out.println("<td>"+rs.getString(2)+" </td>");
        out.println("<td>"+rs.getString(3)+" </td>");
        out.println("<td>"+rs.getString(4)+" </td>");
        out.println("<td><img src="+pic+" style:'width=60px; height=80px'> </td>");
        out.println("</tr>");
               }while(rs.next());
 out.println("</table>");       
 }       
 %>
    </body>
</html>
