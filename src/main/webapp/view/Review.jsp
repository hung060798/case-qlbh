<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/7/2021
  Time: 4:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h2>Đánh giá sản phẩm</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Đánh giá sản phẩm</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Shop Detail  -->
<div class="shop-detail-box-main">
    <div class="container">
        <div class="row">
            <div class="card card-outline-secondary col-12">
                <div class="card-header">
                    <h2>Hình như bạn quên điều gì đó</h2>
                    <h2>Hãy để lại cảm nhận của bạn về những sản phẩm của chúng tôi</h2>
                </div>
                <div class="card-body">
                    <form action="/checkout">
                        <c:forEach items="${sessionScope.orders.listItem}" var="i" varStatus="loop">
                                <div class="mr-5">
                                    <img class="border p-1" src="${i.product.img}" style="width: 200px; height: 200px; border-radius: 50%;" alt="Generic placeholder image">
                                </div>
                                <div class="media-body">
                                    <div class="row"></div>
                                    <p>
                                        Bạn muốn cho sản phẩm này bao nhiêu sao?
                                        <input type="number" name="s${loop.index}" min="1" max="5" step="1">
                                    </p>
                                </div>
                                <div><textarea name="c${loop.index}" placeholder="Bình luận khách quan nhé..."></textarea></div>
                            </div>
                            <hr>
                        </c:forEach>
                        <div>
                            <button type="submit" class="btn btn-dark">Gửi</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
    <!-- End Cart -->
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
