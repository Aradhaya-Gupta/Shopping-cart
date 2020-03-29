<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String itemId=request.getParameter("ItemId");
       // out.println(itemId);
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm=cn.prepareStatement("Select ItemName from Items where ItemId=?");
        pstm.setString(1, itemId);
        rs=pstm.executeQuery();
        //out.println("result");
        rs.next();
                       out.println(rs.getString(1));
        
        %>    