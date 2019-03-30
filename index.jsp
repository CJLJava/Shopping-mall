<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>商店| Bootstrap主题</title>

<!-- Google fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Old+Standard+TT:400,400italic'
	rel='stylesheet' type='text/css'>


<!-- font awesome -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<!-- bootstrap -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />


<!-- animate.css -->
<link rel="stylesheet" href="assets/animate.css" />



<!-- Owl Carousel Assets -->
<link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">

<link href="assets/style.css" rel="stylesheet">

<!-- favicon -->
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">


</head>

<body id="home">
	<jsp:include page="WEB-INF/head/head.jsp" />
	<!-- hero landing -->
	<div class="hero-land clearfix">
		<div class="landing men-land">
			<img src="images/female.jpg" class="img-responsive" alt="slide">
			<div class="caption animated fadeInUp">
				<h1>Womens Collection</h1>
				<a
					href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=women"><i
					class="fa fa-angle-right"></i></a>
			</div>
		</div>
		<div class="landing women-land">
			<img src="images/male.jpg" class="img-responsive" alt="slide">
			<div class="caption  animated fadeInUp">
				<h1>Mens Collection</h1>
				<a
					href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=men"><i
					class="fa fa-angle-right"></i></a>
			</div>
		</div>
	</div>
	<!-- hero landing -->




	<!-- slider and feature product-->
	<div class="container-feature">

		<div class="container">
			<div class="row">

				<div class="col-sm-7">
					<h3>Recommend</h3>


					<!-- banner -->
					<div class="banner">


						<div class="carousel fade-carousel slide" data-ride="carousel"
							data-interval="4000" id="banner-carousel">

							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item slides active">
									<img src="images/1.jpg" class="img-responsive" alt="slide">
									<div class="carousel-caption">
										<h2 class="animated slideInLeft">Check out our Wedding
											Collection</h2>
										<button class="btn btn-primary btn-lg" role="button">View
											all Products</button>
									</div>
								</div>
								<div class="item slides">
									<img src="images/2.jpg" class="img-responsive" alt="slide">
									<div class="carousel-caption">
										<h2 class="animated slideInLeft">High quality products at
											your budget</h2>
										<button class="btn btn-primary btn-lg" role="button">View
											all Products</button>
									</div>
								</div>
								<div class="item slides">
									<img src="images/3.jpg" class="img-responsive" alt="slide">
									<div class="carousel-caption">
										<h2 class="animated slideInLeft">Gifts collection for any
											occasion</h2>
										<button class="btn btn-primary btn-lg" role="button">View
											all Products</button>
									</div>
								</div>
							</div>
							<!-- Controls -->
							<a class="left carousel-control" href="#banner-carousel"
								role="button" data-slide="prev"> <i class="fa fa-angle-left"></i>
							</a> <a class="right carousel-control" href="#banner-carousel"
								role="button" data-slide="next"> <i
								class="fa fa-angle-right"></i>
							</a>

						</div>



					</div>
					<!-- banner-->

				</div>

				<div class="col-sm-5">
					<!-- feature-products -->
					<div class="feature-products">
						<h3>Popular Clothing</h3>
						<div id="owl-products" class="owl-carousel">
							<c:forEach items="${popularClothes}" var="popularClothing">
								<div class="product">
									<a
										href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}"><img
										src="${popularClothing.src}" class="img-responsive"></a>
									<div class="row title-price">
										<div class="col-md-8">
											<h5>
												<a
													href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}">${popularClothing.name}</a>
											</h5>
										</div>
										<div class="col-md-4">
											<span>销量：${popularClothing.quantityOfSale}</span>
										</div>
										<div class="col-md-4">
											<span>$${popularClothing.price}</span>
										</div>
									</div>
									<a
										href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}"
										class="btn btn-default"><i class="fa fa-shopping-cart"></i>
										Look Details</a>
								</div>
							</c:forEach>
						</div>
					</div>
					<!-- featured -->

				</div>
			</div>
		</div>
	</div>
	<!-- slider and feature product-->




	<!-- latest products -->
	<div class="latest-products">
		<div class="container">
			<h3>Up To date</h3>
			<div class="row">
				<c:forEach items="${latestClothes}" var="clothing">
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a
								href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${clothing.id}"><img
								src="${clothing.src}" class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a
											href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${clothing.id}">${clothing.name}</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$${clothing.price}</span>
								</div>
							</div>
							<a
								href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${clothing.id}"
								class="btn btn-default"><i class="fa fa-shopping-cart"></i>Look
								Details</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- latest products -->


	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 sitemap">
				<h4>Sitemap</h4>
				<ul class="list-unstyled">
					<li><a href="javascript:void(0);">Home</a></li>
					<li><a href="javascript:void(0);">Return Policy</a></li>
					<li><a href="javascript:void(0);">Terms and Condition</a></li>
					<li><a href="javascript:void(0);">Contact</a></li>
				</ul>
			</div>


			<div class="col-sm-3 subscribe">
				<h4>Enquiries</h4>
				<p>
					3488 Oak Avenue <br> Lockport, NY 14094
				</p>

				<i class="fa fa-envelope"></i> hello@bbbcc.com<br> <i
					class="fa fa-phone"></i> 0000 000 000<br>
			</div>
			<div class="col-sm-3 joinus">
				<h4>Subscribe</h4>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Your Name">
				</div>
				<div class="input-group">
					<input type="text" class="form-control email"
						placeholder="Your Email Address...">
				</div>
				<button class="btn btn-primary">
					<i class="fa fa-paper-plane"></i> Subscribe
				</button>
			</div>
			<div class="col-sm-3">
				<h4>Like and follow us</h4>
				<span class="social"><a href="javascript:void(0);"><i
						class="fa fa-facebook"></i></a> <a href="javascript:void(0);"><i
						class="fa fa-twitter"></i> <a href="javascript:void(0);"><i
							class="fa fa-youtube"></i></a> <a href="javascript:void(0);"><i
							class="fa fa-pinterest"></i></a></span>
			</div>


		</div>
		<!--/.row-->


		<!--/.footer-bottom-->
	</div>
	</footer>
	<div class="copyright">
		<div class="container">

			? Copyright SHOPS 2015 <a href="http://thebootstrapthemes.com"
				class="pull-right">The Bootstrap Themes</a>

		</div>
	</div>


	<script src="assets/jquery.js"></script>



	<!-- owlcarousel -->
	<script src="assets/owl-carousel/owl.carousel.min.js"></script>

	<!-- boostrap -->
	<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript"></script>

	<!-- jquery mobile -->
	<script src="assets/mobile/touchSwipe.min.js"></script>
	<script src="assets/respond/respond.js"></script>





	<!-- custom script -->
	<script src="assets/script.js"></script>

</body>
</html>