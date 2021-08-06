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
                <h2>Sản phẩm</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/home">Trang chủ</a></li>
                    <li class="breadcrumb-item active">Sản phẩm</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->
<!-- Start Gallery  -->
<div class="products-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>Sản phẩm</h1>
                    <p>Tại đây có những mẫu sneakers xịn xò nhất, hài lòng cả những vị khách khó tính nhất.</p>
                    <form action="/home">
                    <div class="input-group" style="position: absolute; top: 0; right: 0; width: 20%;">
                        <input class="form-control border-end-0 border rounded-pill" type="text" name="fName" id="example-search-input">
                        <input type="text" hidden name="action" value="findProduct">
                        <span class="input-group-append">
                                <button class="btn btn-outline-secondary bg-white border-start-0 border rounded-pill ms-n3" type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter="*">Tất cả</button>
                        <c:forEach items="${listBrand}" var="b">
                            <button data-filter=".${b.idbrand}">${b.tenbrand}</button>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <div class="row special-list">
            <c:forEach items="${listProduct}" var="p">
            <div class="col-lg-3 col-md-6 special-grid ${p.idbrand}">
                <div class="products-single fix">
                    <div class="box-img-hover" style="height: 200px;">
                        <img src="${p.img}" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <li><a href="/home?action=showDetail&idsp=${p.idsp}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="/cart?action=add&site=product&idsp=${p.idsp}">Add to Cart</a>
                        </div>
                    </div>
                    <div class="why-text">
                        <h4>${p.tensp}</h4>
                        <h5>${p.gia} đ</h5>
                    </div>
                </div>
            </div>
            </c:forEach>

        </div>
        <nav aria-label="...">
            <ul class="pagination">
                <c:if test="${idxPage>1}">
                <li class="page-item">
                    <a class="page-link" href="/home?action=showAll&idx=${idxPage-1}" tabindex="-1">Previous</a>
                </li>
                </c:if>
                <c:forEach var="i" begin="1" end="${endPage}">
                    <li class="page-item ${idxPage==i?"active":""}"><a class="page-link" href="/home?action=showAll&idx=${i}">${i}</a></li>
                </c:forEach>

<%--                <li class="page-item active">--%>
<%--                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>--%>
<%--                </li>--%>
<%--                <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
                <c:if test="${idxPage<endPage}">
                <li class="page-item">
                    <a class="page-link" href="/home?action=showAll&idx=${idxPage+1}">Next</a>
                </li>
                </c:if>
            </ul>
        </nav>
    </div>
</div>
<!-- End Gallery  -->
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
