<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<div class="header">
		<nav class="navbar  navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h1>
					<a class="navbar-brand logo"
						href="${pageContext.request.contextPath}/skipToJSP/index.do">Fashion
					</a>
				</h1>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Classify <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a
								href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=men">Men</a></li>
							<li><a
								href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=women">Women</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Others <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a
								href="${pageContext.request.contextPath}/skipToJSP/about.do">About</a></li>
							<li><a
								href="${pageContext.request.contextPath}/skipToJSP/terms.do">Terms</a></li>
							<li><a
								href="${pageContext.request.contextPath}/skipToJSP/contact.do">Contact</a></li>
						</ul></li>
				</ul>

				<form class="navbar-form navbar-left searchbar" role="search">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Search Products" id="content"><font size="5"><a
							href="javascript:void(0);" id="search"><i
								class="glyphicon glyphicon-search"></i></a></font>
					</div>
				</form>
				<ul class="nav navbar-nav">
					<c:if test="${sessionScope.autoLogin==null}">
						<li><a href="javascript:void(0);" data-target="#login"
							id="login"><span class="glyphicon glyphicon-user"></span>Login</a>
						<li><a
							href="${pageContext.request.contextPath}/skipToJSP/register.do"
							data-target="#login"><span class="glyphicon glyphicon-user"></span>Register</a></li>
					</c:if>
					<c:if test="${sessionScope.autoLogin!=null}">
						<li><a
							href="${pageContext.request.contextPath}/user/logOut.do"
							data-target="#login" id="logOut"><span
								class="glyphicon glyphicon-user"></span>LogOut</a></li>
						<li><a href="javascript:void(0);" data-target="#login"
							id="personalCenter"><span class="glyphicon glyphicon-user"></span>Personal
								Center</a></li>
					</c:if>
					<li class="dropdown" id="cartModule"><a href="#"
						class="dropdown-toggle cart" data-toggle="dropdown"><span
							class="glyphicon glyphicon-shopping-cart"></span>Cart<span
							class="cart-counter" id="orderFormCount">0</span> <span
							class="caret"></span></a> <c:if
							test="${sessionScope.autoLogin!=null}">
							<div class="dropdown-menu mini-cart" id="miniCart">
								<c:forEach items="${unFinishedOrderForm}" var="orderform">
									<div class="row product-list">
										<div class="col-xs-3">
											<a
												href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${orderform.clothing.id}"><img
												src="${orderform.clothing.src}" class="img-responsive"
												alt="product"></a>
										</div>
										<div class="col-xs-7">
											<a
												href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${orderform.clothing.id}">
												${orderform.clothing.name}</a>
											<div>$${orderform.clothing.price}&nbsp;&nbsp;${orderform.quatity}件</div>
										</div>
										<div class="col-xs-1">
											<button class="deleteOrderformOfMiniCart"
												value="${orderform.id}">
												<i class="fa fa-close"></i>
											</button>
										</div>
									</div>
								</c:forEach>

								<div class="clearfix">
									<a
										href="${pageContext.request.contextPath}/skipToJSP/orderformList.do"
										class="btn btn-primary">Orderform List</a> <a
										href="${pageContext.request.contextPath}/skipToJSP/cart.do"
										class="btn btn-primary">checkout</a>
								</div>
							</div>
						</c:if></li>
				</ul>
			</div>
			<!-- Wnavbar-collapse -->
		</div>
		<!-- container-fluid --> </nav>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			if ("${existInCart}" == "true") {
				$("#toCart").text("Skip To Cart");
			}
			if ("${sessionScope.unFinishedOrderForm.size()}" == "") {
				$("#orderFormCount").text("0");
			} else {
				$("#orderFormCount").text(
						"${sessionScope.unFinishedOrderForm.size()}");
			}
		}
		$("#login")
				.click(
						function() {
							location.href = "${pageContext.request.contextPath}/skipToJSP/login.do?lastPage="
									+ window.location.pathname
									+ window.location.search;
						});
		$(".deleteOrderformOfMiniCart")
				.click(
						function() {
							alert("到底触发删除没有");
							$
									.ajax({
										url : "${pageContext.request.contextPath}/orderForm/deleteOrderformById.do",
										data : "orderformId=" + $(this).val(),
										complete : function(data) {
											alert("删除成功");
											parent.location.reload();
										}
									});
						});
		$("#search")
				.click(
						function() {
							location.href = "${pageContext.request.contextPath}/clothing/searchCommodity.do?content="
									+ $("#content").val();
						});
	</script>
</body>
</html>