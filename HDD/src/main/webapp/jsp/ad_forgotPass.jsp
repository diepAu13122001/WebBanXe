<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup</title>

    <link rel="stylesheet" href="../css/signup.css">
</head>
<body>

<img src="../img/loader.gif" class="loader" alt="">

<div class="alert-box">
    <img src="../img/error.png" class="alert-img" alt="">
    <p class="alert-msg">Error message</p>
</div>

<div>
    <img src="../img/dark-logo.png" class="logo" alt="">
    <div>
        <p>Nhập email đã đăng ký tài khoản của bạn để nhận lại mật khẩu mới từ hệ thống</p>
        <input type="text" autocomplete="off" id="name" placeholder="Mã số nhân viên">
        <input type="email" autocomplete="off" id="email" placeholder="email">
        <button class="submit-btn">Gửi mật khẩu</button>
    </div>
</div>

<script src="../js/form.js"></script>

</body>