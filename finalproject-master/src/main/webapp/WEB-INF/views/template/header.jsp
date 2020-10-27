<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Delhi Furniture Works</title>

<!--Used cdn so internet is super required  -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<link
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
</head>

<body>
	<!-- Creating a navbar with all basic nav options  -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		

			<div class="navbar-header">

				<a class="navbar-brand" href="<c:url value="/" />">Delhi
					Furniture Works</a>

			</div>
			
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div id="navbar" class="collapse navbar-collapse ">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/" />">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/product/productList/all" />">Products</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/about" />">About Us</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/contactus" />">Contact Us</a></li>
				</ul>

				<ul class="nav navbar-nav pull-right">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<li class="nav-item"><a class="nav-link">Welcome:
								${pageContext.request.userPrincipal.name}</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
						<c:if test="${pageContext.request.userPrincipal.name !='vikram'}">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/customer/cart" />">Cart</a></li>
						</c:if>
						<c:if test="${pageContext.request.userPrincipal.name == 'vikram'}">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/admin" />">Admin</a></li>
						</c:if>
					</c:if>
				
					<c:if test="${pageContext.request.userPrincipal.name == null}">
					<%-- 	<li class="nav-item"><a class="nav-link"
						href="<c:url value="/admin" />">Admin</a></li> --%>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/login" />">Login</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="/register" />">Register</a></li>
					</c:if>
				</ul>
			</div>
	</nav>