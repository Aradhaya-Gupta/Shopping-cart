<%-- 
    Document   : PlaceOrders
    Created on : Nov 28, 2016, 4:56:39 PM
    Author     : ict
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>
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
        <%
        String uid= session.getAttribute("uId")+"";
        out.println(uid);
        Date dt = new Date();
        int d, m, y;
        y= dt.getYear()+1900;
        m= dt.getMonth()+1;
        d= dt.getDate();
        String cd=y+"-"+m+"-"+d;
       
        Connection cn;
        PreparedStatement pstm, pstm1, pstm2, pstm3, pstm4;
        ResultSet rs, rs1;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Insert into UserOrders (OrderDate, UserId, OrderStatus) values (?,?,?) ");
        pstm.setString(1, cd);
        pstm.setString(2, uid);
        pstm.setString(3, "New");
        pstm.executeUpdate();
        
        out.println("values inserted to user order");
        
        pstm1= cn.prepareStatement("Select max(OrderNo) from UserOrders");
        rs= pstm1.executeQuery();
        rs.next();
        int ono=rs.getInt(1);
        rs.close();
        pstm2=cn.prepareStatement("Select * from UserCart where UserId=?");
        pstm2.setString(1, uid);
        rs1=pstm2.executeQuery();
        while(rs1.next())
        {
            
        
        String iid= rs1.getString(3);
        pstm3=cn.prepareStatement("Insert into UserOrderDetails values (?,?)");
        pstm3.setInt(1, ono);
        pstm3.setString(2, iid);
        pstm3.executeUpdate();
                }     
rs1.close();         
        out.println("Order added to UserOrderDetails");
               
        
        pstm4=cn.prepareStatement("Delete from UserCart where UserId=?");
        pstm4.setString(1, uid);
        pstm4.executeUpdate();
        out.println("order placed");
        
        
        
        %>
    </body>
</html>
