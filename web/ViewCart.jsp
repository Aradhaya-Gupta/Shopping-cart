<%-- 
    Document   : ViewCart
    Created on : Nov 19, 2016, 6:00:47 PM
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
        <script>
            function RemoveFromCart(iid,i){
                x= new XMLHttpRequest();
                //alert("1");
                c=document.getElementById("c"+i);
                c.disabled=true;
                x.open("GET","RemoveCart.jsp?ItemId="+iid, true);
                alert("2");
                x.onreadystatechange=function(){
                    alert("3");
                    res=x.responseText;
                    document.getElementById("result"+i).innerHTML=res;
                };
                x.send();
                
                
            }
        </script>
        <style>
            table.one{
                border: 1;
                border-style: solid;
                width: 400px;
                height: 200px;
            }
            
        </style>
    </head>
    <body>
        <%
        String uid= session.getAttribute("uId")+"";
        Connection cn;
        PreparedStatement pstm;
        ResultSet rs;
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root","");
        pstm= cn.prepareStatement("select * from CartWithItems where UserId=?");
        pstm.setString(1, uid);
        rs=pstm.executeQuery();
        if(rs.next()){
           
            out.println("<form action=PlaceOrders.jsp>");
        out.println("<table class='one'>");
       
        int i=1;
        do{
             String iid=rs.getString(3);
             String pic= rs.getString(7);
        out.println("<tr>");
        //out.println("<td>"+rs.getString(3)+"</td>");
        //out.println("<td>"+rs.getString(4)+"</td>");
        //out.println("<td>"+rs.getString(5)+"</td>");
        //out.println("<td>"+rs.getString(6)+"</td>");
        out.println("<td><img src="+pic+" style='width:80px; height:60px' >");
        //out.println("</tr>");
        out.println("<table><tr><td>"+rs.getString(4)+"(Rs."+rs.getString(5)+")</td></tr>");
        out.println("<tr><td colspan=2><input type=checkbox id=c"+i+" onchange=RemoveFromCart('"+iid+"',"+i+")>Remove From Cart</td></tr>");
        out.println("<tr><td colspan=2 id=result"+i+">&nbsp</td></tr>");
        out.println("</table>");
        out.println("</td>");
        
        if(rs.next()){
         i++;
         iid=rs.getString(3);
              pic= rs.getString(7);
          out.println("<td><img src="+pic+" style='width:80px; height:60px'>");
        
        out.println("<table><tr><td>"+rs.getString(4)+"(Rs."+rs.getString(5)+")</td></tr>");
        out.println("<tr><td colspan=2><input type=checkbox id=c"+i+" onchange=RemoveFromCart('"+iid+"',"+i+")>Remove From Cart</td></tr>");
        out.println("<tr><td colspan=2 id=result"+i+">&nbsp</td></tr>");
        out.println("</table>");
        out.println("</td>");
        out.println("</tr>");
        }
        }while(rs.next());
        out.println("<tr><td colspan=2><center><input type= Submit value='Place Order'></center></td></tr>");
       out.println("</table>");
       out.println("</form>");
        }
        else
            out.println("Nothing to show in cart");
        
        %>
    </body>
</html>
