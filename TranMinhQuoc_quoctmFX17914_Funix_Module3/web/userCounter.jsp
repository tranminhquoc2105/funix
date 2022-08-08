<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="login_Process.loginProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User counter Page</title>
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

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
        <div class="container">
            <h3 style="color: red"> All logged-in users:</h3>
            User&ensp;/&ensp;Number of logins
            <br/>
            <%
                for (int i = 0; i < log.logged.size(); i++) {
                    out.print(log.logged.get(i) + "&ensp;/&ensp;" + log.a[i] + "<br/>");
                }
            %>
        </div>
    </body>

</html>
