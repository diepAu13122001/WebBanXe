<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mail</title>

    <style>
        body {
            min-height: 90vh;;
            background: #f5f5f5;
            font-family: sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .heading{
            text-align: center;
            font-size: 40px;
            width: 50%;
            display: block;
            line-height: 50px;
            margin: 30px auto 60px;
            text-transform: capitalize;
        }

        .heading span{
            font-weight: 300;
        }

        .btn{
            width: 200px;
            height: 50px;
            border-radius: 5px;
            background: #3f3f3f;
            color: white;
            display: block;
            margin: auto;
            font-size: 18px;
            text-transform: capitalize;
        }
    </style>
</head>
<body>

<div>
    <h1 class="heading">dear user, <span>your order is successfully placed</span></h1>
    <button class="btn">check status</button>
</div>

</body>
</html>