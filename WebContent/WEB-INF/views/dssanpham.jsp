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
<base href="${pageContext.servletContext.contextPath}/">
<link href="<c:url value="/resources/theme/css/reset.css" />"
	rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<style>
body{
font-family: 'Josefin Sans', sans-serif;
}
table {
	border-collapse: collapse;
	width: 100%;
	
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
	text-align: center;
}

th {
	background-color: whitesmoke;
}
h1{
	text-align: center;
	padding: 20px;
}
.aa{
text-align: center;
}
a{
padding-right: 10px;
color: #546e7a;
}
i{
margin-right: 5px;
}
.dn{
	
	width: 20%;
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
	margin-left:500px;
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

<h1>DANH SÁCH SẢN PHẨM</h1>
<table>
    <tr>
    <th>MÃ SẢN PHẨM</th>
    <th>TÊN SẢN PHẨM</th>
    <th>HÌNH ẢNH</th>
    <th>GIÁ</th>
    <th>TRẠNG THÁI</th>
    <th>SỬA</th>
	<th>XÓA</th>
    </tr>
    <c:forEach var="u" items="${sp}">
    <tr>
    <td style="color:#c75b39; ">${u.proid}</td>
    <td style="text-align: left;">${u.proname}</td>
    <td><img style="width: 50px; height: 50px; display: block; margin-left: auto; margin-right: auto;" alt="" src="<c:url value="/resources/theme/images/${u.image}" />"></td>
    <td>${u.price} đ</td>
     <td>${u.isValid}</td>
  
   <td><a href="product/update/${u.proid}.htm"><i class="fa fa-edit"></i></a></td>
	<td class="actions" ><a
					onclick="return confirm('BẠN CÓ MUỐN XÓA SẢN PHẨM ${u.proid}')"
					href="product/delete/${u.proid}.htm"><i class="fa fa-trash-o"></i></a></td> 
					
    </tr> 
    
    </c:forEach>
    
</table>
<a href="product/insertSP.htm" class="dn"><i class="fa fa-plus-square"></i>THÊM SẢN PHẨM</a>
<a href="admin.htm" class="dn">QUAY LẠI</a>

</body>
</html>