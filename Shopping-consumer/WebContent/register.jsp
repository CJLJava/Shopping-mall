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

		<!-- checkout -->
		<form action="${pageContext.request.contextPath}/user/register.do"
			method="post" id="registerForm">
			<div class="content inside-page register">
				<h2 class="title">Register ajax验证后面做</h2>
				<div class="breadcrumb">
					<a href="index.jsp">Home</a> / Register
				</div>

				<fieldset>
					<div class="form-horizontal content-center">

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Name</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="userName">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Address</label>
							<div class="col-sm-8">
								<div class="row">
									<div class="col-xs-4">
										<select class="form-control" id="s_province" name="province"></select>
									</div>

									<div class="col-xs-4">
										<select class="form-control" id="s_city" name="city"></select>
									</div>

									<div class="col-xs-4">
										<select class="form-control" id="s_county" name="county"></select>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Detailed
								Address</label>
							<div class="col-sm-8">
								<textarea class="form-control" name="detailedAddress"></textarea>
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Phone</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="phone">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Password</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="password">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-4 control-label">Re-Enter
								Password(前端验证)</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="validatePassword">
							</div>
						</div>

						<div class="col-sm-8 col-sm-offset-4">
							<input type="submit" class="btn btn-primary pull-left"
								id="registerbt" value="Create an Account" />
						</div>

					</div>

				</fieldset>

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
	<script class="resources library" src="js/area.js"
		type="text/javascript"></script>

	<script type="text/javascript">
		_init_area();
	</script>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
</body>

</html>