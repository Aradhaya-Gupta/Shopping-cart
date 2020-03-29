<%-- 
    Document   : Shopping
    Created on : Nov 17, 2016, 6:09:38 PM
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
        <title>Shopping Page</title>
         <script>
            function addToCart(iid,i)
            {
               
               //alert(iid+" "+i);
               c=document.getElementById("c"+i);
               c.disabled=true;
                x= new XMLHttpRequest();
                x.open("GET", "Cart.jsp?ItemID="+iid , true);
                // alert(iid);
                x.onreadystatechange=function()
                {
                    if(x.readyState==4)
                        {
                    res=x.responseText;        
                    //alert(res);
                    document.getElementById("result"+i).innerhtml=res;
                        }
                }
                x.send();
                
                
            }
            function removeFromCart(iid,i){
                x= new XMLHttpRequest();
                c=document.getElementById("c"+i);
                //alert("one");
               c.disabled=true;
                x.open("GET", "RemoveCart.jsp?ItemID="+iid, true);
                x.onreadystatechange=function(){
                    
                        if(x.readyState==4)
                        {
                        
                    res=x.responseText;
                    //alert(res);
                    document.getElementById("result"+i).innerhtml=res;
                        }
                }
                x.send();
            }
        </script>
        
        <style>
            img{
                border: blue; border-style: ridge; 
            }
            h5{
                color: black;
                text-align: inherit;
                text-decoration: blink;
                
            }
            input[type=checkbox]:checked+label:before
            {
                border-color: blueviolet;
                background:blue;
                
            }
        </style>
       
    </head>
    <body>
        <%
        String uid=session.getAttribute("uId")+"";
        //out.println(uid);
        Connection cn;
        PreparedStatement pstm, pstm1;
        ResultSet rs, rs1;
        Class.forName("com.mysql.jdbc.Driver");
        cn= DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","");
        pstm= cn.prepareStatement("Select * from Items");
        rs= pstm.executeQuery();
        if(rs.next())
        {
            int i=1;
            out.println("<table border=1 style='width:100%'>");
        do{
            
            String iid=rs.getString(1);
            String pic=rs.getString(5);
        out.println("<tr><td><img src="+pic+" width=150 height=120 >");
         out.println("<table><tr><td>Price:"+rs.getInt(3)+"</td>");
         pstm1= cn.prepareStatement("select * from UserCart where ItemId=? and userid=?");
         pstm1.setString(1, iid);
         pstm1.setString(2, uid);
         rs1= pstm1.executeQuery();
         if(rs1.next())
            out.println("<td><input type= checkbox id=c"+i+" onchange=removeFromCart('"+iid+"',"+i+")>Remove from cart</td></tr>");
         else
            out.println("<td><input type=checkbox id=c"+i+" onchange=addToCart('"+iid+"',"+i+") >Add to cart</td></tr>");

         out.println("<tr><td colspan=2 id=result"+i+">&nbsp </td></tr></table><br>");
         //out.println("<tr><td colspan=2><input type=textbox id=result"+i+"/>&nbsp </td></tr></table><br>");
         out.println("</td>");
         
         
         if(rs.next())
         {
             i++;
            iid=rs.getString(1);
            pic=rs.getString(5);
        out.println("<td><img src="+pic+" width=150 height=120 >");
         out.println("<table><tr><td>Price:"+rs.getInt(3)+"</td>");
         pstm1= cn.prepareStatement("select * from UserCart where ItemId=? and userid=?");
         pstm1.setString(1, iid);
         pstm1.setString(2, uid);
         rs1= pstm1.executeQuery();
         if(rs1.next())
            out.println("<td><input type= checkbox id=c"+i+" onchange=removeFromCart('"+iid+"',"+i+")>Remove from cart</td></tr>");
         else
            out.println("<td><input type=checkbox id=c"+i+" onchange=addToCart('"+iid+"',"+i+") >Add to cart</td></tr>");

         out.println("<tr><td colspan=2 id=result"+i+">&nbsp </td></tr></table><br>");
         //out.println("<tr><td colspan=2><input type=textbox id=result"+i+"/>&nbsp </td></tr></table><br>");
         out.println("</td>");
         }
         out.println("</tr>");
         
         i++;        
        }while(rs.next());

            out.println("</table>");
               }
        else
            out.println("Sorry!!! All items out of stock");
        
        %>
        
          
         <%--
        <img src="1.jpg" style="width: 100px; height: 200px"></img><h5>Price:100 INR<br><input type="checkbox" name="c1">Add to cart</h5>
        <img src="2.jpg" style="width: 100px; height: 200px"></img><h5>Price:200 INR<br><input type="checkbox" name="c2">Add to cart</h5>
        <img src="3.jpg" style="width: 100px; height: 200px"></img><h5>Price:300 INR<br><input type="checkbox" name="c3">Add to cart</h5>
        <img src="4.jpg" style="width: 100px; height: 200px"></img><h5>Price:400 INR<br><input type="checkbox" name="c4">Add to cart</h5>
        <img src="6.jpg" style="width: 100px; height: 200px"></img><h5>Price:500 INR<br><input type="checkbox" name="c5">Add to cart</h5>
        <img src="7.jpg" style="width: 100px; height: 200px"></img><h5>Price:600 INR<br><input type="checkbox" name="c6">Add to cart</h5>
        --%>
    </body>
</html>
