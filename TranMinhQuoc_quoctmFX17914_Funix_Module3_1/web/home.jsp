<%-- 
    Document   : home
    Created on : Aug 1, 2022, 5:06:01 PM
    Author     : SE130297
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <% 
            if(session.getAttribute("USERNAME") == null){
                response.sendRedirect("login.jsp");
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
