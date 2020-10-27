<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<!--This page will be usee by admin role  -->

<div class="page-header">
	<h1>Add Product</h1>


	<p class="lead">Fill the below information to add a product:</p>
</div>
<!-- form as multipart -->
<form:form
	action="${pageContext.request.contextPath}/admin/product/addProduct"
	method="post" commandName="product" enctype="multipart/form-data">
	<div class="form-group">
		<label for="name">Name</label>
		<form:errors path="productName" cssStyle="color:#ff0000;" />
		<form:input path="productName" id="name" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="category">Category</label> <label class="checkbox-inline"><form:radiobutton
				path="productCategory" id="category" value="bed" />Bed</label> <label
			class="checkbox-inline"><form:radiobutton
				path="productCategory" id="category" value="chair" />Chair</label> <label
			class="checkbox-inline"><form:radiobutton
				path="productCategory" id="category" value="sofa" />Sofa</label>
	</div>

	<div class="form-group">
		<label for="description">Description</label>
		<form:textarea path="productDescription" id="description"
			class="form-Control" />
	</div>

	<div class="form-group">
		<label for="price">Price</label>
		<form:errors path="productPrice" cssStyle="color:#ff0000;" />
		<form:input path="productPrice" id="price" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="condition">Condition</label> <label
			class="checkbox-inline"><form:radiobutton
				path="productCondition" id="condition" value="new" />New</label> <label
			class="checkbox-inline"><form:radiobutton
				path="productCondition" id="condition" value="used" />Used</label>
	</div>

	<div class="form-group">
		<label for="status">Status</label> <label class="checkbox-inline"><form:radiobutton
				path="productStatus" id="status" value="active" />Active</label> <label
			class="checkbox-inline"><form:radiobutton
				path="productStatus" id="status" value="inactive" />Inactive</label>
	</div>

	<div class="form-group">
		<label for="unitInStock">Unit In Stock</label>
		<form:errors path="unitInStock" cssStyle="color:#ff0000;" />
		<form:input path="unitInStock" id="unitInStock" class="form-Control" />
	</div>

	<div class="form-group">
		<label for="manufacturer">Manufacturer</label>
		<form:input path="productManufacturer" id="manufacturer"
			class="form-Control" />
	</div>

	<!-- This is where we can upload image ,file uploader -->
	<div class="form-group">
		<label class="control-label" for="productImage">Upload Picture</label>
		<form:input id="productImage" path="productImage" type="file"
			class="form:input-large" />
	</div>

	<br />
	<br />

	<input type="submit" value="submit" class="btn btn-primary">
	<a href="<c:url value="/admin/productInventory" />"
		class="btn btn-danger">Cancel</a>

</form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>