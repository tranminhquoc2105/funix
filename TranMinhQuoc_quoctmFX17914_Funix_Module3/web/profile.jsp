<%-- 
    Document   : profile
    Created on : Jul 18, 2020, 6:51:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login_Process.MapClass"%>
<%@page import="login_Process.loginProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>

        <% Object user = session.getAttribute("user");

            if (user == null) {
                response.sendRedirect("login.jsp");
            };
        %>
        <%
            loginProcess log = new loginProcess();
            if (log.nn != 1) {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
        %>
        Username:&ensp; <%= session.getAttribute("user")%>
        <br/>
        Password:&ensp; <%= session.getAttribute("password")%>
    </body>
</html>
