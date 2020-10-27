<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<head>


<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>

<!--image zoom effect  -->
<style>
/* Quick-zoom Container */
.quick-img-zoom img {
	transform-origin: 0 0;
	transition: transform .45s, visibility .45s ease-in;
}
/* The Transformation */
.quick-img-zoom:hover img {
	transform: scale(10);
}
</style>

</head>
<body>

	<div class="container-wrapper" style="padding: 5%">
		<div class="container">
			<div class="page-header">
				<h1>All Products</h1>
				<p class="lead">Checkout all the awesome products available now!</p>
			</div>
			<table id="example" class="table table-borderless table-hover "
				style="width: 100%">
				<thead>
					<tr>
						<th>Product Thumb</th>
						<th>Product Name</th>
						<th>Unit in Stock</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="product">
						<tr>
							<td>
								<!-- image is coming from external folder , path is in dispatcher servlet -->
								<div class="quick-img-zoom">
									<img src="<c:url value="/images/${product.productId}.png" />"
										alt="image" style="width: 50px; height: 50px" />
								</div>
							</td>
							<td>${product.productName}</td>
							<td>${product.unitInStock}</td>
							<td>${product.productCategory}</td>
							<td>${product.productCondition}</td>
							<td>${product.productPrice}INR</td>
							<td><a
								href="<spring:url value="/product/viewProduct/${product.productId}"/>">
									<span class="btn btn-dark">Buy</span>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>