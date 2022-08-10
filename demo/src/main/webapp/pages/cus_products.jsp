<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>detail</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<jsp:useBean id="allProduct" scope="request" type="java.util.List"/>
<c:forEach var="item" items="${allProduct}">
    <ul>
        <li>${item.prd_id}</li>
        <li>${item.prd_name}</li>
        <li>${item.prd_ava}</li>
        <li>${item.brd_id}</li>
        <li>${item.tpe_id}</li>
        <li>${item.prd_price}</li>
        <li>${item.prd_discountPercent}</li>
    </ul>
</c:forEach>

<jsp:useBean id="productDetail" scope="request" type="java.util.List"/>
<c:forEach var="item" items="${productDetail}">
    <ul>
        <li>${item.prd_id}</li>
        <li>${item.prd_content}</li>
        <li>${item.prd_contentIsImage}</li>
    </ul>
</c:forEach>
</body>
</html>
