<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 8/4/2021
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style>
        * {
            scroll-behavior: smooth;
        }
    </style>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- Start Header -->
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="our-link">
                    <ul>
                        <li><a href="#"><i class="fa fa-user s_color"></i> Đăng nhập</a></li>
                        <li><a href="#"><i class="fa fa-award s_color"></i> Xin chào Dũng CT</a></li>
                        <li><a href="#"><i class="fa fa-user s_color"></i> Đăng xuất</a></li>
                        <li><a href="#"><i class="fas fa-location-arrow"></i> Quản lý sản phẩm</a></li>
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
                <a class="navbar-brand" href="/home"><img style="width: 100px;" src="/webpage/images/logo.jpg" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="/home">Trang chủ</a></li>
                    <li class="nav-item"><a class="nav-link" href="#aboutus">Giới thiệu</a></li>
                    <li class="nav-item"><a class="nav-link" href="/home?action=showAll">Sản phẩm</a></li>
                    <li class="nav-item"><a class="nav-link" href="#news">Tin tức</a></li>
                    <li class="nav-item"><a class="nav-link" href="#footer">Trợ giúp</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li><a href="wishlist.html"><i class="fa fa-heart"></i></a></li>
                    <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->
<!-- End Header -->

<!-- Start Slider -->
<div id="slides-shop" class="cover-slides">
    <ul class="slides-container">
        <li class="text-center">
            <img src="/webpage/images/slide1.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Shoestore</strong></h1>
                        <p class="m-b-40">Làm những điều bạn thích, <br> thích những điều bạn làm.</p>
                        <p><a class="btn hvr-hover" href="#">Khám phá ngay</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="/webpage/images/slide2.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Shoestore</strong></h1>
                        <p class="m-b-40">Chân tôi vẫn đang trên mặt đất, <br> và tôi chỉ đang đi những đôi giày tốt hơn.</p>
                        <p><a class="btn hvr-hover" href="#">Khám phá ngay</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="/webpage/images/slide3.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>Welcome To <br> Shoestore</strong></h1>
                        <p class="m-b-40">Hãy đưa một đôi giày phù hợp cho cô gái, <br> và cô ấy sẽ chinh phục cả thế giới này.</p>
                        <p><a class="btn hvr-hover" href="#">Khám phá ngay</a></p>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End Slider -->

<!-- Start Categories  -->
<div class="categories-shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box" style="height: 85%;">
                    <img class="img-fluid" src="/webpage/images/credit.jpg" alt="" />
                    <a class="btn hvr-hover" href="#">Bảo mật thông tin khách hàng</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box" style="height: 85%;">
                    <img class="img-fluid" src="/webpage/images/shipper.jpg" alt="" />
                    <a class="btn hvr-hover" href="#">Vận chuyển miễn phí toàn quốc</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box" style="height: 85%;">
                    <img class="img-fluid" src="/webpage/images/nhan-vien-tu-van-ban-hang-2.jpg" alt="" />
                    <a class="btn hvr-hover" href="#">Hỗ trợ 24/7</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Categories -->

