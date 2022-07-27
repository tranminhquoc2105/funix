<%-- 
    Document   : newjsp
    Created on : Jul 25, 2022, 12:51:54 AM
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
        <h2>RegistrationController</h2>

        <form action="validationController" method="POST">
            <c:set var="errors" value="${requestScope.CREATEERRORS}"/>

            Fullname: <input type="text" name="txtFullname" value="${param.txtFullname}" /> </br>
            <c:if test="${not empty errors.userNameNullErr}">
                <font color="red">${errors.userNameNullErr}</font> </br>
            </c:if>
            <c:if test="${not empty errors.userNameCharErr}">
                <font color="red">${errors.userNameCharErr}</font> </br>
            </c:if>

                Age: <input type="number" name="txtAge" value="${param.txtAge}" /></br>
            <c:if test="${not empty errors.ageNullErr}">
                <font color="red">${errors.ageNullErr}</font> </br>
            </c:if>
            <c:if test="${not empty errors.ageNullErr}">
                <font color="red">${errors.ageCharErr}</font> </br>
            </c:if>
            <c:if test="${not empty errors.ageRangeErr}">
                <font color="red">${errors.ageRangeErr}</font> </br>
            </c:if>

            Country: <select name="ddlCountry">
                <option>Vietnamese</option>
                <option>American</option>
                <option>English</option>
                <option>Chines</option>
                <option>French</option>
            </select> </br>
            <c:if test="${not empty errors.countryNullErr}">
                <font color="red">${errors.countryNullErr}</font> </br>
            </c:if>

            Courses:
            </br>   
            <select name="soCourses" multiple>
                <option>C#</option>
                <option>JAVA</option>
                <option>c++</option>
                <option>Python</option>
                <option>Ruby on Rail</option>
            </select>
            </br>
            <c:if test="${not empty errors.courseNullErr}">
                <font color="red">${errors.courseNullErr}</font> </br>
            </c:if>

            Language: 
            <input type="checkbox" name="chk_language" value="vietnamese" > Vietnamese </input>
            <input type="checkbox" name="chk_language" value="english" /> English </input>
            <input type="checkbox" name="chk_language" value="french" /> French </input>
            </br>
            <c:if test="${not empty errors.languageNullErr}">
                <font color="red">${errors.languageNullErr}</font> </br>
            </c:if>

            <!--<font color="red">${errNull}</font>-->
            <input type="submit" value="OK" name="btnSubmit" />
        </form>
    </body>
</html>
