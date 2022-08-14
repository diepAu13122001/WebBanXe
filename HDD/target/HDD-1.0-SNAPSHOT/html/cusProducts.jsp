<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/8/2022
  Time: 8:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sản phẩm</title>
    <script src="https://kit.fontawesome.com/6743dd3fb9.js"></script>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/brand.css">
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
            <section class="product">
                <div class="product-container">
                <jsp:useBean id="allProduct" scope="request" type="java.util.List"/>
                <c:forEach items="${allProduct}" var="o">
                    <div class="product-card">
                        <div class="product-image">
                            <span class="discount-tag"></span>
                            <img src="${o.prd_ava}" class="product-thumb" alt="">
                            <button class="card-btn">view detail</button>
                        </div>
                        <div class="product-info">
                            <h2 class="product-brand">${o.prd_name}</h2>
                            <span class="price">${o.prd_price}<span class="actual-price">${o.prd_price*(1-o.prd_discountPercent)}</span></span>
                        </div>
                    </div>
                </c:forEach>
                </div>
            </section>
        </div>
    </div>
</div>

<footer></footer>

<script src="js/nav.js"></script>
<script src="js/footer.js"></script>
<script src="js/home.js"></script>


</body>
</html>