<div class="box-add-products">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img class="img-fluid" style="height:500px;"src="/webpage/images/Adidas-Clearance-Sale.jpg" alt="" />
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img class="img-fluid" style="height: 500px;" src="/webpage/images/nikesales.jpg" alt="" />
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start Products  -->
<div class="products-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>DÀNH CHO BẠN</h1>
                    <p>Bộ sưu tập những sản phẩm hot nhất và mới nhất.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter="*">All</button>
                        <button data-filter=".top-featured">Top featured</button>
                        <button data-filter=".best-seller">Best seller</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row special-list">
            <c:forEach items="${listHotProduct}" var="h">
                <div class="col-lg-3 col-md-6 special-grid best-seller">
                    <div class="products-single fix">
                        <div class="box-img-hover" style="height: 200px;">
                            <div class="type-lb">
                                <p class="sale">Hot</p>
                            </div>
                            <img src="${h.img}" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="/home?action=showDetail&idsp=${h.idsp}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">Add to Cart</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>${h.tensp}</h4>
                            <h5>${h.gia} đ</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:forEach items="${listLastProduct}" var="l">
                <div class="col-lg-3 col-md-6 special-grid top-featured">
                    <div class="products-single fix">
                        <div class="box-img-hover" style="height: 200px;">
                            <div class="type-lb">
                                <p class="sale">New</p>
                            </div>
                            <img src="${l.img}" class="img-fluid" alt="Image">
                            <div class="mask-icon">
                                <ul>
                                    <li><a href="/home?action=showDetail&idsp=${l.idsp}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                </ul>
                                <a class="cart" href="#">Add to Cart</a>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>${l.tensp}</h4>
                            <h5>${l.gia} đ</h5>
                        </div>
                    </div>
                </div>
            </c:forEach>


<%--            <div class="col-lg-3 col-md-6 special-grid top-featured">--%>
<%--                <div class="products-single fix">--%>
<%--                    <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                            <p class="new">New</p>--%>
<%--                        </div>--%>
<%--                        <img src="/webpage/images/img-pro-02.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                            <ul>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                            </ul>--%>
<%--                            <a class="cart" href="#">Add to Cart</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="why-text">--%>
<%--                        <h4>Lorem ipsum dolor sit amet</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
    </div>
</div>
<!-- End Products  -->

<!-- Start Blog  -->
<div id="news" class="latest-blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>BẢN TIN SHOESTORE</h1>
                    <p>Tin tức hot nhất về Sneakers, cập nhật 24h.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <a target="_blank" href="https://authentic-shoes.com/blogs/news/nhung-hinh-anh-chinh-thuc-ve-travis-scott-x-fragment-x-air-jordan-1-low"><img class="img-fluid" style="height: 280px;" src="/webpage/images/news2.png" alt="" /></a>
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>Những hình ảnh chính thức về Travis Scott x Fragment x Air Jordan 1 Low</h3>
                            <p>Ngay sau khi Travis Scott x Fragment x Air Jordan 1 High OG vừa được ra mắt vào ngày hôm qua dưới hình thức raffle thì ngay lập tức rapper Travis...
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <a target="_blank" href="https://vansvietnam.com.vn/bedwin-the-heartbreakers-x-vans-cung-bo-hoa-tiet-bandana-sac-so"><img class="img-fluid" style="height: 280px;" src="/webpage/images/Vansnews1.jpg" alt="" /></a>
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>BEDWIN & THE HEARTBREAKERS x VANS CÙNG BỘ HỌA TIẾT BANDANA SẶC SỠ</h3>
                            <p>Nhãn hiệu Nhật Bản BEDWIN & THE HEARTBREAKERS chính thức ra mắt sự hợp tác mới với VAULT BY VANS.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <a target="_blank" href="https://authentic-shoes.com/blogs/news/bape-x-adidas-superstar-80s-green-camo-su-ket-hop-tuyet-voi"><img class="img-fluid" style="height: 280px;" src="/webpage/images/news3.png" alt="" /></a>
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>Bape x adidas Superstar 80s "Green Camo" - Sự kết hợp tuyệt vời</h3>
                            <p>Như các bạn đã biết. Sau sự thành công quả hai phiên bản đầu tiên, sản phẩm collab thứ ba đã tiếp nối và đã được ra mắt vào tháng 5 năm nay. Đối với những người hâm mộ của hãng thời trang...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Blog  -->
