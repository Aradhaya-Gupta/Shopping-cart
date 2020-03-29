<%-- 
    Document   : ViewTrial
    Created on : Nov 30, 2016, 6:20:36 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String uid=request.getParameter("UserId");
        out.println(uid);
       int ono=Integer.parseInt(request.getParameter("ono"));
        out.println(ono);
                %>
    </body>
</html>
