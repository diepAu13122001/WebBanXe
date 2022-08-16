<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/cart.css">
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
<jsp:include page="jsp/nav.jsp"/>

<!-- banner-->
<div class="first-banner">
    <div class="product-img">
        <jsp:useBean id="mostPopPrd" scope="request" type="Entity.Product"/>
        <img src="<c:out value="${mostPopPrd.prd_ava}"/>" alt="<c:out value="${mostPopPrd.prd_name}"/>">
    </div>
    <div class="product-info">
        <p class="for-month">Sản phẩm nổi bật</p>
        <p class="product-name">
            <jsp:useBean id="brdOfMostPopPrd" scope="request" type="java.lang.String"/>
            <c:out value="${brdOfMostPopPrd}"/> <c:out value="${mostPopPrd.prd_name}"/></p>
        <button class="view-detail"
                onclick="window.location = '${pageContext.request.contextPath}/Product?prd_id=${mostPopPrd.prd_id}'">xem chi
            tiết
        </button>
    </div>
</div>

<!-- new arrival -->
<section class="product">
    <h2 class="product-category">HÀNG MỚI VỀ</h2>
    <div class="product-container">
        <jsp:useBean id="newestList" scope="request" type="java.util.List"/>
        <c:forEach items="${newestList}" var="item">
            <div class="product-card">
                <div class="product-image">
                    <c:if test="${item.prd_discountPercent > 0}">
                        <span class="discount-tag">Giảm ${item.prd_discountPercent}%</span>
                    </c:if>
                    <img src="${item.prd_ava}" class="product-thumb" alt="">
                    <button class="card-btn"
                            onclick="window.location = '${pageContext.request.contextPath}/Product?prd_id=${item.prd_id}'">
                        Xem chi tiết
                    </button>
                </div>
                <div class="product-info">
                    <h2 class="product-brand">${item.prd_name}</h2>
                    <c:choose>
                        <c:when test="${item.prd_discountPercent == 0}">
                            <span class="price">${item.prd_price}đ</span>
                        </c:when>
                        <c:otherwise>
                            <span class="price">${item.prd_soldPrice}đ<span
                                    class="actual-price">${item.prd_price}đ</span></span>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="view-more">
        <input type="button" value="Xem thêm" onclick="window.location = '${pageContext.request.contextPath}/Products'">
    </div>
</section>

<!--connecting brand-->
<section class="product" style="background: #ffb700">
    <h2 class="product-category">NHÃN HÀNG HỢP TÁC</h2>
    <div class="product-container">
        <jsp:useBean id="allBrand" scope="request" type="java.util.List"/>
        <c:forEach var="brd" items="${allBrand}">
            <a href="${brd.brd_webAddress}">
                <img class="brand-logo" src="${brd.brd_logo}" alt="${brd.brd_name}">
            </a>
        </c:forEach>
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
    <h2 class="product-category">TRẢI NGHIỆM SẢN PHẨM</h2>
    <div class="product-container" style="margin-top: -10px">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.482123844294!2d106.65953271431701!3d10.774337962179613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ec379e4454d%3A0xfb88907e5b1647d1!2zMzUwIFTDtCBIaeG6v24gVGjDoG5oLCBQaMaw4budbmcgMTQsIFF14bqtbiAxMCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1659159891939!5m2!1svi!2s"
                width="500" height="390" style="border:0; margin-top: 10px" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
        <form action="" class="contact-form">
            <div class="cus-gender">
                <input type="radio" name="gender" id="Mr"><label for="Mr">Anh</label>
                <input type="radio" name="gender" id="Ms"><label for="Ms">Chị</label>
            </div>
            <div class="form-row">
                <input type="text" placeholder="Name">
                <input type="text" placeholder="Phone">
            </div>
            <div class="address-chosen-table">
                <div class="for-showroom">
                    <p class="title">Chọn địa chỉ showroom gần bạn nhất</p>
                    <div class="showroom-list" style="display: block;">
                        <jsp:useBean id="allShowroom" scope="request" type="java.util.List"/>
                        <c:forEach items="${allShowroom}" var="shr">
                            <c:choose>
                                <c:when test="${allShowroom.indexOf(shr) == 0}">
                                    <div class="showroom-address selected">
                                        <input type="radio" id="${shr.shr_id}" name="address" checked>
                                        <label for="${shr.shr_id}">${shr.shr_address}</label>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="showroom-address">
                                        <input type="radio" id="${shr.shr_id}" name="address">
                                        <label for="${shr.shr_id}">${shr.shr_address}</label>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <textarea name="mes" id="contact-mes" cols="30" rows="5"
                      placeholder="Lưu ý của bạn (nhu cầu xem, yêu cầu về người tư vấn, ...)"></textarea>
        </form>
        <input class="submit-ex-req" type="submit" value="ĐĂNG KÝ NGAY"
               style="grid-column-start: 1; grid-column-end: 3">
    </div>
</section>

<!--showroom list-->
<section class="product">
    <div class="product-container">
        <div class="showroom-list-aboutUs">
            <c:forEach var="shr" items="${allShowroom}">
                <div class="showroom">
                    <div class="showroom-name">${shr.shr_name}</div>
                    <div class="showroom-info">
                        <p>Địa chỉ: ${shr.shr_address}</p>
                        <p>Hotline: ${shr.shr_phoneNum}</p>
                        <p>Giờ mở cửa: ${shr.shr_openTime} - ${shr.shr_closeTime}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<footer>
    <jsp:include page="jsp/footer.jsp"/>
</footer>

<script src="js/home.js"></script>
</body>
</html>