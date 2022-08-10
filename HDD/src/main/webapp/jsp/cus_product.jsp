<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product - </title>

    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/product.css">
    <style>
        .detail-des {
            width: 80%;
            height: auto;
            display: block;
            margin: auto;
        }

        .product-image {
            height: 250px;
        }

        .product-card img {
            display: block;
            max-height: 230px;
        }
    </style>
</head>
<body>
<nav class="navbar"></nav>

<section class="product-details">
    <div class="image-slider">
        <div class="product-images">
            <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/16/Honda-SH350i-1-6696-1629862381-3284-1631784030.jpg"
                 class="active" alt="" id="yellow">
            <img src="https://cdn.honda.com.vn/motorbike-versions/September2021/LgVU0U8B1taflWV5UcTQ.png"
                 class="active" alt="" id="blue">
            <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/16/Honda-SH350i-1-6696-1629862381-3284-1631784030.jpg"
                 class="active" alt="" id="red-special">
            <img src="https://img.websosanh.vn/v2/users/root_product/images/xe-may-honda-sh-150/nvaegd1qIoH9.jpg"
                 class="active" alt="" id="red">
            <img src="https://img.websosanh.vn/v2/users/root_product/images/xe-may-honda-sh-150/nvaegd1qIoH9.jpg"
                 class="active" alt="">
            <img src="https://d32zzgr0zt907h.cloudfront.net/vn/honda/sh150i/color/500x208/t/honda_sh150i_white.jpg"
                 class="active" alt="" id="grey">
            <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/16/Honda-SH350i-1-6696-1629862381-3284-1631784030.jpg"
                 class="active" alt="">
            <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/16/Honda-SH350i-1-6696-1629862381-3284-1631784030.jpg"
                 class="active" alt="">
            <img src="https://vcdn-vnexpress.vnecdn.net/2021/09/16/Honda-SH350i-1-6696-1629862381-3284-1631784030.jpg"
                 class="active" alt="">
        </div>
    </div>
    <div class="details">
        <h2 class="product-brand">Yamaha</h2>
        <p class="product-short-des">NVX 155 THẾ HỆ I Xanh nhám</p>
        <span class="product-price">52.213.000</span>
        <span class="product-actual-price">52.240.000</span>
        <span class="product-discount">(5% off)</span>

        <p class="product-sub-heading">select color</p>

        <input type="radio" name="color" value="yellow" hidden for="yellow">
        <label for="yellow" class="color-radio-btn check">yellow</label>

        <input type="radio" name="color" value="grey" hidden for="grey">
        <label for="grey" class="color-radio-btn">grey</label>

        <input type="radio" name="color" value="red-special" hidden for="red-special">
        <label for="red-special" class="color-radio-btn">red-special</label>

        <input type="radio" name="color" value="red" hidden for="red">
        <label for="red" class="color-radio-btn">red</label>

        <input type="radio" name="color" value="blue" hidden for="blue">
        <label for="blue" class="color-radio-btn">blue</label>
        <div>
            <button class="btn cart-btn">add to cart</button>
            <button class="btn">add to wishlist</button>
        </div>
    </div>
</section>

<section class="detail-des">
    <h2 class="heading">description</h2>
    <img src="img/thongso/thongso1.jpg" alt="">
    <img src="img/thongso/thongso2.jpg" alt="">
    <img src="img/thongso/thongso3.jpg" alt="">
    <img src="img/thongso/anh-thong-so-xe-nvx.jpg" alt="">
</section>

<!-- cards container -->
<section class="product">
    <h2 class="product-category">best selling</h2>
    <button class="pre-btn"><img src="../img/arrow.png" alt=""></button>
    <button class="nxt-btn"><img src="../img/arrow.png" alt=""></button>
    <div class="product-container">
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/HonDa/XeSo/Wave Alpha 110 (Phiên bản Giới Hạn)/W.jpg"
                     class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Wave Alpha 110 (Phiên bản Giới Hạn)</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">17.470.500<span class="actual-price">18.390.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/HonDa/XeGa/Vision/CuTOBWHwPrzVvOAqbkLg.png" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Vision</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">28.775.500<span class="actual-price">30.290.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/Yamaha/XeSo/SIRIUS/SIRIUS PHIÊN BẢN PHANH CƠ/do-den-1.png" class="product-thumb"
                     alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">SIRIUS</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">19.323.000<span class="actual-price">20.340.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 150 PHIÊN BẢN GP/Exciter-GP-001-1.png"
                     class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Exciter</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">47.965.500 <span class="actual-price">50.490.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 THẾ HỆ I/NVX-Mat-Blue-001.png" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">NVX</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">49.628.000 <span class="actual-price">52.240.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 THẾ HỆ I/NVX-Mat-Blue-001.png" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">NVX</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">49.628.000 <span class="actual-price">52.240.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/suzuki/xecontay/raiderR150/mau-den-do.jpg" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">raiderR150</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">47.490.500<span class="actual-price">49.990.000</span></span>
            </div>
        </div>
    </div>
</section>
<!--????????????????????????????????????????-->
<section class="product">
    <h2 class="product-category">Suzuki</h2>
    <button class="pre-btn"><img src="../img/arrow.png" alt=""></button>
    <button class="nxt-btn"><img src="../img/arrow.png" alt=""></button>
    <div class="product-container">
        <div class="product-card">
            <div class="product-image">
                <a href="cus_product.html">
                    <span class="discount-tag">5% off</span>
                    <img src="img/XeMay/suzuki/xetayga/address/mau-den.jpg" class="product-thumb" alt=""></a>
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Address</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">26.875.500 <span class="actual-price">28.290.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/suzuki/xetayga/address/mau-trang.jpg" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">address</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">26.875.500 <span class="actual-price">28.290.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/suzuki/xetayga/burgman-street/360-1.png" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">burgman street</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">47.025.000 <span class="actual-price">49.500.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/suzuki/xetayga/impulse/impulse-trang-nau-bac.png" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">impulse</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">30.390.500<span class="actual-price">31.990.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <a href="cus_product.html">
                    <img src="img/XeMay/suzuki/xecontay/satriaF150/xanh-den.png" class="product-thumb" alt=""></a>
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">satriaF150</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">49.390.500<span class="actual-price">51.990.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="img/XeMay/suzuki/xecontay/raiderR150/5026ff08ccfa6741ce0728c8344cd92c.jpg" class="product-thumb" alt="">
                <button class="card-btn">add to wishlist</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">raiderR150</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">47.490.500 <span class="actual-price">49.990.000</span></span>
            </div>
        </div>
    </div>
</section>
<!--????????????????????????????????????????-->
<footer></footer>

<script src="../js/nav.js"></script>
<script src="../js/footer.js"></script>
<script src="../js/home.js"></script>
<script src="../js/product.js"></script>

</body>
</html>