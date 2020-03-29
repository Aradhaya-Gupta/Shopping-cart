<%-- 
    Document   : NewOrders
    Created on : Nov 29, 2016, 5:29:58 PM
    Author     : ict
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>User Order List!</h2>
        <%-- <table>
            <tr><td>Click here for New Orders ---></td><td><a href="View.jsp">View</a></td></tr>
            <tr><td>Click here for Dispatch Orders ---></td><td><a href="Dispatch.jsp">Dispatch</a></td></tr>
        </table>--%>
    
        <%
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("Select * from UserOrders");
        rs= pstm.executeQuery();
        
        if(rs.next()){
            out.println("<table>");
          out.println("<tr><th>Order No</th><th>Order Date</th><th>User Id</th></tr>");
          
          do{
             // String status=rs.getString(4);
          out.println("<tr>");
          int ono=rs.getInt(1);
          String uid=rs.getString(3);
          String status=rs.getString(4);
        out.println("<td>"+ono+"</td>");
        out.println("<td>"+rs.getString(2)+"</td>");
        out.println("<td>"+uid+"</td>");
        out.println("<td><a href=ViewNew.jsp?ono="+ono+"&OrderStatus="+status+"> View Order Detail</a></td>");
        
                
        
        if(status.equals("New"))
            //out.println("<td>"+status+"</td>");
        out.println("<td><a href=Dispatch.jsp?ono="+ono+"&OrderStatus="+status+">Dispatch</a></td>");
else
    out.println("<td>Nothing</td>");
                          //}
        out.println("</tr>");
               }while(rs.next());
        
        out.println("</table>");
               }
        else
            out.println("Empty Order List");
        %>
    </body>
</html>
