<%-- 
    Document   : index
    Created on : Jul 18, 2020, 6:45:32 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="loginProcess" method="post">
            <input type="hidden" name="action" value="1">
            Username: <input type="text" name="user"><br/>
            Password: <input type="password" name="password">
            <br/>
            <input type="submit" value="Log in now">
        </form>   
        <form action="signup.jsp" method="post">
            <input type="submit" value="Create a new account">
        </form>   
        <br/>
        <b>Default User: system, Pass: java</b>
    </body>
</html>
