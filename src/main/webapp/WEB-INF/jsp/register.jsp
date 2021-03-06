<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html lang="en">
    <!-- head -->
    <head>
        <title>Register</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Little Closet template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.css"></c:url>">
        <link href="<c:url value="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css"></c:url>" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/animate.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/main_styles.css"></c:url>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/styles/responsive.css"></c:url>">
        <style>
            th, input{
                color: black;
            }            
        </style>
        </head>
        <body>
            <!-- Mobile Menu -->
        <jsp:include page="./include/mobile-menu.jsp"/>

        <div class="super_container">

            <!-- Header -->
            <jsp:include page="./include/header.jsp"/>

            <div class="super_container_inner">
                <div class="super_overlay"></div>		
                <div class="container">
                    <div class="row" style="margin-top: 100px">
                        <div class="col-lg-6 offset-lg-3">
                            <div class="section_title text-center">Register</div>
                        </div>
                    </div>

                    <div class="row" style="margin-top: 3em">
                        <div class="col-xs-12 col-sm-12">
                            <p style="font-size: 150%;color: red;text-align: center">${messageError}</p>
                            <p style="font-size: 150%;color: blue;text-align: center">${messageSuccess}</p>
                            <f:form action="${pageContext.request.getContextPath()}/register-account" method="post" modelAttribute="account" id="registerform" class="form-horizontal">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Full name <span style="color: red">(*)</span></th>
                                            <td><input type="text" name="fullName" class="form-control" pattern="[A-Za-z ]{3,50}" title="Only letters and space are allowed, length 3-50" required/></td>
                                        </tr>
                                        <tr>
                                            <th>Username <span style="color: red">(*)</span></th>
                                            <td><input type="text" name="username" class="form-control" pattern="[A-Za-z0-9_]{3,50}" title="Only letters, numbers and '_' are allowed, length 3-50" required/></td>
                                        </tr>
                                        <tr>
                                            <th>Email <span style="color: red">(*)</span></th>
                                            <td><input type="email" name="email" class="form-control" required/></td>
                                        </tr>
                                        <tr>
                                            <th>Phone</th>
                                            <td><input type="text" name="phone" pattern="[0-9]{10,11}" title="Only numbers are allowed, length 10-11" class="form-control"/></td>
                                        </tr>
                                        <tr>
                                            <th>Birthday</th>
                                            <td><input type="date" name="birthday" class="form-control"/></td>
                                        </tr>
                                        <tr>
                                            <th>Address</th>
                                            <td><input type="text" name="address" class="form-control"/></td>
                                        </tr>
                                        <tr>
                                            <th>Password <span style="color: red">(*)</span></th>
                                            <td><input type="password" name="password1" pattern=".{5,50}" title="Limit 5-50 characters" class="form-control" required/></td>
                                        </tr>
                                        <tr>
                                            <th>Confirm password <span style="color: red">(*)</span></th>
                                            <td><input type="password" name="password2" pattern=".{5,50}" title="Limit 5-50 characters" class="form-control" required/></td>
                                        </tr>                                        

                                    </table>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12 col-xs-12" style="text-align: center">
                                        <button id="registerBtn" type="submit" class="btn btn-primary">Register</button>                                      
                                    </div>
                                </div>
                            </f:form>
                        </div>
                    </div>
                </div>
                <!-- profile -->



            </div>
        </div>

        <!-- Footer -->
        <jsp:include page="./include/footer.jsp"/>

        <!-- script -->
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/styles/bootstrap-4.1.2/popper.js"></c:url>"></script>
        <script src="<c:url value="/resources/styles/bootstrap-4.1.2/bootstrap.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/greensock/TweenMax.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/greensock/TimelineMax.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/scrollmagic/ScrollMagic.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/greensock/animation.gsap.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/greensock/ScrollToPlugin.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/easing/easing.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/progressbar/progressbar.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/plugins/parallax-js-master/parallax.min.js"></c:url>"></script>
        <script src="<c:url value="/resources/js/custom.js"></c:url>"></script>       
    </body>
</html>