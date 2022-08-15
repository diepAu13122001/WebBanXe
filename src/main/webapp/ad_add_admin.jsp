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
				<li class="category-l0"><a href="ad_home.jsp">Doanh thu</a> <a
					href="ad_nhanvien.jsp">Nhân viên</a> <a href="ad_product.jsp">Sản
						phẩm</a> <a href="ad_discount.jsp">Mã giảm giá</a> <a
					href="ad_chinhanh.jsp">Chi nhánh</a> <a href="ad_web.jsp">Trang
						web</a></li>
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
<div >
<input class="form-control" type="text" placeholder="Name">
 <label for=""><br></label>
<input class="form-control" type="password" placeholder="Password">
 <label for=""><br></label>
<input class="form-control" type="text" placeholder="Phone">
 <label for=""><br></label>
<input class="form-control" type="email" placeholder="Mail">
</div>
		</div>
	</div>
	</div>
	<div class="show-data">
		<div class="mini-menu-bar">
			<button id="del-multi-btn">Lưu</button>
			<button id="create-btn">Hủy</button>
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
