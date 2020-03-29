<%-- 
    Document   : LoginCheck
    Created on : Nov 17, 2016, 5:55:36 PM
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
        String uid, pass;
        uid= request.getParameter("uId");
        pass= request.getParameter("pas");
        //out.println("uid is:"+uid);
        //out.println("pass is"+ pass);
        
        Connection cn;
        PreparedStatement pstm;
         ResultSet rs;
          Class.forName("com.mysql.jdbc.Driver");
          cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
          pstm=cn.prepareStatement("select * from users where userid=? and password=?");
          pstm.setString(1, uid);
          pstm.setString(2, pass);
          rs= pstm.executeQuery();
          if (rs.next()){
          session.setAttribute("uId", uid);
          session.setAttribute("pass", pass);
          response.sendRedirect("ShoppingMain.jsp");
          
                   }
                   else{
              out.println("Invalid userid or password");
                       }
          
        
        %>
    </body>
</html>
