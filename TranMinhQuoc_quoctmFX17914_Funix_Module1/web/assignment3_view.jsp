<%-- 
    Document   : view
    Created on : Jul 14, 2022, 3:12:55 PM
    Author     : SE130297
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment3 View</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
    <body>
        
        <h1>Assignment3 View</h1>
        <div class="container-fluid">
            <ul>
                <li>${fullname}</li>
                <li>${phoneNumber} </li>      
                <li>${email}</li>
                <li>Các ngôn ngữ đã chọn
                    <ol> ${chkLanguage1}</ol>
                    <ol>${chkLanguage2}</ol>
                    <ol>${chkLanguage3}</ol>
                </li>
            </ul>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    </body>








</html>
