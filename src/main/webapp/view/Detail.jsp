<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/5/2021
  Time: 8:45 AM
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
        .checkedstar {
            color: orange;
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
                <h2>Chi tiết sản phẩm</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Chi tiết sản phẩm</li>
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
            <div class="col-xl-5 col-lg-5 col-md-6">
                <img class="d-block w-100" style="height: 87%;" src="${product.img}" alt="First slide">
            </div>
            <div class="col-xl-7 col-lg-7 col-md-6">
                <div class="single-product-details">
                    <h2>${product.tensp}</h2>
                    <h5> <del> ${giaAo}    </del> ${product.gia} đ</h5>
                    <p class="available-stock"><span> Size:  <a href="#"> ${product.size} </a></span><p>
                    <h4>Mô tả sản phẩm:</h4>
                  <p>${product.mota}</p>
                    <ul>
                        <c:if test="${product.soluong>0}">
                        <li>
                            <div class="form-group quantity-box">
                                <label class="control-label">Số lượng: Hiện chỉ còn ${product.soluong} đôi, nhanh tay kẻo hết</label>
                            </div>
                        </li>
                        </c:if>
                        <c:if test="${product.soluong<=0}">
                            <li>
                                <div class="form-group">
                                    <p>Hiện đã hết hàng, để nhận được thông tin về sản phẩm sớm nhất, vui lòng đăng ký tin nhắn ở bên dưới</p>
                                </div>
                            </li>
                        </c:if>
                    </ul>
<c:if test="${product.soluong<=0}">
                    <div class="price-box-bar">
                        <div class="cart-and-bay-btn">
                            <a class="btn hvr-hover" data-fancybox-close="" href="/cart?action=add&site=detail&idsp=${product.idsp}">Thêm vào giỏ hàng</a>
                        </div>
                    </div>
</c:if>


                </div>
            </div>
        </div>

        <div class="row">
            <div class="card card-outline-secondary col-12">
                <div class="card-header">
                    <h2>Đánh giá sản phẩm</h2>
                </div>
                <div class="card-body">
                    <c:if test="${listFeedback.size() > 0}">
                    <c:forEach items="${listFeedback}" var="f">
                        <div class="media mb-4">
                            <div class="mr-5">
                                <img class="border p-1" src="${imgRand}" style="width: 80px; height: 80px; border-radius: 50%;" alt="Generic placeholder image">
                            </div>
                            <div class="media-body">
                                <p>
                                    <c:forEach var="s" begin="1" end="${f.danhgia}">
                                        <span class="fa fa-star checkedstar"></span>
                                    </c:forEach>
                                    <c:forEach var="n" begin="1" end="${5 - f.danhgia}">
                                        <span class="fa fa-star"></span>
                                    </c:forEach>
                                </p>
                                <p>${f.binhluan}</p>
                                <small class="text-muted">Posted by ${f.username} on ${f.ngaymua}</small>
                            </div>
                        </div>
                        <hr>
                    </c:forEach>
                    </c:if>
                    <c:if test="${listFeedback.size() == 0}">
                    <div class="media mb-4">
                        <p>Hãy mua hàng và trở thành người đầu tiên để lại đánh giá về sản phẩm nhé!</p>
                    </c:if>



<%--                    <div class="media mb-3">--%>
<%--                        <div class="mr-2">--%>
<%--                            <img class="rounded-circle border p-1" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">--%>
<%--                        </div>--%>
<%--                        <div class="media-body">--%>
<%--                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>--%>
<%--                            <small class="text-muted">Posted by Anonymous on 3/1/18</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <hr>--%>
<%--                    <div class="media mb-3">--%>
<%--                        <div class="mr-2">--%>
<%--                            <img class="rounded-circle border p-1" src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2264%22%20height%3D%2264%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2064%2064%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_160c142c97c%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A10pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_160c142c97c%22%3E%3Crect%20width%3D%2264%22%20height%3D%2264%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%2213.5546875%22%20y%3D%2236.5%22%3E64x64%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E" alt="Generic placeholder image">--%>
<%--                        </div>--%>
<%--                        <div class="media-body">--%>
<%--                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>--%>
<%--                            <small class="text-muted">Posted by Anonymous on 3/1/18</small>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <hr>--%>
                </div>
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
