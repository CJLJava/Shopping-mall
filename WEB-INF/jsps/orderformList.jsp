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

		<!-- checkout -->
		<div class="content inside-page payment">
			<h2 class="title">Payment Information</h2>
			<div class="breadcrumb">
				<a href="index.jsp">Home</a> / Payment Information
			</div>
			<h1>Orderform List</h1>
			<div class="shopping-cart">
				<!-- fieldsets -->


				<div class="row product-list title hidden-xs">
					<div class="col-xs-2">Product</div>
					<div class="col-xs-2">Quantity</div>
					<div class="col-xs-2">DeliveryTime</div>
					<div class="col-xs-2">ReceiptTime</div>
					<div class="col-xs-2">Evaluation</div>
					<div class="col-xs-2">Delete</div>
				</div>
				<hr>
				<form onsubmit="return false" id="cartForm">
					<c:forEach items="${allOrderform}" var="orderform">
						<div class="row product-list">
							<div class="col-xs-2 col-sm-2">
								<a
									href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${orderform.clothing.id}"><img
									src="${orderform.clothing.src}" class="img-responsive"
									alt="product" style="width: 100px">${orderform.clothing.name}</a>
							</div>
							<div class="col-xs-2 col-sm-2 center">${orderform.quatity}</div>
							<div class="col-xs-2 col-sm-2 center">${orderform.deliveryTime}</div>
							<div class="col-xs-2 col-sm-2 center">${orderform.receiptTime}</div>
							<div class="col-xs-2 col-sm-2 center">
								<c:if test="${orderform.status<5}">
									<button class="evaluation"
										value="${orderform.clothing.id}&orderformId=${orderform.id}">
										evaluation</button>
								</c:if>
								<c:if test="${orderform.status==5}">
									<span class="btn btn-primary pull-left"> complete</span>
								</c:if>
							</div>
							<div class="col-xs-2 col-sm-2 center">
								<button class="deleteOrderformOfHistory" value="${orderform.id}">
									<i class="fa fa-close"></i>
								</button>
							</div>
						</div>
					</c:forEach>
				</form>
			</div>
		</div>
	</div>

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
		$(".deleteOrderformOfHistory")
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
		$(".evaluation")
				.click(
						function() {
							console.log($(this).val());
							location.href = "${pageContext.request.contextPath}/skipToJSP/evaluation.do?clothingId="
									+ $(this).val();
						});
	</script>
</body>
</html>