<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>Shops | The Bootstrap Themes</title>

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

	<div class="container">


		<div class="content inside-page product-details">
			<div class="breadcrumb">
				<a href="index.jsp">Home</a> / <a
					href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=${requestScope.classify}">${requestScope.classify}'s
					clothing</a> / ${clothingById.name}
			</div>

			<div class="row">
				<div class="col-sm-9">
					<div class="row">
						<div class="col-sm-5">
							<!-- product carousel -->
							<div id="ProductCarousel" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<div class="item active">
										<img src="${clothingById.src }" class="img-responsive"
											alt="product">
									</div>
								</div>
							</div>
							<!-- product carousel -->
						</div>

						<!-- product information -->
						<div class="col-sm-7 information">
							<h1>${clothingById.name}</h1>
							<div class="price">
								<h1>
									<b>$ ${clothingById.price}</b>
								</h1>
							</div>
							<div class="clearfix spacer">
								<div class="pull-left">
									<input class="form-control quantity" placeholder="Quantity"
										type="number" name="quatity">
								</div>
								<div class="pull-right">
									<a href="checkout.jsp" class="btn btn-primary"><i
										class="fa fa-shopping-cart"></i> Add to Cart</a>
								</div>
							</div>

							<div class="description-tabs">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="active"><a href="#description" role="tab"
										data-toggle="tab">Description</a></li>
									<li><a href="#review" role="tab" data-toggle="tab">Review
											(3)</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active" id="description">
										<font size="3"><b>${clothingById.description}</b></font>
									</div>
									<div class="tab-pane" id="review">

										<div class="reviews">
											<h5>John Smith</h5>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Fusce dolor tellus, tempor ut ultrices ferme ntum,
												aliquam consequat metus.</p>
										</div>

										<div class="reviews">
											<h5>John Smith</h5>
											<p>In vel turpis dolorin dapibus dui. Aenean at auctor
												neque. Lorem ipsum dolor sit , consectetur elit. Fusce dolor
												tellus, tempor ut ultrices fermentum, aliquam consequat
												metus. In vel turpis dolor, in dapibus dui. Aenean at auctor
												neque.</p>
										</div>

										<textarea class="form-control" rows="3">Write review here</textarea>
										<a href="#" class="btn btn-primary">Post Review</a>
									</div>
								</div>
							</div>



							<div class="clearfix">
								<a href="#" class="btn btn-primary"><i class="fa fa-heart"></i>
									Wishlist</a> <a href="#" class="btn btn-primary"><i
									class="fa fa-exchange"></i> Compare</a> <a href="#"
									class="btn btn-primary"><i class="fa fa-envelope"></i> Send
									an Email</a>
							</div>
						</div>
						<!-- product information -->
					</div>
				</div>


				<!-- Interested product -->
				<div class="col-sm-3 interest-product hidden-xs">
					<h3>You might also be interested</h3>
					<!-- product -->
					<div class="product">
						<div class="row">
							<div class="col-sm-4">
								<a href="product.jsp"><img src="images/photos/2.jpg"
									class="img-responsive"></a>
							</div>
							<div class="col-sm-8">
								<div class="title-price">
									<h4>
										<a href="product.jsp">Warm Cloths</a>
									</h4>
									<span>$ 200</span>
								</div>

								<a href="product.jsp" class="btn btn-default"><i
									class="fa fa-shopping-cart"></i> Add to Cart</a>
							</div>
						</div>
					</div>
					<!-- product -->
					<!-- product -->
					<div class="product">
						<div class="row">
							<div class="col-sm-4">
								<a href="product.jsp"><img src="images/photos/6.jpg"
									class="img-responsive"></a>
							</div>
							<div class="col-sm-8">
								<div class="title-price">
									<h4>
										<a href="product.jsp">Warm Cloths</a>
									</h4>
									<span>$ 200</span>
								</div>

								<a href="product.jsp" class="btn btn-default"><i
									class="fa fa-shopping-cart"></i> Add to Cart</a>
							</div>
						</div>
					</div>
					<!-- product -->
					<!-- product -->
					<div class="product">
						<div class="row">
							<div class="col-sm-4">
								<a href="product.jsp"><img src="images/photos/1.jpg"
									class="img-responsive"></a>
							</div>
							<div class="col-sm-8">
								<div class="title-price">
									<h4>
										<a href="product.jsp">Warm Cloths</a>
									</h4>
									<span>$ 200</span>
								</div>

								<a href="product.jsp" class="btn btn-default"><i
									class="fa fa-shopping-cart"></i> Add to Cart</a>
							</div>
						</div>
					</div>
					<!-- product -->

				</div>
				<!-- Interested product -->


			</div>


			<!-- RELATED PRODUCTS -->
			<div class="related-products">
				<h3>Related Products</h3>
				<div class="row">
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/6.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/5.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/4.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/3.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/2.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>
					<div class="col-sm-2 col-xs-6">
						<div class="product">
							<a href="product.jsp"><img src="images/photos/1.jpg"
								class="img-responsive"></a>
							<div class="row title-price">
								<div class="col-md-8">
									<h5>
										<a href="product.jsp">Warm Cloths</a>
									</h5>
								</div>
								<div class="col-md-4">
									<span>$ 200</span>
								</div>
							</div>
							<a href="product.jsp" class="btn btn-default"><i
								class="fa fa-shopping-cart"></i> Add to Cart</a>
						</div>
					</div>

				</div>
			</div>
			<!-- latest products -->




		</div>

	</div>
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3 sitemap">
				<h4>Sitemap</h4>
				<ul class="list-unstyled">
					<li><a href="#">Home</a></li>
					<li><a href="#">Return Policy</a></li>
					<li><a href="#">Terms and Condition</a></li>
					<li><a href="#">Contact</a></li>
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
				<span class="social"><a href="#"><i
						class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i> <a href="#"><i
							class="fa fa-youtube"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a></span>
			</div>


		</div>
		<!--/.row-->


		<!--/.footer-bottom-->
	</div>
	</footer>
	<div class="copyright">
		<div class="container">

			© Copyright SHOPS 2015 <a href="http://thebootstrapthemes.com"
				class="pull-right">The Bootstrap Themes</a>

		</div>
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