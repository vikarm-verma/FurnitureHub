<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<!-- script for data table -->
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    } );
</script>

<!--this page will show all products to admin , just after adding the product this page will appear  -->
<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Inventory Page</h1>
			<p class="lead">This is the product inventory page:</p>

			<table id="example" class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Product Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${products}" var="product">
						<tr>
							<!--this image is coming from the external folder which path has set in dispatcher servlet  -->
							<td><img
								src="<c:url value="/images/${product.productId}.png" />"
								alt="image" style="width: 50px; height: 50px" /></td>
							<td>${product.productName}</td>
							<td>${product.productCategory}</td>
							<td>${product.productCondition}</td>
							<td>${product.productPrice}INR</td>
							<td><a
								href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
									class="btn btn-primary">view</span></a> <a
								href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span
									class="btn btn-danger">delete</span></a> <a
								href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span
									class="btn btn-primary">edit</span></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="<spring:url value="/admin/product/addProduct" />"
				class="btn btn-primary">Add Product</a>

		</div>
	</div>
</div>
<br />
<br />


<%@ include file="/WEB-INF/views/template/footer.jsp"%>