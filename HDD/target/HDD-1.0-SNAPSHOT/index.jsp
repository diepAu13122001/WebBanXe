<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/home.css">
    <style>
        body {
            background: white;
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'roboto', sans-serif;
            overflow-x: hidden;
        }

        .hide {
            display: none;
        }

        .first-banner {
            background: #ffb700;
            height: 30rem;
            width: 100%;
            display: flex;
        }

        .product-img {
            height: 90%;
            width: fit-content;
            float: left;
        }

        .product-img img {
            max-width: 120%;
            height: 110%;
        }

        .product-info {
            width: fit-content;
            margin-top: 8%;
        }

        .product-info .for-month {
            border-left: 10px solid black;
            padding: 5px 10px;
            font-size: 25px;
        }

        .product-info .product-name {
            margin: 0 0 25px 0;
            font-weight: 1000;
            font-size: 50px;
            text-transform: uppercase;
        }

        .product-info button {
            padding: 10px 20px;
            font-size: 20px;
            text-transform: capitalize;
        }

        .product-info .view-detail {
            background: transparent;
        }

        .product-info .view-detail:hover {
            background: black;
            color: white;
        }
    </style>
</head>
<body>
<nav class="navbar"></nav>
<!-- banner-->
<div class="first-banner">
    <div class="product-img">
        <!--        <img src="img/banner/motor-banner.png" alt="">-->
        <!--        <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2021/11/Jupiter-Mat-Black-004.png" alt="">-->
        <img src="https://cdn.honda.com.vn/motorbikes/May2022/yXVDCgQDZJcYqcCZPzyQ.png" alt="">
    </div>
    <div class="product-info">
        <p class="for-month">Sản phẩm nổi bật của tháng 6</p>
        <p class="product-name">Yamaha CB1000R 2021</p>
        <button class="view-detail">xem chi tiết</button>
    </div>
</div>
<!-- new arrival -->
<section class="product">
    <h2 class="product-category">HÀNG MỚI VỀ</h2>
    <div class="product-container">
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="discount-tag">5% off</span>
                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-Orange-004.png"
                     class="product-thumb" alt="">
                <button class="card-btn">view detail</button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
                <!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
    </div>
    <div class="view-more">
        <input type="button" value="Xem thêm">
    </div>
</section>
<!--connecting brand-->
<section class="product" style="background: #ffb700">
    <h2 class="product-category">NHÃN HÀNG HỢP TÁC</h2>
    <div class="product-container">
        <img class="brand-logo"
             src="https://brademar.com/wp-content/uploads/2022/05/Yamaha-Logo-PNG-1998-%E2%80%93-Now.png" alt="">
        <img class="brand-logo"
             src="https://brademar.com/wp-content/uploads/2022/05/Suzuki-Logo-PNG-1958-%E2%80%93-Now-3.png" alt="">
        <img class="brand-logo"
             src="https://orange-county-delamomotorsports.powersportsx.com/wp-content/uploads/sites/49/2019/05/honda.png"
             alt="">
    </div>
</section>
<!--our services-->
<section class="product">
    <h2 class="product-category">giá trị cốt lõi HDD</h2>
    <div class="product-container">
        <div class="service-card" style="background: #ffb700;">
            <div class="service-icon">
                <img src="https://img.icons8.com/ios-filled/60/000000/delivery--v1.png"/>
            </div>
            <h1 class="service-title">fast delivery</h1>
            <h1 class="service-contents">kjsahldkha dksahdkj ksahhdkhas dkkhhsakd dhslkahd kdhsakjhds kdhsadkjjsha
                dkjsajhdkkjjsa kdhaskksdshhs dkksajhdkjsh dksajhdkjhsa dkasjhdkjsj sakjhdskjh </h1>
        </div>
        <div class="service-card" style="background: black; color: white">
            <p class="service-icon">
                <img src="https://img.icons8.com/ios-glyphs/60/FFFFFF/price-tag-euro.png"/>
            </p>
            <h1 class="service-title">Lower price</h1>
            <h1 class="service-contents">kjsahldkha dksahdkj ksahhdkhas dkkhhsakd dhslkahd kdhsakjhds kdhsadkjjsha
                dkjsajhdkkjjsa kdhaskksdshhs dkksajhdkjsh dksajhdkjhsa dkasjhdkjsj sakjhdskjh </h1>
        </div>
        <div class="service-card" style="background: #ffb700;">
            <div class="service-icon">
                <img src="https://img.icons8.com/external-glyph-geotatah/60/000000/external-coverage-workmen-compensation-glyph-glyph-geotatah.png"/>
            </div>
            <h1 class="service-title">Best insurance</h1>
            <h1 class="service-contents">kjsahldkha dksahdkj ksahhdkhas dkkhhsakd dhslkahd kdhsakjhds kdhsadkjjsha
                dkjsajhdkkjjsa kdhaskksdshhs dkksajhdkjsh dksajhdkjhsa dkasjhdkjsj sakjhdskjh </h1>
        </div>
    </div>
</section>
<!--contact us-->
<section class="product">
    <h2 class="product-category">LIÊN HỆ</h2>
    <div class="product-container" style="margin-top: -10px">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.482123844294!2d106.65953271431701!3d10.774337962179613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ec379e4454d%3A0xfb88907e5b1647d1!2zMzUwIFTDtCBIaeG6v24gVGjDoG5oLCBQaMaw4budbmcgMTQsIFF14bqtbiAxMCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1659159891939!5m2!1svi!2s"
                width="500" height="390" style="border:0; margin-top: 10px" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        <form action="" class="contact-form">
            <div class="form-row">
                <input type="text" placeholder="Name">
                <input type="text" placeholder="Phone">
            </div>
            <input type="text" placeholder="Email address">
            <textarea name="mes" id="contact-mes" cols="30" rows="10" placeholder="Message"></textarea>
            <input type="submit" value="Contact us">
        </form>
    </div>
</section>
<!--showroom list-->
<section class="product">
    <div class="product-container">
        <div class="showroom-list">
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: Tòa C Tầng 12, Toà Hồ Gươm Plaza, Số 102 Trần Phú, Phường Mộ Lao, Quận Hà Đông</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
            <div class="showroom">
                <div class="showroom-name">HN - 03 Lương Yên</div>
                <div class="showroom-info">
                    <p>Địa chỉ: CenX Sun Acora, Tầng 4, Toà nhà Sun Plaza Ancora, Số 3 Lương Yên, Phường Bạch Đằng, Quận
                        Hai Bà Trưng, Hà Nội</p>
                    <p>Hotline: 02477705666</p>
                    <p>Giờ mở cửa: 8h - 16h30</p>
                </div>
            </div>
        </div>
    </div>
</section>
<footer></footer>

<script src="js/nav.js"></script>
<script src="js/footer.js"></script>
<script src="js/home.js"></script>
</body>
</html>