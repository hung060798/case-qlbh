<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/5/2021
  Time: 8:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Start Header -->
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="our-link">
                    <ul>
                        <c:if test="${sessionScope.acc==null}">
                            <li><a href="/login"><i class="fa fa-user s_color"></i> Đăng nhập</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc!=null}">
                            <li><a href="/logout"><i class="fa fa-user s_color"></i> Đăng xuất</a></li>
                            <li><a href="#"><i class="fa fa-award s_color"></i> Xin chào ${sessionScope.acc.username}</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc.loaiTK==1}">
                            <li><a href="/product"><i class="fas fa-location-arrow"></i> Quản lý sản phẩm</a></li>
                            <li><a href="#"><i class="fas fa-heart"></i> Quản lý tài khoản</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div style="float: right;">
                    <p style="color: aliceblue;">Hotline : 0123456789 </p>
                </div>
                <div class="text-slid-box">
                    <div id="offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> Khuyến mại 50% nhân dịp Black Sunday
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Khuyến mại 10% cho những ai tên Hưng
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Khuyến mại 20% cho những ai tên Đạt
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Khuyến mại 50% cho những ai tên Dũng
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Freeship toàn quốc
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> Shop chỉ phục vụ những ai đeo khẩu trang
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"><img style="width: 100px;" src="images/logo.jpg" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="/home">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home?action=showAll">Sản phẩm</a></li>
                    <li class="nav-item"><a class="nav-link" href="#footer">Trợ giúp</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li><a href="/view/Wishlist.jsp"><i class="fa fa-heart"></i></a></li>
                    <li><a href="/view/Cart.jsp"><i class="fa fa-shopping-cart"></i></a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->
<!-- End Header -->
