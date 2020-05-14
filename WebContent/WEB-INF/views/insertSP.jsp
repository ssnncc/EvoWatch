<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>THÊM SẢN PHẨM VÀO DATABASE</title>
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
	<h2 class="h2">THÊM SẢN PHẨM</h2>
	<h2 style="color: red;">${message}</h2>
	
	<form:form action="insertSP.htm" method="post" modelAttribute="sp">
		<label>MÃ SẢN PHẨM</label>
	 	<form:input path="proid" placeholder="Nhập mã sản phẩm" type="text"/>
		 <form:errors path="proid" style="color: red;"/> 
	 	<label>TÊN SẢN PHẨM</label>
	 	<form:input path="proname" placeholder="Nhập tên sản phẩm" type="text"/>
	 	 <form:errors path="proname" style="color: red;"/>
	 	<label>GIÁ</label>
	 	<form:input path="price" placeholder="Nhập giá" type="text"/>
	 	 <form:errors path="price" style="color: red;"/>
	 	<label>HÌNH ẢNH</label>
	 	<form:input path="image" placeholder="Nhập tên hình ảnh" type="text"/>
	 	<form:errors path="image" style="color: red;"/>
	 	<label>TRẠNG THÁI</label>
	 	<form:input path="isValid" placeholder="Trạng thái" type="text"/>
	 	<form:errors path="isValid" style="color: red;"/> 
	 	<button class="dn">THÊM SẢN PHẨM</button>
	 	
	</form:form>

	
	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>