<%-- 
    Document   : registration
    Created on : Jul 14, 2022, 2:16:37 PM
    Author     : SE130297
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Registration</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Subject Registration!</h1>
            <form action="registrationController" method="POST">
                Name:  <input type="text" name="txtName" value="" class="form-control"/> </br>
                Surname:  <input type="text" name="txtSurname" value="" class="form-control"/> </br>
                PhoneNumber:  <input type="text" name="txtPhoneNumber:" value="" class="form-control"/> </br>
                Email: <input type="text" name="txtEmail" value="" class="form-control" /> </br>
                <input type="checkbox" name="chkLanguage1" value="java" class="form-check-label"> Java </br>
                <input type="checkbox" name="chkLanguage2" value="reactjs" class="form-check-label"> ReactJS </br>
                <input type="checkbox" name="chkLanguage3" value="flutter" class="form-check-label"> Flutter </br>
                <input type="submit" value="OK" name="btnOk"  class="button"/> 
            </form>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>
</html>
