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
        <link href="css/clean-blog.min.css" rel="stylesheet">
    </head>
    <body>
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
                            </form><br/>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <c:set var="listBlog" value="${requestScope.LISTBLOG}"/>
        <c:if test="${not empty listBlog}">
            <div class="container-fluid">
                <c:forEach var="dto" items="${listBlog}" varStatus="counter">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Featured blog post-->
                                <div class="card mb-4">
                                    <div class="card-body">
                                                 <!--<input type="" name="txtID" value="${dto.ID}" />-->

                                        <h2 class="post-title" id="title" > <ins>${dto.title}</ins></h2>
                                        <h4 class="card-title" id="summary"> ${dto.summary}</h4>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <p class="card-text"> Author: ${dto.author}</p>
                                            </div>
                                            <div class="col-lg-6">
                                                <p class=" text-muted"> Date: ${dto.time}</p>
                                            </div>
                                        </div>

                                        <c:url var="urlRewritingUpdate" value = "DispatchController">
                                            <c:param name ="btAction" value ="Update Blog" />
                                            <c:param name ="txtID" value ="${dto.ID}" />
                                        </c:url> 
                                            
                                        <c:url var="urlRewritingDetail" value = "DispatchController">
                                            <c:param name ="btAction" value ="Detail Blog" />
                                            <c:param name ="txtID" value ="${dto.ID}" />
                                        </c:url> 
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <a href="${urlRewritingDetail}" class="btn btn-primary" >Detail</a>
                                                </div>
                                                <div class="col-lg-6">
                                                    <a href="${urlRewritingUpdate}" class="btn btn-primary">Update</a>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>
            </div>
        </c:if>

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
