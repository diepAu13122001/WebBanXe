<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta charset="UTF-8">
<title>Admin nhan vien</title>
<link rel="stylesheet" href="css/nav.css">
<link rel="stylesheet" href="css/brand.css">
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/ad_home.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="ad-navbar"></nav>
	<div class="my-alert"></div>
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
			<input class="hide" type="text" name="search" id="search-input"
				placeholder="Tìm kiếm...">
			<button id="search-btn">
				<img
					src="https://img.icons8.com/ios-filled/60/000000/search--v1.png" />
			</button>
			<div class="data-getting">
				<button>Import file excel</button>
				<button>Export file excel</button>
				<button>Export file pdf</button>
			</div>

			<div class="table">
				<table class="table">
					<tr id="title">
						<td></td>
						<td>shr_id</td>
						<td>shr_name</td>
						<td>shr_address</td>
						<td>shr_phoneNum</td>
						<td>shr_openTime</td>
						<td>shr_closeTime</td>
					
						<td></td>

					</tr>
					<tr>
						<td><input type="checkbox" id="select-all" name="selected">
						</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						

						<td><a href="#">Sửa</a></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="select-all" name="selected">
						</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>
						<td>email</td>

						<td><a href="#">Sửa</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="show-data">
			<div class="mini-menu-bar">
				<input type="checkbox" id="select-all" name="selected">
				<button id="del-multi-btn">Xóa nhiều</button>
				<button id="create-btn">Tạo mới</button>
			</div>

			<div class="staff">
				<div class="overview"></div>
				<div class="create"></div>
				<div class="update"></div>
				<div class="search"></div>
			</div>
			<div class="product">
				<div class="overview"></div>
				<div class="create"></div>
				<div class="update"></div>
				<div class="search"></div>
			</div>
			<div class="branch">
				<div class="overview"></div>
				<div class="create"></div>
				<div class="update"></div>
				<div class="search"></div>
			</div>
			<div class="website">
				<div class="overview"></div>
				<div class="create"></div>
				<div class="update"></div>
				<div class="search"></div>
			</div>
			<div class="account">
				<div class="overview"></div>
				<div class="create"></div>
				<div class="update"></div>
				<div class="search"></div>
			</div>
		</div>
	</div>

	<script src="js/nav.js"></script>
</body>
</html>
