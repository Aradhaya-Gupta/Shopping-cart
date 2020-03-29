<%-- 
    Document   : ViewNew
    Created on : Dec 5, 2016, 4:56:10 PM
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
        int ono= Integer.parseInt(request.getParameter("ono"));
        String status= request.getParameter("OrderStatus");
       
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        pstm= cn.prepareStatement("Select* from OrderDetailswithItems where OrderNo=?");
        pstm.setInt(1, ono);
        rs=pstm.executeQuery();
        if(rs.next()){
        out.println("<table>");
out.println("<tr><th>Item Id</th><th>Item Name</th><th>Price</th><th>Photograph</th></tr>");
do{
    String pic=rs.getString(6);
    out.println("<tr>");
    out.println("<td>"+rs.getString(2) +"</td>");
    out.println("<td>"+rs.getString(3) +"</td>");
    out.println("<td>"+rs.getString(4) +"</td>");
    out.println("<td><img src="+pic+" style:'width=60px; height=80px'></td>");
    out.println("</tr>");
}while(rs.next());
    out.println("</table>");
       }
     //out.println(status);
      if(status.equals("New")){
    out.println("<a href=Dispatch.jsp?ono="+ono+">Dispatch</a>");
           }
                     else if(status.equals("Dispatch")){
              out.println("Order Already Dispatched");
              }
               else{
               out.println("Cancelled Order");
               }
        
        %>
    </body>
</html>
