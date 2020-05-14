<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Đăng ký</title>
<base href="${pageContext.servletContext.contextPath}/">
<style type="text/css">
	.h2{
	 margin-top: 50px;
	 text-align: center;
	 margin-bottom: 10px;
	}
	.image{
	width:22%;
	text-align: center;
	margin-top: 30px;
	display: flex;
	justify-content: space-between;
	margin-left: 450px;
	}
	.image img{
	width: 120px;
	height: 50px;
	}
	form {
	
	display: flex;
	flex-direction: column;
	width: 65%;
	margin-left: 200px;
	
}
form label{
margin:30px 0px 20px 0;
 font-size: 20px;
}
form input {
	background: whitesmoke;
	padding: 15px;
	font-size: 17px;
}
.dn{
	
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
	margin-left:290px; 
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
.dnn{
margin-top: 20px;
color:#a8716a;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
	<h2 class="h2">ĐĂNG KÝ TÀI KHOẢN</h2>
	<span style="margin-left: 410px;">Nếu chưa có tài khoản vui lòng đăng ký tại đây</span>
	<div class="image">
	<a href=""> <img alt="" src="https://bizweb.dktcdn.net/assets/admin/images/login/fb-btn.svg"></a>
	<a href=""><img alt="" src="https://bizweb.dktcdn.net/assets/admin/images/login/gp-btn.svg"></a>
	</div>
	<h2 style="color: red;">${message}</h2>
	
	<form:form action="dangky.htm" method="post" modelAttribute="user">
		<label>Tài Khoản</label>
	 	<form:input path="username" placeholder="Nhập tài khoản" type="text"/>
		<form:errors path="username" style="color: red;"/>
	 	<label>Mật khẩu</label>
	 	<form:input path="password" placeholder="Nhập mật khẩu" type="password"/>
	 	<form:errors path="password" style="color: red;"/>
	 	<label>Nhập lại Mật khẩu</label>
	 	 <input type="password"  name="password1">
	 	<label>Họ và Tên</label>
	 	<form:input path="fullname" placeholder="Nhập Họ Tên" type="text"/>
	 	<form:errors path="fullname" style="color: red;"/>
	 	<button class="dn">TẠO TÀI KHOẢN</button>
	 	
	</form:form>

	<div style="display: flex;justify-content:space-between; width: 20%; margin-left:535px;">
	<a href="dangnhap.htm" class="dnn">ĐĂNG NHẬP</a>
	<!-- <a href="update.htm" class="dnn">CHỈNH SỬA</a> -->
	</div>
	
	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>