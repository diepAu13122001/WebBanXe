<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <link rel="stylesheet" href="../css/home.css">
    <link rel="stylesheet" href="../css/cart.css">
</head>
<body>

<nav class="navbar"></nav>

<div class="bill">
    <div class="cart">
        <div class="item">
            <div class="prd-info">
                <div class="prd-ava">
                    <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                         alt="">
                    <div class="del"><i class="fa-solid fa-circle-xmark"></i>Xóa</div>
                </div>
                <div class="prd-contents">
                    <div class="prd-name">GRANDE BLUE CORE HYBRID PHIÊN BẢN GIỚI HẠN</div>
                    <div class="prd-insurance">Bảo hành (<a href="">Xem chi tiết</a>)</div>
                    <div class="prd-color">
                        <p class="content">Màu: Bạc trắng <i class="fa-solid fa-caret-down"></i></p>
                        <div class="prd-color-list">
                            <div class="select-color active">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                        </div>
                    </div>
                    <div class="message">Giá, khuyến mãi đã thay đổi. Quý khách vui lòng kiểm tra lại</div>
                </div>
                <div class="total">
                    <div class="price">28.290.000 đ</div>
                    <div class="actual-price">30.990.000 đ</div>
                    <div class="counter">
                        <button class="counter-btn decrement">-</button>
                        <input type="text" class="item-count" value="1">
                        <button class="counter-btn increment">+</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <div class="prd-info">
                <div class="prd-ava">
                    <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                         alt="">
                    <div class="del"><i class="fa-solid fa-circle-xmark"></i>Xóa</div>
                </div>
                <div class="prd-contents">
                    <div class="prd-name">GRANDE BLUE CORE HYBRID PHIÊN BẢN GIỚI HẠN</div>
                    <div class="prd-insurance">Bảo hành (<a href="">Xem chi tiết</a>)</div>
                    <div class="prd-color">
                        <p class="content">Màu: Bạc trắng <i class="fa-solid fa-caret-down"></i></p>
                        <div class="prd-color-list">
                            <div class="select-color active">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                            <div class="select-color">
                                <img src="https://yamaha-motor.com.vn/wp/wp-content/uploads/2019/05/New-Grande-Mat-White-004.png"
                                     alt="">
                                <small>color name</small>
                            </div>
                        </div>
                    </div>
                    <div class="message">Giá, khuyến mãi đã thay đổi. Quý khách vui lòng kiểm tra lại</div>
                </div>
                <div class="total">
                    <div class="price">28.290.000 đ</div>
                    <div class="actual-price">30.990.000 đ</div>
                    <div class="counter">
                        <button class="counter-btn decrement">-</button>
                        <input type="text" class="item-count" value="1">
                        <button class="counter-btn increment">+</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="provisional">
            <span class="provisional-title">Tạm tính</span>
            <span class="provisional-amount">28.290.000 đ</span>
        </div>
    </div>
    <div class="customer-info">
        <h2 class="cus-header">thông tin khách hàng</h2>
        <div class="cus-gender">
            <input type="radio" name="gender" id="Mr"><label for="Mr">Anh</label>
            <input type="radio" name="gender" id="Ms"><label for="Ms">Chị</label>
        </div>
        <div class="info-input">
            <input type="text" id="cus-name" placeholder="Họ và Tên">
            <input type="text" id="cus-phoneNum" placeholder="Số điện thoại">
        </div>
    </div>
    <div class="receiving-method">
        <h2 class="receiving-header">chọn cách thức nhận hàng</h2>
        <div class="receiving-chosen">
            <input type="radio" name="gender" id="showroom"><label for="showroom">Giao tận nơi</label>
            <input type="radio" name="gender" id="personal"><label for="personal">Nhận tại showroom</label>
        </div>
        <div class="address-chosen-table">
            <div class="for-personal">
                <p class="title">Chọn địa chỉ và thời gian nhận hàng</p>
                <textarea name="" id="cus-address" cols="30" rows="5" placeholder="Nhập địa chỉ nhận hàng"></textarea>
                <select name="" id="receiving-time">
                    <option value="title" selected disabled>Chọn khung giờ nhận hàng</option>
                    <option value="time1">7h-9h</option>
                    <option value="time1">7h-9h</option>
                    <option value="time1">7h-9h</option>
                </select>
            </div>
            <div class="for-showroom">
                <p class="title">Chọn địa chỉ showroom gần bạn nhất</p>
                <div class="showroom-list">
                    <div class="showroom-address selected">
                        <input type="radio" id="1" name="address" checked><label for="1">123 Âu Cơ, phường 14, quận 11,
                        TP.HCM</label>
                    </div>
                    <div class="showroom-address">
                        <input type="radio" id="2" name="address"><label for="2">123 Âu Cơ, phường 14, quận 11,
                        TP.HCM</label>
                    </div>
                    <div class="showroom-address">
                        <input type="radio" id="3" name="address"><label for="3">123 Âu Cơ, phường 14, quận 11,
                        TP.HCM</label>
                    </div>
                    <div class="showroom-address">
                        <input type="radio" id="4" name="address"><label for="4">123 Âu Cơ, phường 14, quận 11,
                        TP.HCM</label>
                    </div>
                    <div class="showroom-address">
                        <input type="radio" id="5" name="address"><label for="5">123 Âu Cơ, phường 14, quận 11,
                        TP.HCM</label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="another-request">
        <input type="text" name="" id="cus-note" placeholder="Yêu cầu khác (không bắt buộc)">
        <div class="req-list">
            <div class="req">
                <input type="checkbox" id="req1"><label for="req1">Gọi người khác nhận hàng(nếu có)</label>
                <div class="customer-info request">
                    <div class="cus-gender">
                        <input type="radio" name="gender" id="Mr-req"><label for="Mr">Anh</label>
                        <input type="radio" name="gender" id="Ms-req"><label for="Ms">Chị</label>
                    </div>
                    <div class="info-input">
                        <input type="text" id="cus-name-req" placeholder="Họ và Tên">
                        <input type="text" id="cus-phoneNum-req" placeholder="Số điện thoại">
                    </div>
                </div>
            </div>
            <div class="req">
                <input type="checkbox" id="req2"><label for="req2">Hướng dẫn sử dụng</label>
            </div>
            <div class="req">
                <input type="checkbox" id="req3"><label for="req3">Xuất hóa đơn công ty</label>
                <div class="comp-info">
                    <input type="text" name="" id="comp-name" placeholder="Tên công ty">
                    <input type="text" name="" id="comp-address" placeholder="Địa chỉ công ty">
                    <input type="text" name="" id="comp-taxCode" placeholder="Mã số thuế">
                </div>
            </div>
        </div>
    </div>
    <div class="discount-input">
        <span>
            <input type="text" name="" id="discount-code" placeholder="Nhập mã giảm giá/ phiếu mua hàng">
        </span>
        <span>
            <input type="button" value="Áp dụng" id="discount-btn">
        </span>
        <p class="discount-error">Mã giảm giá không đúng. Vui lòng kiểm tra lại.</p>
    </div>
    <div class="total-bill">
        <span class="title">Tổng tiền:</span>
        <span class="amount">28.290.000 đ</span>
    </div>
    <div class="order-btn">
        <button>đặt hàng</button>
    </div>
    <div class="guide">Bạn có thể chọn hình thức thanh toán sau khi đặt hàng</div>
    <div class="guide">Bằng cách đặt hàng, bạn đồng ý với Điều khoản sử dụng của HDD</div>
</div>

<script src="https://kit.fontawesome.com/6743dd3fb9.js" crossorigin="anonymous"></script>
<script src="../js/nav.js"></script>
<script src="../js/home.js"></script>
<script src="../js/cart.js"></script>

</body>
</html>
