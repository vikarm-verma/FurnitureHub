<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<head>
<style>
/* Quick-zoom Container */
.quick-img-zoom img {
	transform-origin: 0 0;
	transition: transform .25s, visibility .25s ease-in;
}
/* The Transformation */
.quick-img-zoom:hover img {
	transform: scale(2);
}
</style>
</head>


<!--this is for viewing the product , here if you click on addtocart , you jump into flow   -->
<div class="container-wrapper">
	<div class="container" ng-app="cartApp">
		<div class="page-header">
			<h1>Product Detail</h1>
			<p class="lead">Time to know something about product:</p>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-5 quick-img-zoom">
					<img src="<c:url value="/images/${product.productId}.png" />"
						alt="image" style="width: 450px; height: 450px" />
				</div>
				<div class="col-md-5">
					<h3>
						<b>${product.productName}</b>
					</h3>
					<p>
						<i>${product.productDescription}</i>
					</p>
					<p>
						<strong>Manufacturer</strong>: ${product.productManufacturer}
					</p>
					<p>
						<strong>Category</strong>: ${product.productCategory}
					</p>
					<p>
						<strong>Condition</strong>: ${product.productCondition}
					</p>
					<p>${product.productPrice}INR</p>

					<br />
					<c:set var="role" scope="page" value="${param.role}" />
					<c:set var="url" scope="page" value="/product/productList/all" />
					<c:if test="${role=='admin'}">
						<c:set var="url" scope="page" value="/admin/productInventory" />
					</c:if>
					<p ng-controller="cartCtrl">
						<a href="<c:url value = "${url}" />" class="btn btn-secondary">Back</a>
						<!--  -->

						<a href="#" class="btn btn-warning"
							ng-click="addToCart('${product.productId}')"> <span></span>
							Add To Cart
						</a>

					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- My -->
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>
