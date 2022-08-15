<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin home</title>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/brand.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/ad_home.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="ad-navbar"></nav>
<div class="my-alert">

</div>
<div class="row">
    <div class="col-sm-3">
        <ul>
            <li class="category-l0"><a href="ad_home.jsp">Doanh thu</a> <a href="ad_nhanvien.jsp">Nhân
						viên</a> <a href="ad_product.jsp">Sản phẩm</a> <a href="ad_discount.jsp">Mã giảm giá</a> <a
					href="ad_chinhanh.jsp">Chi nhánh</a> <a href="ad_web.jsp">Trang web</a></li>
        </ul>
    </div>
    <!--    <div class="col-sm-3" style="position: relative; z-index: -1"></div>-->
    <div class="col-sm-9" style="padding-left: 0">
        <input  class="hide" type="text" name="search" id="search-input" placeholder="Tìm kiếm...">
        <button id="search-btn"><img src="https://img.icons8.com/ios-filled/60/000000/search--v1.png"/></button>
        <div class="data-getting">
            <button>Import file excel</button>
            <button>Export file excel</button>
            <button>Export file pdf</button>
        </div>
        <div class="revenue">
            <div class="overview">
                <div class="review">
                    <div class="review-left">
                        <p class="title">Tổng doanh thu tính theo</p>
                        <select name="revenue-time">
                            <option value="" disabled selected>Chọn khoảng thời gian</option>
                            <option value="">24 giờ gần nhất</option>
                            <option value="">15 ngày gần nhất</option>
                            <option value="">30 ngày gần nhất</option>
                            <option value="">60 ngày gần nhất</option>
                            <option value="">100 ngày gần nhất</option>
                            <option value="">300 ngày gần nhất</option>
                        </select>
                    </div>
                    <div class="review-right">
                        <p class="sum">12.000.000 đ</p>
                        <p class="comparing decrease">Giảm 12.000.000 đ (19%) so với <span
                                id="comparing-time">3 tháng trước</span></p>
                    </div>
                </div>
                <div class="revenue-amount">
                    <div class="card">
                        <p class="title">Tổng chi</p>
                        <p class="amount decrease" >- 12.000.000 đ</p>
                    </div>
                    <div class="card">
                        <p class="title" >Tổng thu</p>
                        <p class="amount increase">+ 25.000.000 đ</p>
                    </div>
                </div>
            </div>
				<div class="show-data">
					<div class="mini-menu-bar">
						<input type="checkbox" id="select-all" name="selected">
						<button id="del-multi-btn">Xóa nhiều</button>
						<button id="create-btn">Tạo mới</button>
					</div>
					<div class="table-data">
						<table>
							<tr id="title">
								<td>bll_id</td>
								<td>ctc_id</td>
								<td>bll_Qty</td>
								<td>bll_total</td>
								<td>bll_shipFee</td>
								<td>bll_discount</td>
								<td>bll_status</td>
							</tr>
							<tr>
								<td>email</td>
								<td>email</td>
								<td>email</td>
								<td>email</td>
								<td>email</td>
								<td>email</td>
								<td>email</td>
								<td>email</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="create">
                <form action="" name="create-bill">
                    <!--nhớ có cả phần content-->
                    <input type="text" name="create" placeholder="Tên">
                    <input type="text" name="create" placeholder="T">
                    <input type="submit" value="Submit">
                </form>
                <form action="" name="create-category">

                </form>
                <form action="" name="create-prd-image">

                </form>
            </div>
            <div class="update">
                <form action="" name="update-product">

                </form>
            </div>
            <div class="search">
                <div class="filter-bar">
                    <div class="search-title">Kết quả tìm kiếm "12334342"</div>
                    <div class="filter-list">
                        <div class="filter-item">
                            <span>Honda</span>
                            <span class="del">x</span>
                        </div>
                        <div class="filter-item">
                            <span>Honda</span>
                            <span class="del">x</span>
                        </div>
                        <div class="filter-item">
                            <span>Xe côn tay</span>
                            <span class="del">x</span>
                        </div>
                        <div class="filter-item" id="del-all">
                            <span>Xóa tất cả</span>
                            <span class="del">x</span>
                        </div>
                    </div>
                    <div class="by-brand">
                        <label for="brand"> Chọn nhãn hàng</label>
                        <select id="brand">
                            <option value="brand" disabled selected>Chọn hãng xe</option>
                            <option value="honda">Honda</option>
                            <option value="yamaha">Honda</option>
                            <option value="suzuki">Honda</option>
                        </select>
                    </div>
                    <div class="by-type">
                        <label for="type">Phân loại</label>
                        <!--lọc theo hãng-->
                        <select id="type">
                            <option value="type" disabled selected>Chọn loại xe</option>
                            <option value="type1">Xe côn tay</option>
                            <option value="type2">Xe số</option>
                            <option value="type3">Xe phân phối lớn</option>
                            <option value="type4">Xe số</option>
                            <option value="type5">Xe tay ga</option>
                        </select>
                    </div>
                    <div class="by-importDate">
                        <label for="importDate">Ngày nhập hàng</label>
                        <input type="text" id="importDate" placeholder="DD/MM/YYYY">
                    </div>
                    <div class="by-importAmount">
                        <label for="importAmount"> Số lượng nhập về</label>
                        <input type="text" id="importAmount" placeholder="0000">
                    </div>
                    <div class="by-color">
                        <label for="color">Màu sắc</label>
                        <select id="color">
                            <option value="color" disabled selected>Chọn màu sắc</option>
                            <option value="color1">Màu hồng</option>
                            <option value="color1">Màu hồng</option>
                            <option value="color1">Màu hồng</option>
                            <option value="color1">Màu hồng</option>
                        </select>
                    </div>
                    <div class="by-priceRange">
                        <input type="text" placeholder="0 đ">
                        <p>đến</p>
                        <input type="text" placeholder="500.000.000 đ">
                    </div>
                </div>
                <div class="table-data">
                    <table>
                        <tr>
                            <td>email</td>
                            <td>email</td>
                            <td>email</td>
                            <td>email</td>
                        </tr>
                        <tr>
                            <td>email</td>
                            <td>email</td>
                            <td>email</td>
                            <td>email</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="staff">
            <div class="overview">

            </div>
            <div class="create">

            </div>
            <div class="update">

            </div>
            <div class="search">

            </div>
        </div>
        <div class="product">
            <div class="overview">

            </div>
            <div class="create">

            </div>
            <div class="update">

            </div>
            <div class="search">

            </div>
        </div>
        <div class="branch">
            <div class="overview">

            </div>
            <div class="create">

            </div>
            <div class="update">

            </div>
            <div class="search">

            </div>
        </div>
        <div class="website">
            <div class="overview">

            </div>
            <div class="create">

            </div>
            <div class="update">

            </div>
            <div class="search">

            </div>
        </div>
        <div class="account">
            <div class="overview">

            </div>
            <div class="create">

            </div>
            <div class="update">

            </div>
            <div class="search">

            </div>
        </div>
    </div>
</div>

<script src="js/nav.js"></script>
</body>
</html>
