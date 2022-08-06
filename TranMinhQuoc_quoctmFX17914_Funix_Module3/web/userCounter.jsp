<%-- 
    Document   : userCounter
    Created on : Jul 18, 2020, 6:51:52 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login_Process.loginProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <h3 style="color: red"> All logged-in users:</h3>
        User&ensp;/&ensp;Number of logins
        <br/>
        <%
            for (int i = 0; i < log.logged.size(); i++) {
                out.print(log.logged.get(i) + "&ensp;/&ensp;" + log.a[i] + "<br/>");
            }
        %>
    </body>

</html>
