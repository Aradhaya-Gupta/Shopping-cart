<%-- 
    Document   : Load
    Created on : Dec 5, 2016, 5:33:34 PM
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
        int month=Integer.parseInt(request.getParameter("month"));
        int year=Integer.parseInt(request.getParameter("year"));
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm=cn.prepareStatement("Select * from UserOrders where month(OrderDate)=? and year(OrderDate)=?");
        pstm.setInt(1,month);
        pstm.setInt(2,year);
        rs=pstm.executeQuery();
        
        if(rs.next()){
        out.println("<table>");
        out.println("<tr><th>Order No</th><th>Order Date</th><th>User Id</th><th>Order Status</th></tr>");
        do{
            int ono=rs.getInt(1);
        out.println("<tr>");
        out.println("<td>"+ono+"</td>");
        out.println("<td>"+rs.getString(2)+"</td>");
        out.println("<td>"+rs.getString(3)+"</td>");
        out.println("<td>"+rs.getString(4)+"</td>");
        
        out.println("<td><a href=ViewCustomerOrder2.jsp?OrderNo="+ono+">View</a></td>");
        out.println("</tr>");
        }while(rs.next());
        
        out.println("</table>");
        }
        
        %>
    </body>
</html>
