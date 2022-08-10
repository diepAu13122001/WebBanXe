<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

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
        <form action="LoginServlet" method="get">
        <input type="email" autocomplete="off" name="email" placeholder="Mã số nhân viên">
        <input type="password" autocomplete="off" name="password" placeholder="Mật khẩu">
        <button class="submit-btn-login">Đăng nhập</button>
        </form>
    </div>
    <a href="ad_forgotPass.html" class="link">Quên mật khẩu?</a>
</div>

<script src="../js/form-login.js"></script>

</body>
</html>