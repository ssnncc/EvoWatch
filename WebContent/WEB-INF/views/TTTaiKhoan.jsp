<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THÔNG TIN TÀI KHOẢN</title>
<base href="${pageContext.servletContext.contextPath}/">
<style type="text/css">

form {
	display: flex;
	flex-direction: column;
	width: 65%;
	margin-left: 200px;
}

form label {
	margin: 30px 0px 20px 0;
	font-size: 20px;
}

form input {
	background: whitesmoke;
	padding: 15px;
	font-size: 17px;
}

.dn {
	width: 25%;
	display: inline-block;
	overflow: hidden;
	border: 1px solid black;
	padding: 15px 20px;
	color: white;
	background: black;
	word-spacing: 3px;
	font-size: 13px;
	transform: perspective(1px) translateZ(0);
	position: relative;
	box-shadow: 2px 6px whitesmoke;
	margin-left: 300px;
	margin-top: 30px;
	text-align: center;
}

.dn:hover {
	color: black;
}

.dn:hover::before {
	transform: scaleX(1);
}

.dn::before {
	content: "";
	position: absolute;
	z-index: -1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: white;
	transform: scaleX(0);
	transform-origin: 0 50%;
	transition: all 0.5s ease-out;
}

.text-b {
	margin-top: 30px;
	margin-left: 400px;
	display: flex;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
	<h3 style="color: orange; text-align: center;">CHÀO MỪNG <strong>${user.getUsername()}</strong> ĐẾN VỚI CHÚNG TÔI</h3>
	
	<form action="${pageContext.request.contextPath}/update1.htm" modelAttribute="user" method="POST">
<h4 style="color: red;">${message}</h4>
		<label>Tên đăng nhập</label> 
		<input type="text" name="username"placeholder="${user.getUsername()}"> 
		<label>Mật Khẩu</label>
		<input type="text" name="password" placeholder="${user.getPassword()}">
		<label>Họ và Tên</label> 
		<input type="text" name="fullname"placeholder="${user.getFullname()}">
		
		<button class="dn">CHỈNH SỬA</button>
	</form>
	<p class="text-b">
		QUAY TRỞ LẠI TRANG CHỦ ĐỂ TIẾP TỤC MUA SẮP <a href="home.htm"
			style="color: orange; margin-left: 3px;">TẠI ĐÂY</a>.
	</p>
	<%@ include file="footer.jsp" %>
</body>
</html>