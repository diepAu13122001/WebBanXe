<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Suzuki</title>

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
            <li><a href="https://www.suzuki.com.vn/cus_suzuki.html">Thong tin ve hang</a></li>
            <li class="SK-CT"><a>Xe con tay<i class="fas fa-angle-right"></i></a></li>
            <li class="SK-TG"><a>Xe tay ga<i class="fas fa-angle-right"></i></a></li>
        </ul>

        <!--xe con tay-->
        <ul class="detail-drop" id="SK-CT">
            <li class="arrow"><span class="fas fa-arrow-left"></span>Xe con tay</li>
            <li><a id="SK-CT-Intruder-item">Intruder</a></li>
            <li><a id="SK-CT-GSX-item">GSX</a></li>
            <li><a id="SK-CT-GZ-item">GZ</a></li>
            <li><a id="SK-CT-GD-item">GD</a></li>
            <li><a id="SK-CT-Satria-item">Satria</a></li>
            <li><a id="SK-CT-Raider-item">Raider</a></li>
        </ul>

        <!--xe tay ga-->
        <ul class="detail-drop" id="SK-TG">
            <li class="arrow"><span class="fas fa-arrow-left"></span>Xe tay ga</li>
            <li><a id="SK-TG-Burgman-item">Burgman</a></li>
            <li><a id="SK-TG-Impulse-item">Impulse</a></li>
            <li><a id="SK-TG-Address-item">Address</a></li>
        </ul>

    </div>

    <!-- cards container -->
    <div class="product-list">

        <!--list for SK-CT-->
        <section class="product" id="SK-CT-LIST">
            <!--list for SK-CT-Intruder-->
            <div class="product-container" id="SK-CT-Intruder">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/intruder150/5.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">intruder150</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 31.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-CT-GSX-->
            <div class="product-container" id="SK-CT-GSX">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/GSX150Bandit2020/360_3.png" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GSX-150 Bandit 2020</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 68.900.000  <span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/GSX-R150/gsx-r150-360-3.png" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GSX-R150</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 71.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/GSX-S150/2.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GSX-s150</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 64.400.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-CT-GD-->
            <div class="product-container" id="SK-CT-GD">
                <div class="product-card">
                    <div class="product-image">
                        <a href="productDetail.html">
                            <span class="discount-tag"></span>
                            <img src="img/XeMay/suzuki/xecontay/GD110/4.jpg" class="product-thumb" alt=""></a>
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GD110</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 28.990.000<span class="actual-price"></span></span>
                    </div>
                </div>

            </div>
            <!--list for SK-CT-Raider-->
            <div class="product-container" id="SK-CT-Raider">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/raiderR150/5026ff08ccfa6741ce0728c8344cd92c.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">raiderR150</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 49.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-CT-GZ-->
            <div class="product-container" id="SK-CT-GZ">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/GZ150-A/8.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">GZ150-AC</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 68.500.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-CT-Satria-->
            <div class="product-container" id="SK-CT-Satria">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xecontay/satriaF150/xanh-den.png" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">satriaF150</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 51.990.000 <span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
        </section>

        <!--list for SK-TG-->
        <section class="product" id="SK-TG-LIST">
            <!--list for SK-TG-Impulse-->
            <div class="product-container" id="SK-TG-Impulse">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xetayga/impulse/4661438e8e201bc2ef5a22752b5853a0.png" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">impulse</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 31.990.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-TG-Address-->
            <div class="product-container" id="SK-TG-Address">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xetayga/address/mau-trang.jpg" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">address</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 28.290.000<span class="actual-price"></span></span>
                    </div>
                </div>
            </div>
            <!--list for SK-TG-Burgman-->
            <div class="product-container" id="SK-TG-Burgman">
                <div class="product-card">
                    <div class="product-image">
                        <span class="discount-tag"></span>
                        <img src="img/XeMay/suzuki/xetayga/burgman-street/360-1.png" class="product-thumb" alt="">
                        <button class="card-btn">add to wiimpulselist</button>
                    </div>
                    <div class="product-info">
                        <h2 class="product-brand">burgman-street</h2>
                        <!--                <p class="product-impulseort-des">a impulseort line about the cloth...</p>-->
                        <span class="price">Từ 49.500.000<span class="actual-price"></span></span>
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
    const skct = document.querySelector('.SK-CT');
    const sktg = document.querySelector('.SK-TG');

    const productList = document.querySelectorAll('.product');
    const productContainers = document.querySelectorAll('.product-container');

    const skctList = document.querySelector('#SK-CT-LIST');
    const skct_raider = document.querySelector('#SK-CT-Raider');
    const skct_gsx = document.querySelector('#SK-CT-GSX');
    const skct_gd = document.querySelector('#SK-CT-GD');
    const skct_gz = document.querySelector('#SK-CT-GZ');
    const skct_satria = document.querySelector('#SK-CT-Satria');
    const skct_intruder = document.querySelector('#SK-CT-Intruder');

    const sktgList = document.querySelector('#SK-TG-LIST');
    const sktg_burgman = document.querySelector('#SK-TG-Burgman');
    const sktg_impulse = document.querySelector('#SK-TG-Impulse');
    const sktg_address = document.querySelector('#SK-TG-Address');

    const arrow = document.querySelectorAll('.arrow');

    detailDrop.forEach((item, i) => {
        arrow[i].addEventListener('click', () => {
            menubar.style.marginLeft = '0';
            detailDrop[i].style.display = 'none';
            location.reload();
        })
    })

    skct.addEventListener('click', () => {
        let id = skct.classList.value;
        menubar.style.marginLeft = '-250px';
        document.getElementById(id).style.display = 'block';
        productList.forEach((item, i) => {
            item.classList.add('hide');
        })
        skctList.classList.remove('hide');
    })
    document.getElementById('SK-CT-Raider-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_raider.classList.remove('hide');
    })
    document.getElementById('SK-CT-GSX-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_gsx.classList.remove('hide');
    })
    document.getElementById('SK-CT-GZ-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_gz.classList.remove('hide');
    })
    document.getElementById('SK-CT-GD-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_gd.classList.remove('hide');
    })
    document.getElementById('SK-CT-Intruder-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_intruder.classList.remove('hide');
    })
    document.getElementById('SK-CT-Satria-item').addEventListener('click', () => {
            productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        skct_satria.classList.remove('hide');
    })

    sktg.addEventListener('click', () => {
        let id = sktg.classList.value;
        menubar.style.marginLeft = '-250px';
        document.getElementById(id).style.display = 'block';
        productList.forEach((item, i) => {
            item.classList.add('hide');
        })
        sktgList.classList.remove('hide');
    })
    document.getElementById('SK-TG-Burgman-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        sktg_burgman.classList.remove('hide');
    })
    document.getElementById('SK-TG-Impulse-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        sktg_impulse.classList.remove('hide');
    })
    document.getElementById('SK-TG-Address-item').addEventListener('click', () => {
        productContainers.forEach((item, i) => {
            item.classList.add('hide');
        })
        sktg_address.classList.remove('hide');
    })

</script>

<script src="../js/nav.js"></script>
<script src="../js/footer.js"></script>
<script src="../js/home.js"></script>


</body>
</html>