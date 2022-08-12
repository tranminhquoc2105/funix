<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Grayscale - Start Bootstrap Theme</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/grayscale.min.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <!-- Header -->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <%
                        if (request.getAttribute("message") == null) {
                        } else {%>
                    <h3 style="color: red"><% out.print(request.getAttribute("message")); %></h3>
                    <%}%>
                    <form action="Controller" method="post">
                        <table>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td> <input type="text" name="email"/></td>
                            </tr>
                            <td> 
                                Password
                            </td><td>  
                                <input type="password" name="password"/>
                            <td> 
                        </table>
                        <input style="width: 150px; height: 50px; margin-top: 20px;" type="submit" value="Sign in"/>
                    </form>
                    <span><h2>Email: quoctmse130297@fpt.edu.vn</h2></span>
                    <span><h2>Password: quoc.tran@123</h2></span>
                </div>
            </div>
        </header>


        <!-- Footer -->
        <footer class="bg-black small text-center text-white-50">
            <div class="container">

            </div>
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/grayscale.min.js"></script>
    </body>
</html>
