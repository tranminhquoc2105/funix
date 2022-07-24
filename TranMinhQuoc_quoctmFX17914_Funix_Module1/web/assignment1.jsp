<%-- 
    Document   : oddPage
    Created on : Jul 13, 2022, 9:08:55 PM
    Author     : SE130297
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Odd number Page</title>
    </head>
    <h2><a href="index.html">Trở về Trang chủ</a></h2>
    </br>
        <h1>Create a page named printOdd (a servlet or jsp) to print all odd numbers from 1 to 500. For odd numbers which are divisible by 5, fill in RED and BOLD.</h1>
        <!--<h2>${result}</h2>-->
        <% for (int i = 1; i <= 500; i++) {
            if(i % 2 == 0){
                if(i % 5 == 0){%>
                <b><font color="red"><%=i%></font></b>
                <%}
                else{%>
                    <%=i%>
                <%}
            }
        }%>  
</html>
