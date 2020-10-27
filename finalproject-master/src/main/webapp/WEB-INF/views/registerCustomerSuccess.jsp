<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Customer registered successfully!</h1>
				</div>
			</div>
		</section>
	</div>
</div>
<section class="container">
	<p>
		<a href="<spring:url value="/product/productList/all" />"
			class="btn btn-secondary">Product</a>
	</p>
</section>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>