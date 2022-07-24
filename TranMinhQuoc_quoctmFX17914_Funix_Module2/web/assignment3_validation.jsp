<%-- 
    Document   : assignment2_welcome
    Created on : Jul 19, 2022, 10:45:06 PM
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
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("assignment2_login.jsp");
            }
        %>
        <h1>Welcome, ${username}!!</h1>
          <a href="assignment3_CourseForm.jsp">CouseForm Page</a>
      
    </body>
</html>
