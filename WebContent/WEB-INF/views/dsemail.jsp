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
<link href="<c:url value="/resources/theme/css/reset.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
	rel="stylesheet">
<base href="${pageContext.servletContext.contextPath}/">
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

<h1>DANH SÁCH KHÁCH HÀNG</h1>
<table>
    <tr>
    <th>HỌ VÀ TÊN</th>
    <th>ĐỊA CHỈ</th>
    <th>EMAIL</th>
    <th>ĐIỆN THOẠI</th>
    <!-- <th>SỬA</th>
	<th>XÓA</th> -->
	
    </tr>
    <c:forEach var="u" items="${dsm}">
    <tr>
    <td>${u.cusname}</td>
    <td>${u.address}</td>
    <td>${u.email}</td>
    <td>${u.phone}</td>
     
     
   <%--   <td><a href="Email/update/${u.email}.htm">Sửa</a></td>
				<td><a
					onclick="return confirm('BẠN CÓ MUỐN XÓA EMAIL ${u.email}')"
					href="Email/delete/${u.email}.htm">Xóa</a></td> --%>
					
    </tr> 
    
    </c:forEach>
    
</table>
<a href="admin.htm" class="dn">QUAY LẠI</a>

</body>
</html>