<%@page import="ptithcm.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="ptithcm.bean.Cart" %>   
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="ptithcm.controller.MainController"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.table &amp ;amp;gt;tbody&amp;amp;gt;tr&amp;amp;gt;td, .table
	 &amp ;amp;gt;tfoot&amp;amp;gt;tr&amp;amp;gt;td {
	vertical-align: middle;
}

@media screen and (max-width: 600px) {
	table#cart tbody td .form-control {
		width: 20%;
		display: inline !important;
	}
	.actions .btn {
		width: 36%;
		margin: 1.5em 0;
	}
	.actions .btn-info {
		float: left;
	}
	.actions .btn-danger {
		float: right;
	}
	table#cart thead {
		display: none;
	}
	table#cart tbody td {
		display: block;
		padding: .6rem;
		min-width: 320px;
	}
	table#cart tbody tr td:first-child {
		background: #333;
		color: #fff;
	}
	table#cart tbody td:before {
		content: attr(data-th);
		font-weight: bold;
		display: inline-block;
		width: 8rem;
	}
	table#cart tfoot td {
		display: block;
	}
	table#cart tfoot td .btn {
		display: block;
	}
}

.dn {
	width: 30%;
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
	background: #90a4ae;
	transform: scaleX(0);
	transform-origin: 0 50%;
	transition: all 0.5s ease-out;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="header.jsp"%>
	<h2 class="text-center">Giỏ hàng của bạn có sản phẩm</h2>
	<div class="container">
		<table id="cart" class="table table-hover table-condensed">
			<thead>
				<tr>
					<th style="width: 50%">Tên sản phẩm</th>
					<th style="width: 10%">Giá</th>
					<th style="width: 8%">Số lượng</th>
					<th style="width: 22%" class="text-center">Thành tiền</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${listGioHang}">
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
								<img alt="Sản phẩm 1"class="img-responsive" width="100" src="<c:url value="/resources/theme/images/${p.image}" />">
									
								</div>
								<div class="col-sm-10">
									<h4 class="nomargin">${ p.tenSanPham} ${p.idSanPham }</h4>
									<!-- <p>Mô tả của sản phẩm 1</p> -->
								</div>
							</div>
						</td>
						<td data-th="Price">${ p.giaSanPham}đ</td>
						<td data-th="Quantity"><input
							class="form-control text-center" value="${ p.soLuong}"
							></td>
						<td data-th="Subtotal" class="text-center">${ p.giaSanPham * p.soLuong}đ</td>
						<td class="actions" data-th="">
							<button class="btn btn-danger btn-sm"><a href="deletegh.htm?idSanPham=${ p.idSanPham }"/>
								<i class="fa fa-trash-o"></i>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				
				<tr>
					<td><a href="home.htm" class="dn btn btn-warning"><i
							class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
					<td colspan="2" class="hidden-xs"></td>
					 
					 
				<%-- 	<td class="hidden-xs text-center"><strong >Tổng tiền:<c:forEach var="p" items="${listGioHang}" >${ p.giaSanPham * p.soLuong} đ </c:forEach>
			</strong></td>  --%>
			<td class="hidden-xs text-center"><strong>Tổng tiền: ${tongTien} đ</strong></td>
					<td><a href="Email/email.htm" class="dn btn btn-success btn-block">Thanh
							Toán <i class="fa fa-angle-right"></i>
					</a></td>


				</tr>
			</tfoot>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>
<script src="js/jquery-1.11.1.min.js"></script>
</html>