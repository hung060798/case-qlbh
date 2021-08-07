<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/5/2021
  Time: 8:44 AM
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
                <h2>Giỏ hàng</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Giỏ hàng</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Cart  -->
<div class="cart-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <c:if test="${sessionScope.orders==null}">
                    <h1 style="text-align: center">Hiện chưa có sản phẩm nào, vui lòng lựa chọn đôi giày mà bạn yêu thích</h1>
                </c:if>
<c:if test="${sessionScope.orders!=null}">
                <div class="table-main table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Tổng tiền</th>
                            <th><a href="/cart?action=removeAll">Xóa tất cả</a></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${sessionScope.orders.listItem}" var="i">
                            <td class="thumbnail-img">
                                <a href="/home?action=showDetail&idsp=${i.product.idsp}">
                                    <img class="img-fluid" src="${i.product.img}" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="/home?action=showDetail&idsp=${i.product.idsp}">
                                    ${i.product.tensp}
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>${i.product.gia}</p>
                            </td>
                            <td class="quantity-box"><a href="/cart?action=decrease&id=${i.iditem}"><button class="btnSub">-</button></a> <strong>${i.soluongmua}</strong>
                                <a href="/cart?action=increase&id=${i.iditem}"><button class="btnAdd">+</button></a></td>
                            <td class="total-pr">
                                <p>${i.product.gia * i.soluongmua}</p>
                            </td>
                            <td class="remove-pr">
                                <a href="/cart?action=remove&idsp=${i.product.idsp}">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
</c:if>
            </div>
        </div>

        <form action="/cart">
        <div class="row my-5">
            <div class="col-lg-6 col-sm-6">
                <div class="coupon-box">
                    <div class="input-group input-group-sm">
                        <input type="text" hidden name="action" value="showBill">
                        <input class="form-control" placeholder="Enter your coupon code" name="code" aria-label="Coupon code" type="text">
                        <c:if test="${notice}"><div><p style="color: green; font-weight: 600; font-size: 1.5rem;">Nhập mã thành công</p></div></c:if>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="update-box">
                    <input value="Xem hóa đơn" type="submit">
                </div>
            </div>
        </div>
        </form>

        <div class="row my-5">
            <div class="col-lg-8 col-sm-12"></div>
            <div class="col-lg-4 col-sm-12">
                <div class="order-box">
                    <h3>Thanh toán</h3>
                    <div class="d-flex">
                        <h4>Cộng tiền</h4>
                        <div class="ml-auto font-weight-bold"> ${total} đ</div>
                    </div>
                    <div class="d-flex">
                        <h4>Giảm giá</h4>
                        <div class="ml-auto font-weight-bold">- 0 đ</div>
                    </div>
                    <hr class="my-1">
                    <div class="d-flex">
                        <h4>Phiếu giảm giá</h4>
                        <div class="ml-auto font-weight-bold">- ${coupon} đ</div>
                    </div>
                    <div class="d-flex">
                        <h4>Thuế</h4>
                        <div class="ml-auto font-weight-bold">+ ${vat} đ </div>
                    </div>
                    <div class="d-flex">
                        <h4>Phí vận chuyển</h4>
                        <div class="ml-auto font-weight-bold">+ 0 đ</div>
                    </div>
                    <hr>
                    <div class="d-flex gr-total">
                        <h5>Tổng tiền phải thanh toán</h5>
                        <div class="ml-auto h5"> ${sum} đ </div>
                    </div>
                    <hr> </div>
            </div>
            <div class="col-12 d-flex shopping-box"><a href="/checkout?tongtien=${total}" class="ml-auto btn hvr-hover">Thanh toán</a> </div>
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
