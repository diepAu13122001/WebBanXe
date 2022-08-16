<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="product" scope="request" type="Entity.Product"/>
<jsp:useBean id="brand" scope="request" type="Entity.ProductBrand"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>${product.prd_name}</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/product.css">
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
<jsp:include page="jsp/nav.jsp"/>
<section class="product-details">
    <div class="image-slider">
        <div class="product-images">
            <jsp:useBean id="prdColors" scope="request" type="java.util.List"/>
            <c:forEach var="color" items="${prdColors}">
                <img src="${color[1]}" class="active" alt="${product.prd_name} ${color[0]}" id="${color[0]}">
            </c:forEach>
        </div>
    </div>
    <div class="details">
        <h2 class="product-brand">${brand.brd_name}</h2>
        <p class="product-short-des">${product.prd_name}</p>
        <span class="product-price">${product.prd_soldPrice}đ</span>
        <c:if test="${product.prd_discountPercent > 0}">
            <span class="product-actual-price">${product.prd_price}</span>
            <span class="product-discount">(Giảm ${product.prd_discountPercent}%)</span>
        </c:if>
        <p class="product-sub-heading">Chọn màu</p>
        <c:forEach var="color" items="${prdColors}">
            <input type="radio" name="color" value="${color[0]}" hidden for="${color[0]}">
            <label for="${color[0]}" class="color-radio-btn check">${color[0]}</label>
        </c:forEach>
        <div>
            <button class="btn cart-btn">Mua ngay</button>
            <button class="btn">Đặt cọc trước</button>
        </div>
    </div>
</section>
<section class="detail-des" style="text-align: center">
    <h2 class="heading">Mô tả chi tiết</h2>
    <jsp:useBean id="prdDetails" scope="request" type="java.util.List"/>
    <c:forEach items="${prdDetails}" var="detail">
        <c:choose>
            <c:when test="${detail[1] == 1}">
                <img src="${detail[0]}" alt="${product.prd_name} - detail">
            </c:when>
            <c:otherwise>
                <p>${detail[0]}</p>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</section>
<!-- cards container -->
<section class="product">
    <h2 class="product-category">sản phẩm bán chạy</h2>
    <div class="product-container">
        <jsp:useBean id="popList" scope="request" type="java.util.List"/>
        <c:forEach items="${popList}" var="item">
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
<footer>
    <jsp:include page="jsp/footer.jsp"/>
</footer>

<script src="js/home.js"></script>
<script src="js/product.js"></script>

</body>
</html>
