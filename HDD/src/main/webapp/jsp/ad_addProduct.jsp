<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link rel="stylesheet" href="../css/signup.css">
    <link rel="stylesheet" href="../css/addProduct.css">

</head>
<body>

<img src="../img/loader.gif" class="loader" alt="">

<div class="alert-box">
    <img src="../img/error.png" class="alert-img" alt="">
    <p class="alert-msg">Error message</p>
</div>

<img src="../img/dark-logo.png" class="logo" alt="">

<!--add product form-->
<div class="form">
    <input type="text" id="product-name" placeholder="product name">
    <input type="text" id="short-des" placeholder="short line about the product">
    <textarea id="des" placeholder="detail description"></textarea>
    <!-- product image-->
    <div class="product-info">
        <div class="product-img">
            <p class="text">product image</p></div>
        <div class="upload-img-sec">
            <!-- upload inputs -->
            <p class="text"><img src="../img/camera.png" alt="">upload image</p>
            <div class="upload-catalogue">
                <input type="file" class="file-upload" id="first-file-upload-btn" hidden>
                <label for="first-file-upload-btn" class="upload-img"></label>
                <input type="file" class="file-upload" id="second-file-upload-btn" hidden>
                <label for="second-file-upload-btn" class="upload-img"></label>
                <input type="file" class="file-upload" id="third-file-upload-btn" hidden>
                <label for="third-file-upload-btn" class="upload-img"></label>
                <input type="file" class="file-upload" id="fourth-file-upload-btn" hidden>
                <label for="fourth-file-upload-btn" class="upload-img"></label>
            </div>
            <div class="select-colors">
                <p class="text">color available</p>
                <div class="colors">
                    <input type="checkbox" class="color-checkbox" id="black" value="black">
                    <input type="checkbox" class="color-checkbox" id="blue" value="blue">
                    <input type="checkbox" class="color-checkbox" id="yellow" value="yellow">
                    <input type="checkbox" class="color-checkbox" id="gray" value="gray">
                    <input type="checkbox" class="color-checkbox" id="white" value="white">
                    <input type="checkbox" class="color-checkbox" id="orange" value="orange">
                    <input type="checkbox" class="color-checkbox" id="red" value="red">
                    <input type="checkbox" class="color-checkbox" id="pink" value="pink">
                    <input type="checkbox" class="color-checkbox" id="green" value="green">
                </div>
            </div>
        </div>
    </div>

    <div class="product-price">
        <input type="number" id="actual-price" placeholder="actual price">
        <input type="number" id="discount" placeholder="discount percentage">
        <input type="number" id="sell-price" placeholder="selling price">
    </div>

    <input type="number" id="stock" min="20" placeholder="item in stocks (>= 20)">
    <textarea id="tags" placeholder="Enter categories here, for example - Men, Jeans, Blue Jeans, Rough jeans (you should add men or women at start"></textarea>

    <div class="buttons">
        <button class="btn" id="add-btn">add product</button>
    </div>
</div>

<script src="../js/addProduct.js"></script>
</body>
</html>