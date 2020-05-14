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
	<h2 class="h2">CHỈNH SỬA THÔNG TIN SẢN PHẨM</h2>
	<h2 style="color: red;">${message}</h2>
	
	<form:form action="${pageContext.request.contextPath}/product/updateSP1.htm"
			modelAttribute="sp">
			<label>Mã SP</label>
			<form:input path="proid" value="${spdt.proid}"
				class="form-control" />
			<label>Tên SP</label>
			<form:input path="proname" value="${spdt.proname}"
				class="form-control" />
			<label>Hình ảnh</label>
			<form:input path="image" value="${spdt.image}"
				class="form-control" />
				<label>Giá</label>
			<form:input path="price" value="${spdt.price}"
				class="form-control" />
				<label>Trạng thái</label>
			<form:input path="isValid" value="${spdt.isValid}"
				class="form-control" />
			<button class="dn">CẬP NHẬT</button>

		</form:form>
		${message} 
	
	
</div>
<%@ include file="footer.jsp" %>
</body>
</html>