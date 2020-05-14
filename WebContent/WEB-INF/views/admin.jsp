<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<base href="${pageContext.servletContext.contextPath}/">
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: whitesmoke;
}
.h1{
	text-align: center;
	padding: 20px;
}
.aa{
text-align: center;
}
td a{
padding-right: 10px;
color: #546e7a;
}

.dn{
	
	width: 24%;
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
</style>
</head>
<body>
<%@ include file="header.jsp" %>

 <h1 class="h1">TÀI KHOẢN ĐĂNG KÝ</h1>
<table>
    <tr>
    <th>USERNAME</th>
    <th>PASSWORD</th>
    <th>FULLNAME</th>
    <th>Edit</th>
	<th>Delete</th>
    </tr>
    <c:forEach var="u" items="${users}">
    <tr>
    <td>${u.username}</td>
    <td>${u.password}</td>
    <td>${u.fullname}</td>
    <td style="text-align: center;"><a href="update/${u.username}.htm"><i class="fa fa-edit"></i></a></td>
				<td style="text-align: center;"><a
					onclick="return confirm('BẠN CÓ MUỐN XÓA TÀI KHOẢN ${u.username}')"
					href="delete/${u.username}.htm"><i class="fa fa-trash-o"></i></a></td>
    </tr>
    </c:forEach>
    
</table>
<div style="margin-left: 300px; ">
<a href="product/dssanpham.htm" class="dn">SẢN PHẨM</a>
<a href="Email/dsemail.htm" class="dn">THÔNG TIN KHÁCH HÀNG</a>
<a href="Email/dsemail.htm" class="dn">ĐƠN HÀNG</a>

</div>

<%@ include file="footer.jsp" %>
</body>
</html>