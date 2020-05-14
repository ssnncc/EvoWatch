<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Đăng nhập</title>
<style type="text/css">
.h2{
	margin-top: 50px;
	text-align: center;
}

.image {
	width: 22%;
	text-align: center;
	margin-top: 30px;
	display: flex;
	justify-content: space-between;
	margin-left: 450px;
}

.image img {
	width: 120px;
	height: 50px;
}

form {
	display: flex;
	flex-direction: column;
	width: 65%;
	margin-left: 200px;
}

form label {
	margin: 30px 0px 20px 0;
	font-size: 20px;
}

form input {
	background: whitesmoke;
	padding: 15px;
	font-size: 17px;
}

.dn {
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
	margin-left: 290px;
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

.text-b {
	margin-top: 30px;
	margin-left: 400px;
	display: flex;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2 class="h2"><s:message code="login.TH"/></h2>
		<div class="image">
			<a href=""> <img alt=""
				src="https://bizweb.dktcdn.net/assets/admin/images/login/fb-btn.svg"></a>
			<a href=""><img alt=""
				src="https://bizweb.dktcdn.net/assets/admin/images/login/gp-btn.svg"></a>
		</div>
		${message}
		<form action="dangnhap.htm" method="post">

			<label><s:message code="login.username"/></label> 
			<input name="username" type="text"
				class="form-control" placeholder="<s:message code="login.username"/>"> 
			<label><s:message code="login.password"/></label> 
			<input type="Password" class="form-control" name="password"
				placeholder="<s:message code="login.password"/>">
			<button class="dn"><s:message code="menu.login"/></button>
		</form>

		<p class="text-b">
			<s:message code="login.TK"/> <a href="dangky.htm"
				style="color: orange; margin-left: 3px;"><s:message code="login.he"/></a>.
		</p>

	</div>
	<%@ include file="footer.jsp"%>
	<script type="text/javascript">
        jQuery(document).ready(function($) {
            var $filter = $('.head_nav');
            var $filterSpacer = $('<div />', {
                "class": "vnkings-spacer",
                "height": $filter.outerHeight()
            });
            if ($filter.size())
            {
                $(window).scroll(function ()
                {
                    if (!$filter.hasClass('fix') && $(window).scrollTop() > $filter.offset().top)
                    {
                        $filter.before($filterSpacer);
                        $filter.addClass("fix");
                    }
                    else if ($filter.hasClass('fix')  && $(window).scrollTop() < $filterSpacer.offset().top)
                    {
                        $filter.removeClass("fix");
                        $filterSpacer.remove();
                    }
                });
            }
 
        });
    </script>
</body>
</html>