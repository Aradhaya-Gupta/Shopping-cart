<%-- 
    Document   : UserOrders
    Created on : Nov 19, 2016, 5:31:34 PM
    Author     : ict
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>
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
Date dt= new Date();
int d, m, y;
d= dt.getDate();
m=dt.getMonth()+1;
y=dt.getYear()+1900;
String orderDate=y+"-"+m+"-"+d;
out.println(orderDate);
Connection cn;
PreparedStatement pstm;
Class.forName("com.mysql.jdbc.Driver");
cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
pstm=cn.prepareStatement("Insert into UserOrders (OrderDate, UserID) values (?,?)");
pstm.setString(1, orderDate);
pstm.setString(2, uid);
pstm.executeUpdate();


%>
    </body>
</html>
