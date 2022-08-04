<%-- 
    Document   : login.jsp
    Created on : Aug 1, 2022, 5:00:03 PM
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
        <h1>Trang đăng nhập</h1>
        <form action="LoginServlet" method="POST">
            Username:  <input type="text" name="txtUsername" value="" /> </br>
            Password: <input type="password" name="txtPassword" value="" /> </br>
            <font color="red">${messErr}</font> </br>
            <input type="submit" value="OK" />
            </br>           
        </form>
            
            <a href="registration.jsp">Trang đăng kí tài khoản</a>
    </body>
</html>
