<%-- 
    Document   : assignment2_login
    Created on : Jul 19, 2022, 10:44:55 PM
    Author     : SE130297
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment 3 - Login</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="loginController" method="POST">
            Username:  <input type="text" name="txtUsername" value="" /> </br>
            Password: <input type="password" name="txtPassword" value="" /> </br>
            
            <font color="red">${messErr}</font> </br>
            
            <input type="submit" value="OK" />
        </form> 
    </body>
</html>
