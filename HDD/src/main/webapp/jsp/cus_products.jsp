<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/8/2022
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Honda</title>
    <script src="https://kit.fontawesome.com/6743dd3fb9.js"></script>
    <link rel="stylesheet" href="../css/nav.css">
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/brand.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        .row {
            margin: 0 20px;
        }

        .carousel-inner .item img {
            width: 100%;
        }

        .product-image {
            height: 250px;
        }

        .product-card img {
            display: block;
            max-height: 230px;
            overflow: hidden;
        }
    </style>
</head>
<body>
<nav class="navbar"></nav>

<!--slider-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>


    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/06/web-r15-extend-07.jpg" alt="slide 1">
        </div>

        <div class="item">
            <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/07/Finn-digital-01.jpg" alt="Chicago">
        </div>

        <div class="item">
            <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2022/04/2132-x988-R74.jpg" alt="New York">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<h2 class="search-title">Honda</h2>
<div class="row">
    <!--left filter-->
    <div class="col-sm-3" style="height: 100%; ">
        <div class="left-menu">
            <div class="category-list">
                <ul>
                    <li class="category-l0">
                        <a href="#">honda
                            <i class="fa-solid fa-plus"></i>
                            <i class="fa-solid fa-minus"></i>
                        </a>
                        <ul class="hide">
                            <li class="category-l1">
                                <a href="#">honda 1<i class="fa-solid fa-plus"></i></a>
                                <ul>
                                    <li class="category-l2">
                                        <a href="#">honda 1.1<i class="fa-solid fa-plus"></i></a>
                                        <ul>
                                            <li class="category-l3"><a href="#">honda 1.1.1</a></li>
                                            <li class="category-l3"><a href="#">honda 1.1.2</a></li>
                                            <li class="category-l3"><a href="#">honda 1.1.3</a></li>
                                        </ul>
                                    </li>
                                    <li class="category-l2"><a href="#">honda 1.2</a></li>
                                    <li class="category-l2"><a href="#">honda 1.3</a></li>
                                </ul>
                            </li>
                            <li class="category-l1"><a href="#">honda 2</a></li>
                            <li class="category-l1">
                                <a href="#">honda 3</a>
                                <ul>
                                    <li class="category-l2"><a href="#">honda 3.1</a></li>
                                    <li class="category-l2"><a href="#">honda 3.2</a></li>
                                    <li class="category-l2"><a href="#">honda 3.3</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="category-l0"><a href="#">yamaha</a></li>
                    <li class="category-l0"><a href="#">suzuki</a></li>
                </ul>
            </div>
            <div class="filter">
                <h1 class="filter-header">Lọc theo</h1>
                <div class="category-list">
                    <ul>
                        <li class="category-l0">
                            <a href="#">Giá
                                <i class="fa-solid fa-plus hide"></i>
                                <i class="fa-solid fa-minus"></i>
                            </a>
                            <ul>
                                <li class="category-l1"><a href="#">dưới 100.000.000đ (1)</a></li>
                                <li class="category-l1"><a href="#">dưới 100.000.000đ (1)</a></li>
                                <li class="category-l1"><a href="#">dưới 100.000.000đ (1)</a></li>
                            </ul>
                        </li>
                        <li class="category-l0">
                            <a href="#">Màu sắc
                                <i class="fa-solid fa-plus"></i>
                                <i class="fa-solid fa-minus"></i>
                            </a>
                            <ul>
                                <li class="category-l1"><a href="#">Đỏ</a></li>
                                <li class="category-l1"><a href="#">cam</a></li>
                                <li class="category-l1"><a href="#">đen</a></li>
                            </ul>
                        </li>
                        <li class="category-l0">
                            <a href="#">Ưu đãi
                                <i class="fa-solid fa-plus"></i>
                                <i class="fa-solid fa-minus"></i>
                            </a>
                            <ul>
                                <li class="category-l1"><a href="#">Giảm giá</a></li>
                                <li class="category-l1"><a href="#">0% trả góp</a></li>
                                <li class="category-l1"><a href="#">ưu đãi bảo hiểm</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--right-list-->
    <div class="col-sm-8" style="margin-right: 15px">
        <!--filter list-->
        <div class="filter-list">
            <div class="filter-item">
                <span>Honda</span>
                <span class="del">x</span>
            </div>
            <div class="filter-item">
                <span>Honda</span>
                <span class="del">x</span>
            </div>
            <div class="filter-item">
                <span>Xe côn tay</span>
                <span class="del">x</span>
            </div>
            <div class="filter-item" id="del-all">
                <span>Xóa tất cả</span>
                <span class="del">x</span>
            </div>
        </div>
        <!--right-sort-->
        <label>
            <select class="right-sort">
                <option value="popular" selected>phổ biến nhất</option>
                <option value="popular">giá từ cáo đến thấp</option>
                <option value="popular">giá từ thấp đến cao</option>
                <option value="popular">mới nhất</option>
            </select>
        </label>
        <!-- cards container -->
        <div class="list-product">
            <!--list for HD-CT-->
            <section class="product" id="HD-CT-LIST">
                <!--list for HD-CT-CBR-->
                <div class="product-container" id="HD-CT-CBR">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/11/Jupiter-Mat-Black-004.png"
                                 class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CBR500R 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CB1000R 2021/cb11.png" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CB1000R 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CBR650R phiên bản 2021/cb61.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CBR650R phiên bản 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CBR1000RR-R Fireblade/b11.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CBR1000RR-R Fireblade</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CBR1000RR-R Fireblade SP/cb1k.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CBR1000RR-R Fireblade SP</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-CT-Winner-->
                <div class="product-container" id="HD-CT-Winner">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Winner X/3q8MyzSOzS0sd90olzGx.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Winner X</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 49.090.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-CT-CB-Exmotion-->
                <div class="product-container" id="HD-CT-CB-Exmotion">
                    <div class="product-card">
                        <div class="product-image">
                            <a href="productDetail.html">
                                <span class="discount-tag"></span>
                                <img src="img/XeMay/HonDa/ConTay/CB150R Exmotion/00mYFISHwCafuX4SC5P0.jpg"
                                     class="product-thumb"
                                     alt=""></a>
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CB150R Exmotion</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 105.000.000 đ <span class="actual-price"></span></span>
                        </div>
                    </div>

                </div>
                <!--list for HD-CT-CB-->
                <div class="product-container" id="HD-CT-CB">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CB500F 2021/cbf1.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CB500F 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CB500X 2021/cb51.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CB500X 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/CB650R phiên bản 2021/cb21.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">CB650R phiên bản 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
            </section>

            <!--list for HD-TG-->
            <section class="product" id="HD-TG-LIST">
                <!--list for HD-TG-AIR-BLADE-->
                <div class="product-container" id="HD-TG-AIR-BLADE">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/Air Blade 125150 (Phiên bản giới hạn)/41oq4DWnVnPNj8vSZz6L.png"
                                 class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Air Blade 125/150 (Phiên bản giới hạn)</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 41.990.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <a href="productDetail.html">
                                <span class="discount-tag"></span>
                                <img src="img/XeMay/HonDa/XeGa/Air Blade 125150/HM1d963bUvcMTljPyFXi.png"
                                     class="product-thumb" alt=""></a>
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Air Blade 125/150</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 41.490.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-TG-SH-->
                <div class="product-container" id="HD-TG-SH">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/Sh mode 125/6mnhkYStW4CAnsPthiea.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Sh mode 125</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 55.190.000 VNĐ<span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/SH125i150i/0jdvBHJ0c8Skt1m24bNO.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">SH125i/150i</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 71.790.000<span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/SH350i/aMq1rMdtKKvZohbaVNTd.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">SH350i</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 145.990.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-TG-VISION-->
                <div class="product-container" id="HD-TG-VISION">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/Vision/CpBuZRK20zxK9MJZx9Xb.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Vision</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/Vision (Phiên bản Cá tính)/osAEdqYtGQdNqAyZp64i.png"
                                 class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Vision (Phiên bản Cá tính)</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 34.790.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-TG-LEAD-->
                <div class="product-container" id="HD-TG-LEAD">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeGa/Lead 125 FI/7HpJ5fOoqvKLngJxrlWQ.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Lead 125 FI</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 38.590.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
            </section>

            <!--list for HD-XS-->
            <section class="product" ID="HD-XS-LIST">
                <!--list for HD-XS-FUTURE-->
                <div class="product-container" id="HD-XS-FUTURE">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/11/Jupiter-Mat-Black-004.png"
                                 class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Future 125 FI</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-XS-SUPPER-CUB-->
                <div class="product-container" id="HD-XS-SUPPER-CUB">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeSo/Super Cub C125/dsY9erMFzXb67zyMVzt4.png"
                                 class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Super Cub C125</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 86.990.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-XS-WAVE-->
                <div class="product-container" id="HD-XS-WAVE">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeSo/Wave RSX FI 110/erPkF2sw7k93asvptafF.png"
                                 class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Wave RSX FI 110</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 21.790.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeSo/Wave Alpha 110cc/31eSXYt7VHNbMufUzFnF.png"
                                 class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Wave Alpha 110cc</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 21.790.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag">5% off</span>
                            <img src="img/XeMay/HonDa/XeSo/Wave Alpha 110 (Phiên bản Giới Hạn)/W.jpg"
                                 class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Wave Alpha 110 (Phiên bản Giới Hạn) </h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 18.390.000<span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-XS-BLADE-->
                <div class="product-container" id="HD-XS-BLADE">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/XeSo/Blade 110/2wlsQ7Mu5V2A6jPJpbaC.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Blade 110</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 18.890.000 <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
            </section>

            <!--list for HD-MT-->
            <section class="product" ID="HD-MT-LIST">
                <!--list for HD-MT-GOLD-WING-->
                <div class="product-container" id="HD-MT-GOLD-WING">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Gold Wing 2021/gw1.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Gold Wing 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-MT-AFRICA-TWIN-->
                <div class="product-container" id="HD-MT-AFRICA-TWIN">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Africa Twin Adventure Sport 2021/atas2021.jpg"
                                 class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Africa Twin Adventure Sport 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Africa Twin 2021/af1.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Africa Twin 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-MT-REBEL-->
                <div class="product-container" id="HD-MT-REBEL">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Rebel 300/rb3.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Rebel 300</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Rebel 500 2021/rb21.jpg" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Rebel 500 2021</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 30.290.000  <span class="actual-price"></span></span>
                        </div>
                    </div>
                </div>
                <!--list for HD-MT-CB-->
                <div class="product-container" id="HD-MT-CB">

                </div>
                <!--list for HD-MT-CBR-->
                <div class="product-container" id="HD-MT-CBR">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/HonDa/ConTay/Cbr150r/9xz3WzLhH3NVCiwBIcbv.png" class="product-thumb"
                                 alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">Cbr150r</h2>
                            <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                            <span class="price">Từ 70.990.000<span class="actual-price"></span></span>
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </div>
</div>

<footer></footer>

<script src="../js/nav.js"></script>
<script src="../js/footer.js"></script>
<script src="../js/home.js"></script>


</body>
</html>
