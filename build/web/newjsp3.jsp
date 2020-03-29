<%-- 
    Document   : newjsp3
    Created on : Dec 8, 2016, 6:32:46 PM
    Author     : ict
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var a=1
            function aa()
            {
                if(a==1)
                    {
                    document.getElementById("one").innerHTML="";
                    a=2;
                    }
                    else
                        {
                            
                    document.getElementById("one").innerHTML="Hello World";
                    a=1;
                        }
                
                setTimeout("aa()",500);
            }
        </script>
        
    </head>
    <body onload="aa()">
        <h1 id="one" style="text-decoration: blink">Hello World!</h1>
    </body>
</html>
