<%-- 
    Document   : Dispatch
    Created on : Nov 29, 2016, 5:35:00 PM
    Author     : ict
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
        <h1>Dispatched Orders</h1>
        <%
        //String uid=request.getParameter("UserId");
       // out.println(uid);
        int ono= Integer.parseInt(request.getParameter("ono"));
        String status= request.getParameter("OrderStatus");
        
        Connection cn;
        PreparedStatement pstm, pstm1, pstm2;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm=cn.prepareStatement("Update UserOrders set OrderStatus='Dispatch' where OrderNo=?");
        pstm.setInt(1, ono);
        pstm.executeUpdate();
        pstm1=cn.prepareStatement("Select * from UserOrderDetails where OrderNo=?");
        pstm1.setInt(1, ono);
        rs=pstm1.executeQuery();
        if(rs.next()){
        out.println("<table>");
        out.println("<tr><th>Order No</th><th>Item Id</th></tr>");
        do{
            String iid= rs.getString(2);
        out.println("<tr>");
        out.println("<td>"+rs.getInt(1)+"</td>");
        out.println("<td>"+iid+"</td>");
        out.println("</tr>");
        pstm2=cn.prepareStatement("Update Items set Stock=Stock-1 where ItemId=?");
        pstm2.setString(1, iid);
        pstm2.executeUpdate();
        }while(rs.next());
        out.println("</table>");
        }
        
        out.println("Order dispatched");
        %>
    </body>
</html>
