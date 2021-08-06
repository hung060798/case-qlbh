<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/5/2021
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Shoestore</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="/webpage/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="/webpage/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/webpage/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="/webpage/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="/webpage/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/webpage/css/custom.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        * {
            scroll-behavior: smooth;
        }
    </style>

</head>

<body>
<jsp:include page="HeaderHome.jsp" />

<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Danh sách yêu thích</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Yêu thích</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Wishlist  -->
<div class="wishlist-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-main table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Stock</th>
                            <th>Thêm vào giỏ hàng</th>
                            <th>Xóa khỏi yêu thích</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="/webpage/images/img-pro-01.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    Lorem ipsum dolor sit amet
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>$ 80.0</p>
                            </td>
                            <td class="quantity-box">In Stock</td>
                            <td class="add-pr">
                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="/webpage/images/img-pro-02.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    Lorem ipsum dolor sit amet
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>$ 60.0</p>
                            </td>
                            <td class="quantity-box">In Stock</td>
                            <td class="add-pr">
                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="/webpage/images/img-pro-03.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    Lorem ipsum dolor sit amet
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>$ 30.0</p>
                            </td>
                            <td class="quantity-box">In Stock</td>
                            <td class="add-pr">
                                <a class="btn hvr-hover" href="#">Add to Cart</a>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Wishlist -->

<jsp:include page="FooterHome.jsp" />
<!-- ALL JS FILES -->
<script src="/webpage/js/jquery-3.2.1.min.js"></script>
<script src="/webpage/js/popper.min.js"></script>
<script src="/webpage/js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="/webpage/js/jquery.superslides.min.js"></script>
<script src="/webpage/js/bootstrap-select.js"></script>
<script src="/webpage/js/inewsticker.js"></script>
<script src="/webpage/js/bootsnav.js."></script>
<script src="/webpage/js/images-loded.min.js"></script>
<script src="/webpage/js/isotope.min.js"></script>
<script src="/webpage/js/owl.carousel.min.js"></script>
<script src="/webpage/js/baguetteBox.min.js"></script>
<script src="/webpage/js/form-validator.min.js"></script>
<script src="/webpage/js/contact-form-script.js"></script>
<script src="/webpage/js/custom.js"></script>
</body>

</html>
