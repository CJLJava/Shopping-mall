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
					<a class="navbar-brand logo" href="index.jsp">Fashion </a>
				</h1>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right"
				id="bs-example-navbar-collapse-1">

				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Classify <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=men">Men</a></li>
							<li><a href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=women">Women</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Others <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="about.jsp">About</a></li>
							<li><a href="terms.jsp">Terms</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul></li>
				</ul>

				<form class="navbar-form navbar-left searchbar" role="search">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Search for products">
					</div>
				</form>
				<ul class="nav navbar-nav">
					<c:if test="${sessionScope.autoLogin==null}">
						<li><a href="login.jsp" data-target="#login"><span
								class="glyphicon glyphicon-user"></span> Login</a>
						<li><a href="register.jsp" data-target="#login"><span
								class="glyphicon glyphicon-user"></span> Register</a></li>
					</c:if>
					<c:if test="${sessionScope.autoLogin!=null}">
						<li><a href="${pageContext.request.contextPath}/user/logOut.do" data-target="#login" id="logOut"><span
								class="glyphicon glyphicon-user"></span> LogOut</a></li>
						<li><a href="#" data-target="#login" id="personalCenter"><span
								class="glyphicon glyphicon-user"></span> Personal Center</a></li>
					</c:if>
					<li class="dropdown"><a href="#" class="dropdown-toggle cart"
						data-toggle="dropdown"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart <span
							class="cart-counter">9</span> <span class="caret"></span></a>
						<div class="dropdown-menu mini-cart">
							<div class="row product-list">
								<div class="col-xs-3">
									<a href="#"><img src="images/photos/1.jpg"
										class="img-responsive" alt="product"></a>
								</div>
								<div class="col-xs-7">
									<a href="#">White V-neck Tshirt</a>
								</div>
								<div class="col-xs-1">
									<a href="#"><i class="fa fa-close"></i></a>
								</div>
							</div>

							<div class="row product-list">
								<div class="col-xs-3">
									<a href="#"><img src="images/photos/2.jpg"
										class="img-responsive" alt="product"></a>
								</div>
								<div class="col-xs-7">
									<a href="#">White V-neck Tshirt</a>
								</div>
								<div class="col-xs-1">
									<a href="#"><i class="fa fa-close"></i></a>
								</div>
							</div>

							<div class="clearfix">
								<a href="checkout.jsp" class="btn btn-primary">continue
									shopping</a> <a href="checkout.jsp" class="btn btn-primary">checkout</a>
							</div>

						</div></li>
				</ul>
			</div>
			<!-- Wnavbar-collapse -->
		</div>
		<!-- container-fluid --> </nav>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
</body>
</html>