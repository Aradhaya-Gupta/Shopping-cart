<%-- 
    Document   : View
    Created on : Nov 29, 2016, 5:34:30 PM
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
        <style>
            img{
                width: 60px;
                height:80px;
                border-style: groove;
                border-color: red;
            }
        </style>
    </head>
    <body>
        <h1>New Order list</h1>
        
        <%
        int ono= Integer.parseInt(request.getParameter("ono"));
         //String uid= request.getParameter("UserId");
         //out.println(uid);
   Connection cn;
   PreparedStatement pstm, pstm1;
   ResultSet rs, rs1;
   
   Class.forName("com.mysql.jdbc.Driver");
   cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "");
   pstm= cn.prepareStatement("Select * from UserOrderDetails where OrderNo=?");
   pstm.setInt(1, ono);
   rs= pstm.executeQuery();
  
   
   if(rs.next()){
      
   out.println("<table>");
   out.println("<tr><th>Item Id</th><th>Photograph</th></tr>");
   do{
        String iid=rs.getString(2);
         pstm1=cn.prepareStatement("Select * from Items where ItemId=?");
        pstm1.setString(1, iid);
        rs1= pstm1.executeQuery();
     
      out.println("<tr style='width:100px; height:100px'>");
      //out.println("<td>"+rs.getInt(1)+"</td>");
      out.println("<td>"+iid+"</td>");
    
     if(rs1.next()){
     String pic= rs1.getString(5);
     out.println("<td><img src="+pic+"></td>");
     }
      
        out.println("</tr>");
         
   }while(rs.next());
    out.println("<tr>");
      out.println("<td colspan=2><a href=Dispatch.jsp?ono="+ono+">Dispatch</a></td>");
      
      
         out.println("</tr>");
      out.println("<table>");
   }
   else
       out.println("No new orders to view");
   
        %>
    </body>
</html>
