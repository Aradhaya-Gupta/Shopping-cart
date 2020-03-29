<%-- 
    Document   : MyAccount
    Created on : Dec 1, 2016, 5:41:28 PM
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
String uid= session.getAttribute("uId")+"";
out.println(uid);
        Connection cn;
    PreparedStatement pstm;
      ResultSet rs;
      
Class.forName("com.mysql.jdbc.Driver");
cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
pstm=cn.prepareStatement("Select * from UserOrders where UserId=?");
pstm.setString(1, uid);
rs=pstm.executeQuery();

if(rs.next()){
out.println("<table>");
out.println("<tr><th>OrderNo</th><th>Order Date</th><th>Order Status</th></tr>");
do{
    int ono=rs.getInt(1);
    String status=rs.getString(4);
out.println("<tr>");
out.println("<td>"+ono+" </td>");
out.println("<td>"+rs.getString(2)+" </td>");
out.println("<td>"+status+" </td>");

out.println("<td><a href=ViewCustomerOrder.jsp?OrderNo="+ono+"&OrderStatus="+status+">View Orders</td>");

out.println("</tr>");
}while(rs.next());
out.println("<table>");
}
else
    out.println("Empty Account");
%>
        
    </body>
</html>
