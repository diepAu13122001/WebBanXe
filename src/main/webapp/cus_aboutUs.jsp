<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 8/10/2022
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/aboutUs.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="jsp/nav.jsp"/>

<div class="intro-logo">
    <img src="https://www.linkpicture.com/q/dark-logo.png" alt="">
</div>

<!--intro website-->
<section class="product">
    <h2 class="product-category">HDD là gì?</h2>
    <div class="product-container">
        <div class="paragraph">
            <p>Xe máy đã trở thành một người bạn đồng hành không thể thiếu trong mỗi chuyến đi của người Việt Nam mình,
                do
                đó chúng mình quyết định lập ra website HDD này để phục vụ cho nhu cầu của khách hàng. Nhóm đã ưu tiên
                chọn
                lọc các sản phẩm đến từ ba hãng lớn chuyên cung cấp xe máy ở Việt Nam, với mong muốn mang lại những sản
                phẩm
                chất lượng nhất cho người mua mà giá thành lại hợp lý, phù hợp với đa số người tiêu dùng ở Việt Nam.</p>
            <br>
            <p>Chúng mình tập trung xây dựng trang web theo phong cách tối giản, dễ thao tác. Phần màu sắc và font chữ
                đã
                được các thành viên của nhóm lựa chọn khá tỉ mỉ, cũng như các bố cục hay các thành phần trong trang web
                đều
                được thiết kế sao cho đồng nhất và phù hợp nhất có thể. Chúng mình chọn ngôn ngữ HTML, CSS, JS cho phần
                font-end và Java cho phần back-end, ngoài ra nhóm còn sử dụng font-awesome để hỗ trợ trong việc thiết kế
                giao diện web. Nhóm chúng mình vẫn đang nỗ lực cải thiện website cả về phần giao diện lẫn chức năng.
                Mong là
                sản phẩm của tụi mình có thể mang đến cho bạn một điều mới mẻ nào đó.</p>
        </div>
    </div>
</section>

<!--about our services-->
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

<!--intro team members-->
<section class="product">
    <h2 class="product-category">Thành viên nhóm</h2>
    <div class="product-container">
        <div class="member">
            <img src="https://images.onlinelabels.com/images/clip-art/knollbaco/Face%20of%20a%20girl%20smiling-190652.png" alt="">
            <div class="name-mb">Âu Ngọc Diệp</div>
            <div class="id-and-class">19130038 - DH19DTB</div>
            <div class="about">Thiết kế giao diện và code một số chức năng cơ bản của web
            </div>
        </div>
        <div class="member">
            <img src="https://clipground.com/images/human-clipart-2.jpg" alt="">
            <div class="name-mb">Huỳnh Minh Hiếu</div>
            <div class="id-and-class">19130069 - DH19DTA</div>
            <div class="about">Tìm hình ảnh và thông tin sản phẩm, quản lý github</div>
        </div>
        <div class="member">
            <img src="https://images.onlinelabels.com/images/clip-art/knollbaco/Face%20of%20a%20girl%20smiling-190652.png" alt="">
            <div class="name-mb">Nguyễn Thị Thu Diệu</div>
            <div class="id-and-class">19130041 - DH19DTC</div>
            <div class="about">Tạo cơ sở dữ liệu cho trang web, viết word</div>
        </div>
    </div>
</section>

<!--contact us-->
<section class="product" style="margin-top: -35px">
    <h2 class="product-category">CÁC CHI NHÁNH</h2>
    <div class="product-container" style="margin-top: -10px">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.482123844294!2d106.65953271431701!3d10.774337962179613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ec379e4454d%3A0xfb88907e5b1647d1!2zMzUwIFTDtCBIaeG6v24gVGjDoG5oLCBQaMaw4budbmcgMTQsIFF14bqtbiAxMCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1659159891939!5m2!1svi!2s"
                height="390" style="border:0; margin-top: 10px; grid-column-start: 1; grid-column-end: 4; width: 100%" allowfullscreen="" loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</section>

<!--showroom list-->
<section class="product">
    <div class="product-container">
        <div class="showroom-list-aboutUs">
            <jsp:useBean id="allShowroom" scope="request" type="java.util.List"/>
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
