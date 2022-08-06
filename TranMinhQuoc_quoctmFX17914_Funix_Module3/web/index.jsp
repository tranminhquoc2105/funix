<%-- 
    Document   : index
    Created on : Jul 18, 2020, 6:50:58 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <%            String action = request.getParameter("action");
            if (action == null) {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
        %>
        <h1>welcome ${sessionScope.user}</h1>
        <a href="profile.jsp"><h4>Click here to open Profile</h4></a>
        <br/>
        <a href="userCounter.jsp"><h4>Click here to open UserCounter</h4></a>
        <a href="logout">logout</a>
    </body>
</html>
