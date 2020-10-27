<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<head>
<style>
/* creaing style for zooming image */
/* Quick-zoom Container */
.quick-img-zoom img {
	transform-origin: 0 0;
	transition: transform .15s, visibility .15s ease-in;
}
/* The Transformation */
.quick-img-zoom:hover img {
	transform: scale(5);
}

body {
	background-image: url('./resources/images/sofa5.jpg');
}
</style>
</head>

<br />
<br />

<body>
	<div class="container-wrapper">
		<div class="container">
			<section>
				<div class="jumbotron">
					<div class="container">
						<h1>Cart</h1>
						<p>All the selected products in your shopping cart</p>
					</div>
				</div>
			</section>

			<!-- Here angular js been used so we are requesting cartApp there which is in a controller(cartCtrl) of angular js  -->
			<section class="container" ng-app="cartApp">
				<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
					<div>
						<a class="btn btn-danger pull-left" ng-click="clearCart()"> <span
							class="glyphicon glyphicon-remove-sign"> </span> Clear Cart
						</a> <a href="<spring:url value="/order/${cartId}" />"
							class="btn btn-success pull-right"> <span
							class="glyphicon glyphicon-shopping-cart"> </span> Check out
						</a>
					</div>
					<br /> <br /> <br />
					<table class="table table-hover">
						<tr>
							<th>Image</th>
							<th>Product</th>
							<th>Unit Price</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Action</th>
						</tr>
						<tr ng-repeat="item in cart.cartItems">
							<td>
								<div class="col-md-5 quick-img-zoom">
									<img
										ng-src="<c:url value="/images/{{item.product.productId}}.png" />"
										alt="no image" style="width: 50px; height: 50px" />
								</div>
							</td>
							<td>{{item.product.productName}}</td>
							<td>{{item.product.productPrice}}</td>
							<td>{{item.quantity}}</td>
							<td>{{item.totalPrice}}</td>
							<td><a href="#" class="label label-danger"
								ng-click="removeFromCart(item.product.productId)"> <span
									class="glyphicon glyphicon-remove"></span>remove
							</a></td>
						</tr>
						<tr>
							<th></th>
							<th></th>
							<th>Grand Total</th>
							<th>{{calGrandTotal()}}</th>
							<th></th>
						</tr>
					</table>

					<a href="<spring:url value="/product/productList/all" />"
						class="btn btn-secondary"> Continue Shopping</a>
				</div>
			</section>
		</div>
	</div>
</body>
<br />
<br />
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>