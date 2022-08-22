<%-- 
    Document   : show
    Created on : Aug 20, 2022, 10:52:37 AM
    Author     : SE130297
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AddServlet" method="POST">
            Username: <input type="text" name="txtUsername" value="" /></br>
            Password: <input type="text" name="txtPassword" value="" /></br>
            <input type="submit" name="btAction" value="Create" />
        </form>

        <c:set var="student" value="${sessionScope.LISTSTUDENT}"/>
        <c:if test="${not empty student}">
            <c:forEach var="dto" items="${student}">
                ${dto.username} / ${dto.password} </br>
            </c:forEach>
        </c:if>
    </body>
</html>
