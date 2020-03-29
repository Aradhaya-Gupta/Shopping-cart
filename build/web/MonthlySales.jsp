<%-- 
    Document   : MonthlySales
    Created on : Dec 5, 2016, 5:24:26 PM
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
        <h2>Monthly Sales List!</h2>
        <form method="GET" action="Load.jsp" target="work">
        <table>
            <tr>
                <td>Year</td><td><select name="year">
                        <%
                        for(int i=2000; i<=2016; i++ ){
                        out.println("<option>"+i+"</option>");
                        }
                        
                        %>
                        </select></td>
                <td>Month</td><td><select name="month">
                        <%
                        for(int i=1; i<=12; i++ ){
                        out.println("<option>"+i+"</option>");
                        }
                        
                        %>
                        </select></td>
                <td><input type="Submit" value="Load"/></td>
               </tr>
        </table>
        <iframe id="work" style="width: 100px; height: 150px; border-style: hidden"></iframe>
    </form>
        </body>
</html>
