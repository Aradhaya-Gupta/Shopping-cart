<%-- 
    Document   : Customers
    Created on : Dec 2, 2016, 6:11:41 PM
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
        <h2>Customers List!</h2>
       <%
        Connection cn;
        PreparedStatement pstm, pstm1;
        ResultSet rs, rs1;
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select * from Users");
        rs= pstm.executeQuery();
        if(rs.next()){
            out.println("<table>");
            out.println("<tr><th>User Id</th><th>Password</th></tr>");
            do{
                 out.println("<tr>");
        out.println("<td>"+rs.getString(1)+" </td>");
        out.println("<td>"+rs.getString(2)+" </td>");
        out.println("</tr>");
               }while(rs.next());
 out.println("</table>");       
 }       
%>
    </body>
</html>
