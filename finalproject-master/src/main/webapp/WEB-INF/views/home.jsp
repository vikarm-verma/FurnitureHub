
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Just a simple demo of showing tooltip , if you want you can add tooltip to more images -->
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</head>

<body>
	<div style="height: 100%; width: 100%">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
			<div class="carousel-inner">
				<div id="my-carousel-bg" class="carousel-item active">
					<a href="<c:url value="/product/productList/all" />"> <img
						src="./resources/images/sofa11.jpg" alt="First slide"
						style="height: 100%; width: 100%">
					</a>
				</div>
				<div class="carousel-item">
					<a href="<c:url value="/product/productList/all" />"> <img
						src="./resources/images/chair8.jpg" alt="Second slide"
						style="height: 100%; width: 100%">
					</a>
				</div>
				<div class="carousel-item">
					<a href="<c:url value="/product/productList/all" />"> <img
						src="./resources/images/doublebed11.jpg" alt="Third slide"
						style="height: 100%; width: 100%">
					</a>
				</div>

			</div>

		</div>
	</div>
	<hr />

	<div class="row">
		<div class="span view overlay"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 50px; position: relative; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <!-- Showing this image from project's images folder so these images must be present in thsi folder only -->
				<img class="hoverable" src="./resources/images/chair9.jpg"
				alt="Second slide"
				style="height: 320px; width: 240px; border-radius: 25px; padding: 10px;">
			</a>
		</div>
		<div class="span"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 10px; position: relative; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/chair12.jpg" alt="Second slide"
				style="height: 320px; width: 240px; border-radius: 25px; padding: 10px;"></a>
		</div>
		<div class="span"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 10px; position: relative; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/chair5.jpg" alt="Second slide"
				style="height: 320px; width: 240px; border-radius: 25px; padding: 10px;"></a>
		</div>
		<div class="span"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 10px; position: relative; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/chair6.jpg" alt="Second slide"
				style="height: 320px; width: 240px; border-radius: 25px; padding: 10px;"></a>
		</div>
		<div class="span"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 10px; position: relative; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/chair10.jpg" alt="Second slide"
				style="height: 320px; width: 240px; border-radius: 25px; padding: 10px;"></a>
		</div>
	</div>

	<hr />

	<div class="row">
		<div class="col-sm"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 50px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/sofa3.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; border-right: 5px solid grey; border-left: 5px solid grey; padding: 10px;"></a>
		</div>

		<div class="col-sm"
			style="height: 350px; width: 350px; margin-top: 10px; margin-left: 10px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/sofa6.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; padding: 10px; border-right: 5px solid grey; border-left: 5px solid grey;"></a>
		</div>
		<div class="col-sm"
			style="height: 350px; width: 350px; margin-top: 10px; margin-left: 5px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/sofa9.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; padding: 10px; border-right: 5px solid grey; border-left: 5px solid grey;"></a>
		</div>
	</div>

	<hr />
	<div class="row">
		<div class="col-sm"
			style="height: 350px; width: 250px; margin-top: 10px; margin-left: 50px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/doublebed11.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; padding: 10px; border-right: 5px solid grey; border-left: 5px solid grey;"></a>
		</div>
		<div class="col-sm"
			style="height: 350px; width: 350px; margin-top: 10px; margin-left: 10px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/doublebed8.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; padding: 10px; border-right: 5px solid grey; border-left: 5px solid grey;"></a>
		</div>
		<div class="col-sm" data-toggle="tooltip" data-placement="top"
			title="King size bed for real Kings"
			style="height: 350px; width: 350px; margin-top: 10px; margin-left: 10px; background-color: white;">
			<a href="<c:url value="/product/productList/all" />"> <img
				src="./resources/images/doublebed10.jpg" alt="Second slide"
				style="height: 320px; width: 340px; border-radius: 25px; padding: 10px; border-right: 5px solid grey; border-left: 5px solid grey;"></a>
		</div>
	</div>
</body>

</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>