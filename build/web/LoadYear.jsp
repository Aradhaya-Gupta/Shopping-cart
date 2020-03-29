<%-- 
    Document   : LoadYear
    Created on : Dec 8, 2016, 4:47:21 PM
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
        <h3>Year-wise Sales Analysis</h3>
        <form method="GET" action="YearlySales.jsp">
        <br><br>Enter Year   <select name="year">
            <%
            for(int i=2000; i<=2016; i++){
            out.println("<option>"+i+"</option>");
            }
            
            %>
        </select>
        <br><br>
        <input type="Submit" value="Load"/>
        </form>
    </body>
</html>
