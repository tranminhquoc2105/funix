<%-- 
    Document   : createBlog
    Created on : Aug 13, 2022, 11:24:03 AM
    Author     : SE130297
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREATE Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/clean-blog.min.css" rel="stylesheet">
        <link href="css/clean-blog.min.css" rel="stylesheet">

    </head>
    <body>
        <h1>CREATE BLOG</h1>
        <%
            Date now = new Date();

        %>

        <header class="masthead" style="background-image: url('img/home-bg.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="site-heading">
                            <h5> 
                                <font color ="red">Welcome,</font>
                                <strong>${sessionScope.FULLNAME}</strong>
                            </h5>
                            <form action="DispatchController">
                                <input type="submit" value="Logout" name="btAction" class="btn btn-primary js-scroll-trigger"/>
                                <input type="submit" value="Create_Blog" name="btAction" class="btn btn-primary js-scroll-trigger"/>
                                <input type="submit" value="View" name="btAction" class="btn btn-primary js-scroll-trigger"/> </br>
                            </form><br/>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <form action="DispatchController" method="POST">
            <div class=" container border border-danger">
                <div class="form-group">
                    <label for="exampleInputEmail1">Blog Id</label>
                    <input type="text" name="txtID"  class="form-control" > 
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Blog title:</label>
                    <input type="text" name="txtTitle" class="form-control" >
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Blog Summarry:</label>
                    <input type="text" name="txtSummary" class="form-control" >
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Blog Content:</label>
                    <textarea  type="text" name="txtContent" class="form-control" ></textarea>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Blog Author:</label>
                    <input type="text" name="txtAuthor" class="form-control" >
                </div>

                <div class="form-group">
                    <!--<label for="exampleInputEmail1">Author Times</label>-->
                    <input type="hidden" name="txtTime"  value="<%= now%>" class="form-control" >
                </div>
                <div class="form-group">
                    <input type="submit" name="btAction" class="btn btn-info btn-md" value="Create">
                </div>

            </div>
        </form>

        <footer class="text-center text-lg-start bg-light text-muted">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
                <!-- Right -->
                <div>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3"></i>Company name
                            </h6>
                            <p>
                                Here you can use rows and columns to organize your footer content. Lorem ipsum
                                dolor sit amet, consectetur adipisicing elit.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Products
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Angular</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">React</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Vue</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Laravel</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Useful links
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Pricing</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Settings</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Orders</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                            <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                info@example.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2021 Copyright:
                <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </body>
</html>
