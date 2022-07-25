<%-- 
    Document   : newjsp
    Created on : Jul 25, 2022, 12:51:54 AM
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
        <h2>RegistrationController</h2>

        <%
            String errors = %> ${requestScope.CREATEERRORS};

        %>
        <form action="validationController" method="POST">
            Fullname: <input type="text" name="txtFullname" value="" /> </br>
            <font color="red">   if(errors != null){
            ${errors.userNameLengthErr};
            }</font> </br>

            Age: <input type="text" name="txtAge" value="" /></br>
            <font color="red">${errAge}</font> </br>

            Country: <select name="ddlCountry">
                <option>Vietnamese</option>
                <option>American</option>
                <option>English</option>
                <option>Chines</option>
                <option>French</option>
            </select> </br>
            Courses:
            </br>   
            <select name="soCourses" multiple="multiple">
                <option>C#</option>
                <option>JAVA</option>
                <option>c++</option>
                <option>Python</option>
                <option>Ruby on Rail</option>
            </select>

            </br>
            Language: 
            <input type="checkbox" name="chk_language" value="vietnamese" > Vietnamese </input>
            <input type="checkbox" name="chk_language" value="english" /> English </input>
            <input type="checkbox" name="chk_language" value="french" /> French </input>
            </br>


            <!--<font color="red">${errNull}</font>-->
            <input type="submit" value="OK" name="btnSubmit" />



        </form>
    </body>
</html>
