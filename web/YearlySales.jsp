<%-- 
    Document   : YearlySales
    Created on : Dec 8, 2016, 4:35:08 PM
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
        String year=request.getParameter("year");
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select monthName(OrderDate), count(*), Sum(Price) from orderwithorderdetailswithitems where year(orderDate)=? group by month(orderDate)");
        pstm.setString(1, year);
        rs= pstm.executeQuery();
        if(rs.next()){
        out.println("<table>");
        out.println("<tr><th>Month</th><th>Items sold</th><th>Amount</th></tr>");
        do{
        out.println("<tr>");
        out.println("<td>"+rs.getString(1) +"</td>");
        out.println("<td>"+rs.getInt(2) +"</td>");
        out.println("<td>"+rs.getInt(3) +"</td>");
        out.println("</tr>");
        }while(rs.next());
        out.println("</table>");
        }
        else
            out.println("No data exists");
                %>
                
    </body>
</html>
