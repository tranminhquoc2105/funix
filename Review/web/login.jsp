<%-- 
    Document   : login
    Created on : Aug 20, 2022, 10:08:21 AM
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
        <form action="Login" method="POST">
            Username: <input type="text" name="txtUsername" value="" /></br>
            Password: <input type="text" name="txtPassword" value="" /></br>
            ${ERROR}</br>
            <input type="submit" name="btAction" value="Login" />

        </form>
    </body>
</html>
