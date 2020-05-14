<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/header-style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />"
	rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="container">
		<header>
			<ul>
				<li>
					<p>
						HOTLINE ĐẶT HÀNG: <a href=""><span style="font-weight: bold">0123
								456 789</span></a>
					</p>
				</li>
				<li class="bb"><img alt="home.htm"
					src="<c:url value="/resources/theme/images/logo.png" />"></li>
				<li><a href="dangnhap.htm" class="TKhoan">TÀI KHOẢN</a>
					<ul class="login">
						<li><a href="dangnhap.htm">ĐĂNG NHẬP</a></li>
						<li><a href="dangxuat.htm">ĐĂNG XUẤT</a></li>
					</ul></li>
				<li><a href="GioHang.htm?id=CS01&name=ĐỒNG HỒ ORIENT NAM DÂY KIM LOẠI&gia=500000&image=C01.jpg">GIỎ HÀNG<i class="fa fa-cart-plus"
						style="color: green;"></i></a>
					</li>
				<li><a href=""><i class="fa fa-search"></i></a>
					<ul class="GH" style="margin-left: -250px;">
						<li style="display: flex;"><input
							placeholder="Nhập sản phẩm cần tìm kiếm"
							style="width: 100%; font-size: 17px;color: #3a3737;"><a href=""
							><i class="fa fa-search" style="color: #819ca9 ;"></i></a></li>
					</ul></li>
				
			</ul>
			<div class="border-header"></div>
		</header>
		<div class="Nabar">
			<ul>
				<li><a href="home.htm" class="active">TRANG CHỦ</a></li>
				<li><a href="">THƯƠNG HIỆU<i class="fa fa-angle-down"></i></a>
					<ul class="mega-menu">
						<li><span>CÁC HÃNG BÁN CHẠY</span>
							<ul>
								<li><a href="Casio.htm">Casio</a></li>
								<li><a href="Citizen.htm">Citizen</a></li>
								<li><a href="Seiko.htm">Seiko</a></li>
							</ul></li>
						<li><span>KHUYÊN DÙNG</span>
							<ul>
								<li><a href="Orient.htm">Orient</a></li>
								<li><a href="Candino.htm">Candino</a></li>
							</ul></li>
						<li><span>CÁC DÒNG ĐẶC BIỆT</span>
							<ul>
								<li><a href="Limited.htm">Limited Edition</a></li>
								<li><a href="DHDT.htm">Đồng Hồ Điện Tử</a></li>
							</ul></li>
						<li><span>SWISS MADE (THỤY SĨ)</span>
							<ul>
								<li><a href="Doxa.htm">Doxa</a></li>
							
							</ul></li>
					</ul></li>
				<li><a href="DHNam.htm">NAM <i class="fa fa-angle-down"></i></a>
					<ul class="GTTT">
						<li><span>LOẠI MÁY</span>
							<ul>
								<li><a href="">Pin</a></li>
								<li><a href="">Tự Động</a></li>
							</ul></li>
						<li>
							<ul>
								<span>CHẤT LIỆU</span>
								<li><a href="Dda.htm">Dây Da</a></li>
								<li><a href="Dcaosu.htm">Dây Cao Su</a></li>
								<li><a href="DayKimLoai.htm">Dây Kim Loại</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<span>KHOẢNG GIÁ</span>
								<li><a href="">Dưới 1 triệu</a></li>
								<li><a href="">1 triệu - 3 triệu</a></li>
								<li><a href="">3 triệu - 5 triệu</a></li>
								<li><a href="">Trên 5 triệu</a></li>
							</ul>
						</li>

					</ul></li>
				<li><a href="DHNu.htm">NỮ <i class="fa fa-angle-down"></i></a>
					<ul class="GTTT">
						<li><span>LOẠI MÁY</span>
							<ul>
								<li><a href="Pin.htm">Pin</a></li>
								<li><a href="TuDong.htm">Tự Động</a></li>
							</ul></li>
						<li>
							<ul>
								<span>CHẤT LIỆU</span>
								<li><a href="Dda.htm">Dây Da</a></li>
								<li><a href="Dcaosu.htm">Dây Cao Su</a></li>
								<li><a href="DayKimLoai.htm">Dây Kim Loại</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<span>KHOẢNG GIÁ</span>
								<li><a href="">Dưới 1 triệu</a></li>
								<li><a href="">1 triệu - 3 triệu</a></li>
								<li><a href="">3 triệu - 5 triệu</a></li>
								<li><a href="">Trên 5 triệu</a></li>
							</ul>
						</li>

					</ul></li>
				<li><a href="DHCap.htm">CẶP ĐÔI<i class="fa fa-angle-down"></i></a>
					<ul class="GTTT">
						<li><span>LOẠI MÁY</span>
							<ul>
								<li><a href="">Pin</a></li>
								<li><a href="">Tự Động</a></li>
							</ul></li>
						<li>
							<ul>
								<span>CHẤT LIỆU</span>
								<li><a href="DDa.htm">Dây Da</a></li>
								<li><a href="Dcaosu.htm">Dây Cao Su</a></li>
								<li><a href="DayKimLoai.htm">Dây Kim Loại</a></li>
							</ul>
						</li>
						<li>
							<ul>
								<span>KHOẢNG GIÁ</span>
								<li><a href="">Dưới 1 triệu</a></li>
								<li><a href="">1 triệu - 3 triệu</a></li>
								<li><a href="">3 triệu - 5 triệu</a></li>
								<li><a href="">Trên 5 triệu</a></li>
							</ul>
						</li>

					</ul></li>

				<li><a href="">SẢN PHẨM<i class="fa fa-angle-down"></i></a>
					<ul class="mega-menu">
						<li><span>KHOẢNG GIÁ</span>
							<ul>
								<li><a href="">Dưới 1 triệu</a></li>
								<li><a href="">1 triệu - 3 triệu</a></li>
								<li><a href="">3 triệu - 5 triệu</a></li>
								<li><a href="">Trên 5 triệu</a></li>
							</ul></li>
						<li><span>NAM</span>
							<ul>
								<li><a href="Casio.htm">Casio <span style="color: red">HOT</span></a></li>
								<li><a href="Citizen.htm">Citizen</a></li>
								<li><a href="Seiko.htm">Seiko</a></li>
							</ul></li>
						<li><span>NỮ</span>
							<ul>
								<li><a href="Casio.htm">Casio </a></li>
								<li><a href="Citizen.htm">Citizen<span style="color: red">HOT</span></a></li>
								<li><a href="Seiko.htm">Seiko</a></li>


							</ul></li>
						<li><span>CẶP ĐÔI</span>
							<ul>
								<li><a href="Casio.htm">Casio </a></li>
								<li><a href="Citizen.htm">Citizen</a></li>
								<li><a href="Seiko.htm">Seiko</a></li>
							</ul></li>
					</ul></li>
				<li><a href="">NGÔN NGỮ <i class="fa fa-angle-down"></i></a>
					<ul class="GT">
						<li><a href="dangnhap.htm?language=en">Tiếng Anh</a></li>
						<li><a href="dangnhap.htm?language=vi">Tiếng Việt</a></li>

					</ul></li>
				<li><a href="">LIÊN HỆ<i class="fa fa-angle-down"></i></a>
					<ul class="GT">
						<li><a href="DoiHang.htm">Chính sách đổi hàng</a></li>
						<li><a href="FAQ.htm">FAQ</a></li>
						<li><a href="ThanhToan.htm">Hướng dẫn thanh toán</a></li>
						<li><a href="VanChuyen.htm">Chính sách vận chuyển</a></li>
					</ul></li>

			</ul>
		</div>
	</div>
	
</body>
</html>