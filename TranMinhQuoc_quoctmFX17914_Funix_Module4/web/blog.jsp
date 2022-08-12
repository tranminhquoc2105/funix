<%-- 
    Document   : blog.jsp
    Created on : Aug 12, 2022, 11:10:39 AM
    Author     : SE130297
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>

        <h5> 
            <font color ="red">Welcome,</font>
            <strong>${sessionScope.FULLNAME}</strong>
        </h5>
        <form action="DispatchController">
            <input type="submit" value="Logout" name="btAction" />
            <input type="submit" value="View" name="btAction" />
        </form><br/>

        <c:set var="listBlog" value="${requestScope.LISTBLOG}"/>
        <c:if test="${not empty listBlog}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Title</th>
                        <th>Price</th>

                        <th>Price</th>
                        <th>Price</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${listBlog}" varStatus="counter">
                        <tr>
                            <td>
                                ${counter.count}.   
                            </td>
                            <td>
                                ${dto.ID}
                            </td>
                            <td>
                                ${dto.title}
                            </td>
                            <td>
                                ${dto.summary}
                            </td>
                            <td>
                                ${dto.content}
                            </td>
                            <td>
                                ${dto.time}
                            </td>
                            <td>
                                ${dto.author}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty listBlog}">
            <h2>There is no book!</h2>
        </c:if>
    </body>
</html>
