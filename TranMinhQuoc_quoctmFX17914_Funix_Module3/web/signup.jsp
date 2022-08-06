<%-- 
    Document   : signup
    Created on : Jul 18, 2020, 9:16:14 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
    </head>
    <body>
        <body>
        <form action="loginProcess" method="post">
            <input type="hidden" name="action" value="2">
            Username<input type="text" name="users">
            Password<input type="password" name="passwords">
            <input type="submit" value="Register now">
        </form>
        <a href="login.jsp" >Click here to come Login page</a>
    </body>
    </body>
</html>
