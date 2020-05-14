<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Thông Tin</title>
<style type="text/css">
	.h2{
	 margin-top: 50px;
	 text-align: center;
	 margin-bottom: 10px;
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
	<h2 class="h2">MUA HÀNG</h2>
	<!-- <span style="margin-left: 280px; color: orange;">Thông tin của bạn sẽ được bảo mật tuyệt đối và bạn có thể hủy đăng ký bất cứ lúc nào.</span> -->
	
	<h2 style="color: red;">${message}</h2>
	
	<form:form action="email.htm" method="post" modelAttribute="cus">
		<label>Địa chỉ Email</label>
	 	<form:input path="email" placeholder="Nhập địa chỉ Email" type="email"/>
		<form:errors path="email" style="color: red;"/>
	 	<label>Họ Tên</label>
	 	<form:input path="cusname" placeholder="Nhập họ và tên" type="text"/>
	 	<form:errors path="cusname" style="color: red;"/>
	 	<label>Địa Chỉ</label>
	 	<form:input path="address" placeholder="Nhập địa chỉ" type="text"/>
	 	<form:errors path="address" style="color: red;"/>
	 	<label>Số điện thoại</label>
	 	<form:input path="phone" placeholder="Nhập số điện thoại" type="text"/>
	 	<form:errors path="phone" style="color: red;"/>
	 	<button class="dn">MUA</button>
	</form:form>

	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>