<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/nav.css">
</head>
<body>
<nav class="navbar">
    <a href="${pageContext.request.contextPath}/Home"> <img src="https://www.linkpicture.com/q/dark-logo.png" class="brand-logo" alt=""></a>
    <ul class="links-container">
        <li class="link-item"><a href="${pageContext.request.contextPath}/Products" class="link">Sản phẩm</a></li>
        <li class="link-item"><a href="${pageContext.request.contextPath}/Insurances" class="link">Chính sách bảo hành</a></li>
        <li class="link-item"><a href="${pageContext.request.contextPath}/AboutUs" class="link">Về chúng tôi</a></li>
    </ul>
    <div class="nav-items">
        <a onclick="searchShow()">
            <img src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>
        </a>
        <a href="${pageContext.request.contextPath}/Purchase">
            <img src="https://img.icons8.com/ios-filled/60/000000/paid-bill.png"/>
        </a>
        <a href="${pageContext.request.contextPath}/Cart">
            <p id="numOfChosenProduct">12+</p>
            <img src="https://img.icons8.com/ios-glyphs/100/000000/shopping-cart--v1.png"/>
        </a>
    </div>
</nav>

<script>
    const linksContainerCode = `<ul class="links-container">
        <li class="link-item"><a href="${pageContext.request.contextPath}/Products" class="link">Sản phẩm</a></li>
        <li class="link-item"><a href="${pageContext.request.contextPath}/Insurances" class="link">Chính sách bảo hành</a></li>
        <li class="link-item"><a href="${pageContext.request.contextPath}/AboutUs" class="link">Về chúng tôi</a></li>
    </ul>`;
    const navItemsCode = `<div class="nav-items">
        <a onclick="searchShow()">
            <img src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>
        </a>
        <a href="${pageContext.request.contextPath}/Insurances">
            <img src="https://img.icons8.com/ios-filled/60/000000/paid-bill.png"/>
        </a>
        <a href="${pageContext.request.contextPath}/Cart">
            <p id="numOfChosenProduct">12+</p>
            <img src="https://img.icons8.com/ios-glyphs/100/000000/shopping-cart--v1.png"/>
        </a>
    </div>`;
    const cusSearchCode = `<div class="cus-search">
            <a>
               <img onclick="window.location='https://www.w3schools.com'" src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/>
                <input type="text" name="search-input" placeholder="Nhập từ khóa...">
                   <img onclick='searchHide()' id="del-search" src="https://img.icons8.com/sf-black-filled/40/000000/x.png"/>
               </a>
            </div>`;
    function searchShow() {
        document.querySelector(".links-container").remove();
        document.querySelector(".nav-items").remove();
        document.querySelector(".navbar").innerHTML += cusSearchCode;
    }

    function searchHide() {
        document.querySelector(".cus-search").remove();
        document.querySelector(".navbar").innerHTML += linksContainerCode + navItemsCode;
    }
</script>
</body>
</html>

