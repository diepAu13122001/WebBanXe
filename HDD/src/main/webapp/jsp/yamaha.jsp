<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Yamaha</title>

    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/search.css">
    <link rel="stylesheet" href="../css/brand.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <style>
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

<div class="brand">

    <!--menu bar on left-->
    <div class="wrapper">
        <ul class="menu-bar">
            <li><a href="https://yamaha-motor.com.vn/">Thong tin ve hang</a></li>
            <li class="YH-TT"><a>Xe the thao<i class="fas fa-angle-right"></i></a></li>
            <li class="YH-TG"><a>Xe tay ga<i class="fas fa-angle-right"></i></a></li>
            <li class="YH-XS"><a>Xe so<i class="fas fa-angle-right"></i></a></li>
        </ul>

        <!--xe the thao-->
        <ul class="detail-drop" id="YH-TT">
            <li class="arrow"><span class="fas fa-arrow-left"></span>Xe the thao</li>
            <li><a id="YH-TT-TFX-item">TFX</a></li>
            <li><a id="YH-TT-MT15-item">MT-15</a></li>
            <li><a id="YH-TT-YZFR3-item">YZF-R3</a></li>
            <li><a id="YH-TT-YZFR15-item">YZF-R15</a></li>
            <li><a id="YH-TT-MT03-item">MT-03</a></li>
        </ul>

        <!--xe tay ga-->
        <ul class="detail-drop" id="YH-TG">
            <li class="arrow"><span class="fas fa-arrow-left"></span>Xe tay ga</li>
            <li><a id="YH-TG-Acruzo-item">Acruzo</a></li>
            <li><a id="YH-TG-Freego-item">Freego</a></li>
            <li><a id="YH-TG-Latte-item">Latte</a></li>
            <li><a id="YH-TG-Grande-item">Grande</a></li>
            <li><a id="YH-TG-NVX-item">NVX</a></li>
            <li><a id="YH-TG-Janus-item">Janus</a></li>
        </ul>

        <!--xe so-->
        <ul class="detail-drop" id="YH-XS">
            <li class="arrow"><span class="fas fa-arrow-left"></span>Xe so</li>
            <li><a id="YH-XS-Sirius-item">Sirius</a></li>
            <li><a id="YH-XS-SiriusF1-item">Sirius F1</a></li>
            <li><a id="YH-XS-Jupiter-item">Jupiter</a></li>
            <li><a id="YH-XS-Exciter-item">Exciter</a></li>
        </ul>

    </div>

    <!-- cards container -->
    <div class="product-list">

        <!--list for YH-TT-->
        <section class="product" id="YH-TT-LIST">
            <!--list for YH-TT-TFX-->
            <div class="product-container" id="YH-TT-TFX">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeTheThao/TFX 150/b07-3.png" class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">TFX 150</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 72.900.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TT-YZFR3-->
            <div class="product-container" id="YH-TT-YZFR3">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeTheThao/YZF-R3/2020_YZF320-A_DPBMC_USA_S3_RGB.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">YZF-R3</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 129.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TT-YZFR15-->
            <div class="product-container" id="YH-TT-YZFR15">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <a href="productDetail.html">
                            <img src="img/XeMay/Yamaha/XeTheThao/YZF-R15/R15_BLUE_IDN_2020.png" class="product-thumb"
                                 alt=""></a>
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">YZF-R15</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 70.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeTheThao/YZF-R15 PHIÊN BẢN GIỚI HẠN MONSTER ENERGY YAMAHA MOTOGP/R15-Monster-001-1.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">YZF-R15 PHIÊN BẢN GIỚI HẠN MONSTER ENERGY YAMAHA MOTOGP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 72.000.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TT-MT03-->
            <div class="product-container" id="YH-TT-MT03">
                <div class="product-card">
                    <div class="product-image">
                        <a href="productDetail.html">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/Yamaha/XeTheThao/MT-03/2018-Yamaha-MT320-EU-Midnight_Black-Studio-001-03-copy.png"
                                 class="product-thumb" alt=""></a>
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">MT-03</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 124.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TT-MT15-->
            <div class="product-container" id="YH-TT-MT15">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeTheThao/MT-15/MT15-Black-001.png" class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">MT-15</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ  69.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
        </section>

        <!--list for YH-TG-->
        <section class="product" id="YH-TG-LIST">
            <!--list for YH-TG-Acruzo-->
            <div class="product-container" id="YH-TG-Acruzo">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/ACRUZO/ACRUZO PHIÊN BẢN CAO CẤP (DELUXE)/Acruzo-6.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">ACRUZO</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 33.490.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TG-Freego-->
            <div class="product-container" id="YH-TG-Freego">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Freego/FREEGO PHIÊN BẢN TIÊU CHUẨN/FreeGo-Red-002-1.png"
                             height="400" class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">FREEGO TIÊU CHUẨN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 32.990.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Freego/FREEGO S PHIÊN BẢN ĐẶC BIỆT/FreeGo-S-Mat-Blue-002.png"
                             height="400" class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">FREEGO S PHIÊN BẢN ĐẶC BIỆT</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 38.990.000  <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TG-NVX-->
            <div class="product-container" id="YH-TG-NVX">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 VVA THẾ HỆ II PHIÊN BẢN GIỚI HẠN MONSTER ENERGY YAMAHA MOTOGP/X30-Monster-002.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">NVX 155 VVA THẾ HỆ II PHIÊN BẢN GIỚI HẠN MONSTER ENERGY YAMAHA
                            MOTOGP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 54.000.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 VVA THẾ HỆ II MÀU MỚI/NVX-Bluish-Gray-002.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">NVX 155 VVA THẾ HỆ II MÀU MỚI</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 53.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 VVA THẾ HỆ II/NVX155-Bright-Grey-002.png" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">NVX 155 VVA THẾ HỆ II</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 53.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 THẾ HỆ I PHIÊN BẢN DOXOU/NVX-Doxou-2019-002.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">NVX 155 THẾ HỆ I PHIÊN BẢN DOXOU</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 52.740.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/NVX/NVX 155 THẾ HỆ I/NVX-Mat-Blue-002.png" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">NVX 155 THẾ HỆ I</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 52.240.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TG-Janus-->
            <div class="product-container" id="YH-TG-Janus">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Janus/JANUS PHIÊN BẢN ĐẶC BIỆT (PREMIUM)/Janus-Mat-Blue-002-1.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JANUS PHIÊN BẢN ĐẶC BIỆT (PREMIUM)</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 31.490.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Janus/JANUS PHIÊN BẢN TIÊU CHUẨN (STANDARD)/Janus-Red-Metallic-002.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JANUS PHIÊN BẢN TIÊU CHUẨN (STANDARD)</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 27.990.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Janus/JANUS PHIÊN BẢN GIỚI HẠN (LIMITED)/Janus-Mat-Black-002.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JANUS PHIÊN BẢN GIỚI HẠN (LIMITED)</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 31.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TG-Grande-->
            <div class="product-container" id="YH-TG-Grande">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Grande/GRANDE BLUE CORE HYBRID PHIÊN BẢN GIỚI HẠN/New-Grande-Mat-Black-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>

                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GRANDE BLUE CORE HYBRID PHIÊN BẢN GIỚI HẠN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 50.000.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Grande/GRANDE BLUE CORE HYBRID PHIÊN BẢN TIÊU CHUẨN/New-Grande-Black-Metallic-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GRANDE BLUE CORE HYBRID PHIÊN BẢN TIÊU CHUẨN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 45.500.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Grande/GRANDE BLUE CORE HYBRID PHIÊN BẢN ĐẶC BIỆT/New-Grande-Mat-Blue-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GRANDE BLUE CORE HYBRID PHIÊN BẢN ĐẶC BIỆT</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Grande/GRANDE BLUE CORE PHIÊN BẢN CAO CẤP (DELUXE)/Grande-7-2.png"
                             alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GRANDE BLUE CORE PHIÊN BẢN CAO CẤP (DELUXE)</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 49.500.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-TG-Latte-->
            <div class="product-container" id="YH-TG-Latte">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Latte/LATTE PHIÊN BẢN TIÊU CHUẨN/den7.png" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">LATTE PHIÊN BẢN TIÊU CHUẨN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 37.490.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeGa/Latte/LATTE PHIÊN BẢN GIỚI HẠN/Latte-Limited-002.png" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">LATTE PHIÊN BẢN GIỚI HẠN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 37.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
        </section>

        <!--list for YH-XS-->
        <section class="product" ID="YH-XS-LIST">
            <!--list for YH-XS-Sirius-->
            <div class="product-container" id="YH-XS-Sirius">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/SIRIUS/SIRIUS PHIÊN BẢN PHANH CƠ/do-den-2.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS PHIÊN BẢN PHANH CƠ</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 19.000.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/SIRIUS/SIRIUS PHIÊN BẢN PHANH CƠ MÀU MỚI/Sirius-Black-Metallic-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS PHIÊN BẢN PHANH CƠ MÀU MỚI</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 19.000.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/SIRIUS/SIRIUS PHIÊN BẢN PHANH ĐĨA/Sirius-Do-Cab-Disk-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS PHIÊN BẢN PHANH ĐĨA</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 20.400.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/SIRIUS/SIRIUS PHIÊN BẢN RC VÀNH ĐÚC/Sirius-Bluish-Gray-Metallic-Disk-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS PHIÊN BẢN RC VÀNH ĐÚC</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 21.800.000<span class="actual-price">0</span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-XS-SiriusF1-->
            <div class="product-container" id="YH-XS-SiriusF1">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI HOÀN TOÀN MỚI PHIÊN BẢN PHANH CƠ/STD-Black-Metallic-Y-Hub-002-copy.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI HOÀN TOÀN MỚI PHIÊN BẢN PHANH CƠ</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 21.040.000 <span class="actual-price">0</span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI HOÀN TOÀN MỚI PHIÊN BẢN PHANH ĐĨA/STD-Black-Metallic-Y-002-copy.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI HOÀN TOÀN MỚI PHIÊN BẢN PHANH ĐĨA</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 22.040.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI PHIÊN BẢN PHANH CƠ/Sirius-Black-Hub-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI PHIÊN BẢN PHANH CƠ</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 20.340.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI PHIÊN BẢN PHANH ĐĨA/Sirius-Black-Disk-002-2.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI PHIÊN BẢN PHANH ĐĨA</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 21.340.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI PHIÊN BẢN RC VÀNH ĐÚC/Sirius-Grey-Orange-RC-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI PHIÊN BẢN RC VÀNH ĐÚC</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 23.190.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Sirius FI/SIRIUS FI RC HOÀN TOÀN MỚI PHIÊN BẢN VÀNH ĐÚC/RC-Black-Metallic-Y-002-copy.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">SIRIUS FI RC HOÀN TOÀN MỚI PHIÊN BẢN VÀNH ĐÚC</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 23.890.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-XS-Jupiter-->
            <div class="product-container" id="YH-XS-Jupiter">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Jupiter/JUPITER FI PHIÊN BẢN GIỚI HẠN/Jupiter-Pearl-White-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JUPITER FI PHIÊN BẢN GIỚI HẠN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 30.200.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Jupiter/JUPITER FI PHIÊN BẢN GP/Jupiter-GP-002-1.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JUPITER FI PHIÊN BẢN GP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 30.200.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Jupiter/JUPITER FI PHIÊN BẢN TIÊU CHUẨN/Jupiter-Mat-Black-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JUPITER FI PHIÊN BẢN TIÊU CHUẨN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 29.600.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Jupiter/JUPITER FI PHIÊN BẢN TIÊU CHUẨN MÀU MỚI/Jupiter-Mat-Black-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">JUPITER FI PHIÊN BẢN TIÊU CHUẨN MÀU MỚI</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 30.200.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for YH-XS-Exciter-->
            <div class="product-container" id="YH-XS-Exciter">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN 60 NĂM YAMAHA TRANH TÀI MOTOGP/60th-WHITE-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN 60 NĂM YAMAHA TRANH TÀI MOTOGP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 51.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 150 PHIÊN BẢN GIỚI HẠN/Exciter-Blue-Orange-002-1.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 150 PHIÊN BẢN GIỚI HẠN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 47.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 150 PHIÊN BẢN GP/Exciter-GP-002-1.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 150 PHIÊN BẢN GP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 47.490.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 150 PHIÊN BẢN MONSTER ENERGY YAMAHA MOTOGP/Exciter-Monster-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 150 PHIÊN BẢN MONSTER ENERGY YAMAHA MOTOGP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 48.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 150 PHIÊN BẢN RC/Exciter-Grey-002-1.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 150 PHIÊN BẢN RC</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 46.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN CAO CẤP/Exciter-155-Mat-Black-smartkey-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN CAO CẤP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 49.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN GIỚI HẠN/Ex155-Yellow-Grey-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN GIỚI HẠN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 50.490.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN GIỚI HẠN MASTER ART OF STREET/Above-me-Only-Sky-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN GIỚI HẠN MASTER ART OF STREET</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 51.490.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN GP/Exciter-155-GP-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN GP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 50.490.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN MONSTER ENERGY MOTOGP/MONSTER-02-copy.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN MONSTER ENERGY MOTOGP</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 51.490.000 <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/Yamaha/XeSo/Exciter/EXCITER 155 VVA PHIÊN BẢN TIÊU CHUẨN/Exciter-155-Glossy-Black-002.png"
                             class="product-thumb" alt="">
                        <button class="card-btn">view detail</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">EXCITER 155 VVA PHIÊN BẢN TIÊU CHUẨN</h2>
                        <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                        <span class="price">Từ 46.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
        </section>

    </div>
