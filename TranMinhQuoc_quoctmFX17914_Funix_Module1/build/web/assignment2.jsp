<%-- 
    Document   : fibonacci
    Created on : Jul 13, 2022, 11:48:49 PM
    Author     : SE130297
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fibonacci</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
         <div class="container">
        <h2><a href="index.html">Trở về Trang chủ</a></h2>
        </br>
        <h1>Creates a page printing the Fibonacci sequence, which is smaller than 10946.</h1>
       
            <% int n1 = 0, n2 = 1, n3= 0, i, count = 10946;%>
           <%=n1%>  <%=n2%> 
            <%    for (i = 1; n3 < count; ++i) {%>
            <%
                n3 = n1 + n2;
                n1 = n2;
                n2 = n3;
              
            %>
            <%=n3%> 
            <%}
            %>
        </div> 
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
