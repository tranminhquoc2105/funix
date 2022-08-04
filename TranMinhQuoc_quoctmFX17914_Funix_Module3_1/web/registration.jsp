<%-- 
    Document   : registration
    Created on : Aug 2, 2022, 3:05:15 PM
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
        <h1>Registration Page</h1>
        <form action="RegistrationServlet" method="POST">
            Username:  <input type="text" name="txtUsername" value="" /> </br>
            Password: <input type="password" name="txtPassword" value="" /> </br>
            <input type="submit" value="OK" />
            </br>
        </form>
    </body>
</html>
