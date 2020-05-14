<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<style type="text/css">
	h2{
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
margin-left:540px; 
color:#a8716a;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2>UPDATE TÀI KHOẢN</h2>
		
		<form:form action="${pageContext.request.contextPath}/update1.htm"
			modelAttribute="user">
			<label>Tài khoản</label>
			<form:input path="username" value="${userdetail.username}"
				class="form-control" />
			<label>Mật Khẩu</label>
			<form:input path="password" value="${userdetail.password}"
				class="form-control" />
			<label>Họ và Tên</label>
			<form:input path="fullname" value="${userdetail.fullname}"
				class="form-control" />
			<button class="dn">CẬP NHẬT</button>

		</form:form>
		${message} 
		<a href="dangnhap.htm" class="dnn">ĐĂNG NHẬP</a>

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>