<!-- Start About Us-->
<div id="aboutus">
    <div class="container">
        <div class="row">
            <div class="row my-4">
                <div class="col-12">
                    <h2 class="noo-sh-title">Shark Tank</h2>
                </div>
                <div class="col-sm-4 col-lg-4">
                    <div class="hover-team">
                        <div class="our-team"> <img src="/webpage/images/img-1.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Dũng CT</h3> <span class="post">Founder</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Dũng CT (sinh ngày 02 tháng 12 năm 1998) là một học viên của CodeGym kiêm doanh nhân mảng công nghệ Blockchain . Anh là nhà sáng lập của Shoestore, và hiện đang điều hành chuỗi cửa hàng này với chức danh chủ tịch kiêm giám đốc điều hành mảng UI/UX và Database. Anh có tài sản ròng ước tính là 105 tỷ $ tính đến tháng 11 năm 2020.</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-4 col-lg-4">
                    <div class="hover-team">
                        <div class="our-team"> <img src="/webpage/images/img-2.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Đạt 09</h3> <span class="post">Co-Founder</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Đạt 09 hay có tên gọi khác là Đạt2k (sinh năm 2000) cũng là học viên của CodeGym và FPT. Anh là nhà đồng sáng lập của Shoestore, và hiện đang điều hành chuỗi cửa hàng này với chức danh giám đốc điều hành mảng bảo mật tài khoản. Anh hiện là người giàu thứ 6 thế giới với tài sản ròng ước tính là 100 tỷ $ tính đến tháng 11 năm 2020. Anh có khả năng đặc biệt là hay chém gió.</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-4 col-lg-4">
                    <div class="hover-team">
                        <div class="our-team"> <img src="/webpage/images/img-3.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Hưng Dê Gấu</h3> <span class="post">Co-Founder</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Hưng dê gấu hay có tên gọi khác là Hưng DG (sinh năm 1998) cũng là học viên của CodeGym. Anh là nhà đồng sáng lập của Shoestore, và hiện đang điều hành chuỗi cửa hàng này với chức danh giám đốc điều hành mảng quản lý sản phẩm. Anh hiện là người giàu thứ 7 thế giới với tài sản ròng ước tính là 99 tỷ $ tính đến tháng 11 năm 2020. Anh có khả năng đặc biệt là bắn thuốc lào như gió.</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End About Us-->

<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Thời gian mở cửa</h3>
                        <ul class="list-time">
                            <li>Thứ hai - Thứ sáu: 08.00am to 05.00pm</li> <li>Thứ bảy: 10.00am to 08.00pm</li> <li>Chủ nhật: <span>Đóng cửa</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Nhận tin tức mới nhất</h3>
                        <form class="newsletter-box">
                            <div class="form-group">
                                <input class="" type="email" name="Email" placeholder="Email Address*" />
                                <i class="fa fa-envelope"></i>
                            </div>
                            <button class="btn hvr-hover" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>Mạng xã hội</h3>
                        <p>Có thể like và subcribe các trang mạng xã hội của chúng tôi.</p>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4>Sứ mệnh</h4>
                        <p>Sứ mệnh của chúng tôi là điều thúc đẩy chúng tôi làm mọi thứ có thể để mở rộng tiềm năng của con người. Chúng tôi làm điều đó bằng cách tạo ra những đổi mới thể thao đột phá, bằng cách làm cho các sản phẩm của chúng tôi bền vững hơn, bằng cách xây dựng một đội ngũ sáng tạo và đa dạng trên toàn cầu và bằng cách tạo ra tác động tích cực trong cộng đồng nơi chúng tôi sống và làm việc.</p>
                        <p>Có trụ sở tại Hà Nội. Store bao gồm các thương hiệu Nike, Adidas, Vans và Bitis.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>Thông tin thêm</h4>
                        <ul>
                            <li><a href="#">Điều khoản</a></li>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Hướng dẫn sử dụng</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>Liên hệ</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Cơ sở 1: Hà Nội </p>
                                <p><i class="fas fa-map-marker-alt"></i>Cơ sở 2: Nam Định </p>
                                <p><i class="fas fa-map-marker-alt"></i>Cơ sở 3: Phú Thọ </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+8487654321">0987654321</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="mailto:cskh@shoestore.com">cskh@shoestore.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div id="footer" class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; 2021 <a href="#">Shoestore</a></p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

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
