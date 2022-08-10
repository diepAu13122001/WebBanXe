<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Seller Dashboard</title>
    <link rel="stylesheet" href="../css/signup.css">
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/search.css">
    <link rel="stylesheet" href="../css/seller.css">
</head>
<body>

<img src="../img/loader.gif" class="loader" alt="">

<div class="alert-box">
    <img src="../img/error.png" class="alert-img" alt="">
    <p class="alert-msg">Error message</p>
</div>

<img src="../img/dark-logo.png" class="logo" alt="">

<!--product list-->
<div class="product-listing">
    <div class="add-product">
        <p class="add-product-title">add product</p>
        <button class="btn" onclick="location.href = 'addProduct.html'"> add product</button>
    </div>
    <img src="../img/no-products.png" class="no-product-img hide" alt="">

    <!-- delete alert-->
    <div class="delete-alert">
        <div class="alert">
            <button class="close-btn"><img src="../img/close.png" alt=""></button>
            <img src="../img/delete-warning.png" class="delete-svg" alt="">
            <p class="text">are you sure? you want to delete this product</p>
            <button class="delete-btn">delete</button>
        </div>
    </div>

    <!-- cards -->
    <div class="product-container">
        <div class="product-card">
            <div class="product-image">
                <span class="tag">Draft</span>
                <img src="img\XeMay\HonDa\ConTay\Winner X\6hzkUOfaipBHiPw9dLu3.png" class="product-thumb" alt="">
                <button class="card-action-btn edit-btn"><img src="../img/edit.png" alt=""></button>
                <button class="card-action-btn open-btn"><img src="../img/open.png" alt=""></button>
                <button class="card-action-btn delete-popup-btn" onclick="openDeletePopup(0)"><img src="../img/delete.png"
                                                                                                   alt=""></button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
<!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="tag">Draft</span>
                <img src="img\XeMay\HonDa\ConTay\Winner X\ntbrfRoHBjkK8HqbECwa.png" class="product-thumb" alt="">
                <button class="card-action-btn edit-btn"><img src="../img/edit.png" alt=""></button>
                <button class="card-action-btn open-btn"><img src="../img/open.png" alt=""></button>
                <button class="card-action-btn delete-popup-btn" onclick="openDeletePopup(1)"><img src="../img/delete.png"
                                                                                                   alt=""></button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Winner X</h2>
<!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">46.635.500<span class="actual-price">49.090.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="tag">Draft</span>
                <img src="img\XeMay\HonDa\XeSo\Super Cub C125/nrsqcdiLirob142y4Qbf.png" class="product-thumb" alt="">
                <button class="card-action-btn edit-btn"><img src="../img/edit.png" alt=""></button>
                <button class="card-action-btn open-btn"><img src="../img/open.png" alt=""></button>
                <button class="card-action-btn delete-popup-btn" onclick="openDeletePopup(2)"><img src="../img/delete.png"
                                                                                                   alt=""></button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Super Cub C125/</h2>
<!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">82.612.000<span class="actual-price">86.960.000</span></span>
            </div>
        </div>
        <div class="product-card">
            <div class="product-image">
                <span class="tag">Draft</span>
                <img src="img/XeMay/suzuki/xetayga/address/mau-den.jpg" class="product-thumb" alt=""></a>
                <button class="card-action-btn edit-btn"><img src="../img/edit.png" alt=""></button>
                <button class="card-action-btn open-btn"><img src="../img/open.png" alt=""></button>
                <button class="card-action-btn delete-popup-btn" onclick="openDeletePopup(3)"><img src="../img/delete.png"
                                                                                                   alt=""></button>
            </div>
            <div class="product-info">
                <h2 class="product-brand">Address</h2>
<!--                <p class="product-short-des">a short line about the cloth...</p>-->
                <span class="price">26.875.500 <span class="actual-price">28.290.000</span></span>
            </div>
        </div>
    </div>
</div>

<script src="../js/seller.js"></script>

</body>
</html>