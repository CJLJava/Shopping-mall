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

	<jsp:include page="/WEB-INF/head/head.jsp" />

	<div class="container">

		<!-- checkout -->
		<form action="${pageContext.request.contextPath}/user/login.do?lastPage=${param.lastPage}"
			method="post">
			<div class="content inside-page login">
				<h2 class="title">Login/Register</h2>
				<div class="breadcrumb">
					<a href="index.jsp">Home</a> / Checkout
				</div>

				<div class="row">
					<div class="col-sm-6">
						<h3>Sign In</h3>
						<div class="form-group">
							<label for="exampleInputEmail1">Phone</label> <input type="text"
								class="form-control" id="exampleInputEmail1"
								placeholder="Enter Phone" name="phone">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Password" name="password">
						</div>
						<div class="checkbox">
							<label> <input type="checkbox" class="btn btn-primary"
								name="autoLogin" value="autoLogin"> Remember password
							</label>
						</div>
						<input type="submit" class="btn btn-primary" value="Submit" />
					</div>
					<div class="col-sm-6">
						<h3>Create an Account</h3>
						<p>I would like to create a new account. Lorem ipsum dolor sit
							amet, consectetur adipiscing elit. Fusce dolor tellus, tempor ut
							ultrices ferme ntum, aliquam consequat metus.</p>
						<a href="register.jsp" class="btn btn-primary">Create an
							Account</a>

					</div>
				</div>

				<hr>
				<a href="cart.jsp" class="btn btn-primary pull-left">Continue
					Shopping</a> <a href="completePayment.jsp" class="btn btn-primary pull-right">Continue</a>
			</div>
		</form>
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
		window.onload=function(){
			if("${alertMsg}"!=""){
				alert("${alertMsg}");
			}
		}
	</script>
</body>
</html>