<%-- 
    Document   : header
    Created on : Jul 18, 2020, 9:08:43 PM
    Author     : USER
--%>

<%@page import="login_Process.count"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Welcome</title>

        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
        <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/stylish-portfolio.min.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <jsp:useBean id="countnum" class="login_Process.count" scope="application"></jsp:useBean>
        <% String content;
             if(countnum.getCountnumber() == 0){
                 content = "Welcome to My Website !!!";
 
             }else content = "Welcome back My Website !!!";
        %>
        <!-- Header -->
        <header class="masthead d-flex">
            <div class="container text-center my-auto">
                <br/> <br/> <br/><br/> <br/> <br/>
                <h1 class="mb-1"><%= content %></h1>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="login.jsp">Log in now</a>
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="signup.jsp">Create a new account</a>
            </div>
                 <jsp:setProperty name="countnum" property="countnumber" value="1"></jsp:setProperty>
            <div class="overlay"></div>
        </header>
    </body>

</html>

