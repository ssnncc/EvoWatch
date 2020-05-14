<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/FAQ-Style.css" />"rel="stylesheet">
<link href="<c:url value="/resources/theme/css/all.min.css" />"rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />"rel="stylesheet">
<title>FAQ</title>
</head>
<body>
 <%@ include file="header.jsp" %>
	<div class="EvoWatch-Picture">
		<img alt=""
			src="<c:url value="/resources/theme/images/evo-page-banner.jpg" />">
		<h1>FAQ</h1>
	</div>
	<div class="container">
		<div class="content">
			<div class="Info">
				<h2>THANH TOÁN VÀ VẬN CHUYỂN</h2>
				<div class="question">
					<ul>
						<li>
							<h3>
								<a href="" class="slider-q">Khi nào đơn hàng của tôi được
									chuyển đi ?</a>
							</h3>
							<ul class="slider-toggle">
								<li>
									<p>Với đơn hàng của Quý khách, sau 24h kể từ khi đặt hàng
										(không tính ngày thứ 7, chủ nhật và các ngày lễ), Evo Watch sẽ
										liên hệ để xác nhận và gửi sản phẩm đến Quý khách</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="question">
					<ul>
						<li>
							<h3>
								<a href="" class="slider-q1">Tôi có phải thanh toán thêm phí
									gì không?</a>
							</h3>

							<ul class="slider-toggle1">
								<li>
									<p>Hiện tại mức giá của tất cả sản phẩm của Evo Watch đều
										đã bao gồm thuế giá trị gia tăng. Với những đơn hàng có giá
										trị trên 700,000VND, Quý khách sẽ được miễn phí vận chuyển Với
										những đơn hàng có giá trị dưới 700,000VND,Quý khách vui lòng
										thanh toán thêm 30,000VND chi phí vận chuyển</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="question">
					<ul>
						<li>
							<h3>
								<a href="" class="slider-q2">Tôi muốn lấy hóa đơn VAT thì
									phải làm thế nào?</a>
							</h3>
							<ul class="slider-toggle2">
								<li>
									<p>"Quý khách vui lòng cung cấp đầy đủ các thông tin dưới
										đây cho Evo Watch khi nhận được điện thoại xác nhận đơn hàng
										của bộ phận Telesale:</p>
									<p>1. Tên KH/Tên Đơn vị</p>
									<p>2. Địa chỉ</p>
									<p>3. Mã Số Thuế</p>
									<p>4. Email nhận hóa đơn điện tử</p>
									<p>Hóa đơn điện tử sẽ được Evo Watch gửi tới email đăng ký
										của Quý khách ngay sau khi sản phẩm được thanh toán"</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<div class="Info">
				<h2>ĐƠN HÀNG VÀ NHỮNG THÔNG TIN LIÊN QUAN</h2>
				<div class="question">
					<ul>
						<li>
							<h3>
								<a href="" class="slider-q3">Tôi cần thay đổi một số thứ ở
									đơn hàng, tôi phải làm thế nào?</a>
							</h3>
							<ul class="slider-toggle3">
								<li>
									<p>
										Quý khách vui lòng liên hệ Hotline <span
											style="color: rgb(231, 189, 48)">0123 456 789</span> hoặc
										inbox fanpage Evo Watch để được hỗ trợ nhanh nhất các thông
										tin về đơn hàng
									</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="question">
					<ul>
						<li>
							<h3>
								<a href="" class="slider-q4">Tôi có thể sử dụng nhiều ưu đãi
									cho một đơn hàng được không?</a>
							</h3>
							<ul class="slider-toggle4">
								<li>
									<p>
										Tất cả đơn hàng của Evo Watch chỉ được áp dụng duy nhất 1 ưu
										đãi. Mọi thắc mắc, Quý khách vui lòng liên hệ Hotline<span
											style="color: rgb(231, 189, 48)">0123 456 789</span>
									</p>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

<%@ include file="footer.jsp" %>
</body>
<script type="text/javascript" src="<c:url value="/resources/theme/js/jquery-3.3.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/theme/js/owl.carousel.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/theme/js/FAQ.js" />"></script>
</html>