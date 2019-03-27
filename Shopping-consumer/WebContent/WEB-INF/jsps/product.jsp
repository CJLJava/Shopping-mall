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

	<jsp:include page="/WEB-INF/head/head.jsp" />
	<div class="container">


		<div class="content inside-page product-details">
			<div class="breadcrumb">
				<a href="index.jsp">Home</a>
				<c:if test="${classify!=null}">
				 / <a
						href="${pageContext.request.contextPath}/clothing/selectClothingByClassify.do?classify=${classify}">${classify}'s
						clothing</a>
				</c:if>
				/ ${clothingById.name}
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
									<!-- 数字增减框部分 -->
									<div id="4div"
										style="overflow: hidden; width: 169px; height: 42.25px; border: 1px solid #CCC;">
										<a id="minus" href="javascript:void(0);"
											style="-moz-user-select: none; cursor: pointer; text-align: center; width: 42.25px; height: 42.25px; line-height: 42.25px; border-right: 1px solid #CCC; float: left">-</a>
										<input id="quantity" value="1"
											style="border: none; width: 82.5px; height: 42.25px; padding: 0px; margin: 0px; text-align: center; vertical-align: middle; line-height: 42.25px;">
										<a id="plus" href="javascript:void(0);"
											style="-moz-user-select: none; cursor: pointer; text-align: center; width: 42.25px; height: 42.25px; line-height: 42.25px; border-left: 1px solid #CCC; float: right">
											+</a>
									</div>
									<!-- 数字增增减框部分 -->
								</div>
								<h2>Inventory:${clothingById.inventory}</h2>
								<div class="pull-right">
									<span class="btn btn-primary"> <i
										class="fa fa-shopping-cart"></i><font id="toCart">Add
											to Cart</font>
									</span>
								</div>
							</div>

							<div class="description-tabs">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" role="tablist">
									<li class="active"><a href="#description" role="tab"
										data-toggle="tab">Description</a></li>
									<li><a href="#review" role="tab" data-toggle="tab">Review
											(${evaluations.size()})</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane active" id="description">
										<font size="3"><b>${clothingById.description}</b></font>
									</div>
									<div class="tab-pane" id="review">
										<c:forEach items="${evaluations}" var="evaluation">
											<div class="reviews">
												<h5>${evaluation}</h5>
												<p>${evaluation}</p>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>



							<div class="clearfix">
								<a href="#" class="btn btn-primary"><i class="fa fa-heart"></i>
									Wishlist</a> <a href="#" class="btn btn-primary" id="compare"><i
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
					<c:forEach items="${popularClothes}" var="popularClothing">
						<div class="product">
							<div class="row">
								<div class="col-sm-4">
									<a
										href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}"><img
										src="${popularClothing.src}" class="img-responsive"></a>
								</div>
								<div class="col-sm-8">
									<div class="title-price">
										<h4>
											<a
												href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}">${popularClothing.name}</a>
										</h4>
										<span>$${popularClothing.price}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>销量：${popularClothing.quantityOfSale}</span>
									</div>

									<a
										href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${popularClothing.id}"
										class="btn btn-default"><i class="fa fa-shopping-cart"></i>
										Look Details</a>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- product -->

				</div>
				<!-- Interested product -->


			</div>


			<!-- RELATED PRODUCTS -->
			<div class="related-products">
				<h3>Up To Date</h3>
				<div class="row" id="miniCart">
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
				<!-- latest products -->




			</div>

		</div>
		<footer>
		<div>
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
	<script type="text/javascript">
	var inventory=${clothingById.inventory};
		$("#toCart").click(function() {
			alert($("#toCart")[0].innerText);
			if ($("#toCart")[0].innerText == "ADD TO CART") {
				addToCart();
			}
			if ($("#toCart")[0].innerText == "SKIP TO CART") {
				skipToCart();
			}
		});
		function addToCart() {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/orderForm/newOrderForm.do",
						data : "quatityString="+$("#quantity").val()+"&commodityId=${clothingById.id}",
						complete : function(XMLHttpRequest, textStatus) {
							if ("${sessionScope.unFinishedOrderForm.size()}" == "") {
								$("#orderFormCount").text("0");
							} else {
								alert("已添加到购物车");
								$("#orderFormCount")
										.text(${sessionScope.unFinishedOrderForm.size()+1});
								window.location.reload();
							}
							if ("${validateMsg}" == "emptyCookie"
									|| "${validateMsg}" == "invalidCookie") {
								location.href = "${pageContext.request.contextPath}/skipToJSP/login.do?lastPage="
										+ window.location.pathname
										+ window.location.search;
							} 
						}
					});
		}

		function skipToCart(){
			location.href="${pageContext.request.contextPath}/skipToJSP/cart.do";
		}
		$("#minus").click(function(){
			var value=$("#quantity").val();
			if($("#quantity").val()>1){
				$("#quantity").val(""+(--value));				
			}
		});
		$("#plus").click(function(){
			var value=$("#quantity").val();
			if($("#quantity").val()<inventory){
				$("#quantity").val(""+(++value));				
			}
		});
	</script>
</body>
</html>