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
        <header class="masthead" style="height: auto; padding-top: 80px">
            <div class="container d-flex h-100 align-items-center">
                <div  style="margin-left: 20%">
                    <center><h2 style="color: white"><% if (request.getAttribute("mess") != null) {
                            out.print(request.getAttribute("mess"));
                        }%></h2></center>
                    <form action="ControllerSend" method="post">
                        <h3>TO</h3>
                        <textarea style="width: 800px;height: 30px" name="to"></textarea>
                        <h3>CC</h3>
                        <textarea style="width: 800px;height: 30px" name="cc"></textarea>
                        <h3>Title</h3>
                        <textarea style="width: 800px;height: 30px" name="title"></textarea>
                        <h3>Content</h3>
                        <textarea style="width: 800px; height:300px;" name="content"></textarea>
                        <center>
                            <input style="margin-top: 20px;" class="btn btn-primary js-scroll-trigger" type="submit" value="Send"/>
                        </center>
                    </form>
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
