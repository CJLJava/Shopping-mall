<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		<div class="content inside-page checkout">

			<h2 class="title">Checkout</h2>
			<div class="breadcrumb">
				<a href="index.jsp">Home</a> / Checkout
			</div>

			<div class="shopping-cart">
				<!-- fieldsets -->


				<div class="row product-list title hidden-xs">
					<div class="col-xs-4">Product</div>
					<div class="col-xs-4">Unit Price</div>
					<div class="col-xs-2 center price">Sub-Total</div>
					<div class="col-xs-1">Qty</div>
					<div class="col-xs-1 center">Action</div>
				</div>
				<hr>
				<form onsubmit="return false" id="cartForm">
					<c:forEach items="${unFinishedOrderForm}" var="orderform">
						<div class="row product-list">
							<div class="checkbox">
								<input type="checkbox" value="${orderform.id}"
									class="checkboxChild" />
							</div>
							<div class="col-xs-3 col-sm-2">
								<a
									href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${orderform.clothing.id}"><img
									src="${orderform.clothing.src}" class="img-responsive"
									alt="product"></a>
							</div>
							<div class="col-xs-3 col-sm-2 title">
								<a
									href="${pageContext.request.contextPath}/clothing/selectClothingById.do?clothingId=${orderform.clothing.id}">${orderform.clothing.name}</a>
							</div>
							<div class="col-xs-2 col-sm-4 title">$${orderform.clothing.price}</div>
							<div class="col-xs-4 col-sm-2 center price" class="subTotal">$${orderform.clothing.price*orderform.quatity}</div>
							<div class="col-xs-3 col-sm-1">
								<input class="quantity" placeholder="Quantity" min="1"
									max="${orderform.clothing.inventory}" type="number"
									value="${orderform.quatity}" name="${orderform.id}-quantity"
									style="text-align: center; width: 80px; height: 40px; line-height: 40px;">
							</div>
							<div class="col-xs-2 col-sm-1 center">
								<button class="deleteOrderformOfCart" value="${orderform.id}">
									<i class="fa fa-close"></i>
								</button>
							</div>
						</div>
					</c:forEach>

					<div class="row product-list grandtotal">
						<div class="col-xs-2 left price">
							<input type="checkbox" name="selectAll" value="selectAll"
								id="checkboxParent">
						</div>
						<div class="col-xs-9 col-sm-6 title">Total:</div>
						<div class="col-xs-4 col-sm-2 center price" id="totalPrice">$0</div>
					</div>
					<a href="classify.jsp" class="btn btn-primary pull-left">Select
						All这个可以不用，感觉多余了</a> <span class="btn btn-primary pull-right"
						id="submit">Proceed Checkout</span>
				</form>
			</div>
		</div>
		<!-- form -->

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
	<script type="text/javascript">
		var orderformIdGroup = new Array();
		var checkboxQuantity = $(".checkboxChild").length;
		var totalPrice = 0.0;
		$("#submit")
				.click(
						function() {
							console.log("orderformIdGroup=" + orderformIdGroup
									+ "&" + $("#cartForm").serialize());
							for (var i = 0; i < checkboxQuantity; i++) {
								if ($(".checkboxChild")[i].checked) {
									orderformIdGroup
											.push($(".checkboxChild")[i].value);
								}
							}
							$
									.ajax({
										url : "${pageContext.request.contextPath}/orderForm/createOrderFormGroup.do",
										data : "orderformIdGroup="
												+ orderformIdGroup + "&"
												+ $("#cartForm").serialize(),
										success : function(data) {
											location.href = "${pageContext.request.contextPath}/skipToJSP/completeOrderformInfo.do";
										}
									});
						});
		$("#checkboxParent").click(
				function() {
					totalPrice = 0.0;
					if ($("#checkboxParent")[0].checked) {
						$(".checkboxChild").each(
								function() {
									this.checked = true;
									totalPrice += parseFloat($(this).parent()
											.next().next().next().next().text()
											.substring(1));
								});
					} else {
						for (var i = 0; i < checkboxQuantity; i++) {
							$(".checkboxChild")[i].checked = false;
						}
						totalPrice = 0;
					}
					$("#totalPrice").text("$ " + totalPrice.toFixed(1));
				});
		$(".checkboxChild").click(
				function() {
					var count = 0;
					var subTotal = parseFloat($(this).parent().next().next()
							.next().next().text().substring(1));
					if ($(this).prop('checked')) {
						totalPrice += subTotal;
					} else {
						totalPrice -= subTotal;
					}
					$("#totalPrice").text(totalPrice.toFixed(1));
					$(".checkboxChild").each(function() {
						if ($(this).checked) {
							count++;
							if (checkboxQuantity == count) {
								$("#checkboxParent")[0].checked = true;
							}
						} else {
							$("#checkboxParent")[0].checked = false;
						}
					});
				});
		function removeByValue(arr, val) {
			for (var i = 0; i < arr.length; i++) {
				if (arr[i] == val) {
					arr.splice(i, 1);
					break;
				}
			}
		}
		$(".deleteOrderformOfCart")
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
		$(".quantity").on(
				"change",
				function() {
					var unitPrice = parseFloat($(this).parent().prev().prev()
							.text().substring(1));
					$(this).parent().prev().text(
							"$ " + (unitPrice * $(this).val()).toFixed(1));
					totalPrice = 0.0;
					$(".checkboxChild").each(
							function() {
								if ($(this).prop('checked')) {
									totalPrice += parseFloat($(this).parent()
											.next().next().next().next().text()
											.substring(1));
								}
							});
					$("#totalPrice").text("$ " + totalPrice);
				});
	</script>
</body>
</html>