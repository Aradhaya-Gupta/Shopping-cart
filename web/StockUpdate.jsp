<%-- 
    Document   : StockUpdate
    Created on : Dec 7, 2016, 4:22:45 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        function itemNameUpdate(){
           // alert("1");
            Itemid=document.getElementById("iid").value;
            //alert(Itemid);
            x= new XMLHttpRequest();
            x.open("GET", "ItemNamePage.jsp?ItemId="+Itemid, true);
            x.onreadystatechange=function(){
                result= x.responseText;
                //alert(result);
                document.getElementById("iName").value=result;
            }
            x.send();
        }
        </script>
    </head>
    <body><center>
        <h1>Update Stocks Page!</h1>
<form metod="GET" action="itemsStockUpdate.jsp">
            <table>
                <tr><td>Item Id</td><td><select onchange="itemNameUpdate()" id="iid" name="iid"><option>--</option><option>a1</option><option>b1</option><option>c1</option><option>d1</option><option>e1</option></select></td></tr>
                <tr><td>Item Name</td><td><input type="textbox" id="iName"/></td></tr>
                <tr><td>New Stock</td><td><input type="textbox" id="nStock" name="nStock"/></td></tr>
                <tr><td colspan="2"><input type="Submit" value="Update"/></td></tr>
            </table>
        </form>
        </center>
    </body>
</html>