</div>

<footer></footer>

<!-- some action for menu bar on left-->
<script>
    const menubar = document.querySelector('.menu-bar');
    const detailDrop = document.querySelectorAll('.detail-drop');
    const yhtt = document.querySelector('.YH-TT');
    const yhtg = document.querySelector('.YH-TG');
    const yhxs = document.querySelector('.YH-XS');

    const productList = document.querySelectorAll('.product');
    const productContainers = document.querySelectorAll('.product-container');

    const yhttList = document.querySelector('#YH-TT-LIST');
    const yhtt_mt03 = document.querySelector('#YH-TT-MT03');
    const yhtt_yzfr15 = document.querySelector('#YH-TT-YZFR15');
    const yhtt_yzfr3 = document.querySelector('#YH-TT-YZFR3');
    const yhtt_mt15 = document.querySelector('#YH-TT-MT15');
    const yhtt_tfx = document.querySelector('#YH-TT-TFX');

    const yhtgList = document.querySelector('#YH-TG-LIST');
    const yhtg_acruzo = document.querySelector('#YH-TG-Acruzo');
    const yhtg_janus = document.querySelector('#YH-TG-Janus');
    const yhtg_freego = document.querySelector('#YH-TG-Freego');
    const yhtg_nvx = document.querySelector('#YH-TG-NVX');
    const yhtg_latte = document.querySelector('#YH-TG-Latte');
    const yhtg_grandee = document.querySelector('#YH-TG-Grande');

    const yhxsList = document.querySelector('#YH-XS-LIST');
    const yhxs_exciter = document.querySelector('#YH-XS-Exciter');
    const yhxs_sirius = document.querySelector('#YH-XS-Sirius');
    const yhxs_siriusf1 = document.querySelector('#YH-XS-SiriusF1');
    const yhxs_jupiter = document.querySelector('#YH-XS-Jupiter');

    const arrow = document.querySelectorAll('.arrow');

    detailDrop.forEach((item, i) => {
        arrow[i].addEventListener('click', () => {
            menubar.style.marginLeft = '0';
            detailDrop[i].style.display = 'none';
            location.reload();
        })
    })

    yhtt.addEventListener('click', () => {
        let id = yhtt.classList.value;
        menubar.style.marginLeft = '-250px';
        document.getElementById(id).style.display = 'block';
        productList.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhttList.classList.remove('hide');
    })
    document.getElementById('YH-TT-MT03-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtt_mt03.classList.remove('hide');
    })
    document.getElementById('YH-TT-MT15-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtt_mt15.classList.remove('hide');
    })
    document.getElementById('YH-TT-TFX-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtt_tfx.classList.remove('hide');
    })
    document.getElementById('YH-TT-YZFR15-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtt_yzfr15.classList.remove('hide');
    })
    document.getElementById('YH-TT-YZFR3-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtt_yzfr3.classList.remove('hide');
    })

    yhtg.addEventListener('click', () => {
        let id = yhtg.classList.value;
        menubar.style.marginLeft = '-250px';
        document.getElementById(id).style.display = 'block';
        productList.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtgList.classList.remove('hide');
    })
    document.getElementById('YH-TG-Acruzo-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_acruzo.classList.remove('hide');
    })
    document.getElementById('YH-TG-Janus-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_janus.classList.remove('hide');
    })
    document.getElementById('YH-TG-Freego-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_freego.classList.remove('hide');
    })
    document.getElementById('YH-TG-NVX-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_nvx.classList.remove('hide');
    })
    document.getElementById('YH-TG-Latte-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_latte.classList.remove('hide');
    })
    document.getElementById('YH-TG-Grande-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhtg_grandee.classList.remove('hide');
    })

    yhxs.addEventListener('click', () => {
        let id = yhxs.classList.value;
        menubar.style.marginLeft = '-250px';
        document.getElementById(id).style.display = 'block';
        productList.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhxsList.classList.remove('hide');
    })
    document.getElementById('YH-XS-Exciter-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhxs_exciter.classList.remove('hide');
    })
    document.getElementById('YH-XS-Sirius-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhxs_sirius.classList.remove('hide');
    })
    document.getElementById('YH-XS-SiriusF1-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhxs_siriusf1.classList.remove('hide');
    })
    document.getElementById('YH-XS-Jupiter-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        yhxs_jupiter.classList.remove('hide');
    })


</script>

<script src="../js/nav.js"></script>
<script src="../js/footer.js"></script>
<script src="../js/home.js"></script>


</body>
</html>