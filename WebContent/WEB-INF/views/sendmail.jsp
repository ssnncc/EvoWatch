<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/DoiHang-Style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/all.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />"
	rel="stylesheet">
<title>Gửi Phản Hồi</title>
<style type="text/css">
form{
background: whitesmoke;
width: 50%;
align-items: center;
margin-left: 330px;
padding: 20px;
border-radius: 5px;
 margin-top: 10px;
}
form input {
	margin-left: 50px;
	margin-top:10px;
	border: 1px solid gray;
	border-radius: 5px;
	padding: 10px;
	width: 500px;
}
form textarea {
	margin-left: 50px;
	margin-top:10px;
	width: 500px;
	border-radius: 5px;
}
.dn{
	
	width: 10%;
	display: inline-block;
	overflow: hidden;
	border: 1px solid black;
	padding: 10px;
	color: white;
	background: black;
	word-spacing: 3px;
	font-size: 13px;
	transform: perspective(1px) translateZ(0);
	position: relative;
	box-shadow: 2px 6px whitesmoke;
	margin-left: 50px;
	margin-top:10px;
	text-align: center;
	border-radius: 5px;
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
.h2{
	 margin-top: 50px;
	 text-align: center;
	 margin-bottom: 10px;
	}
</style>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>

<%@ include file="header.jsp"%>
	<h2 class="h2">PHẢN HỒI VỚI CHÚNG TÔI</h2>
	<span style="margin-left: 530px;">Địa chỉ Email: ssnnccvtn@gmail.com</span>
	<h3 style="color: red; margin-left: 570px; margin-top: 10px;">${message}</h3>
	<form action="send.htm" method="post">
		<p><input name="from" placeholder="From"></p>
		<p><input name="to" placeholder="To"></p>
		<p><input name="subject" placeholder="Subject"></p>
		<p><textarea rows="13" cols="30" name="body" placeholder="Body"></textarea></p>
		<button class="dn">SEND</button>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>