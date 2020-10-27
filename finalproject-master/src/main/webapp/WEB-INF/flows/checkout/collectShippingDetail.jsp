

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<head>

<script type="text/javascript">
    
$(document).ready(function() {
$("shippingStreet").keypress(function(){

        required : true                 
  	
});
$("shippingApartmentNumber").keypress(function(){

        required : true                 
  	
});
$("shippingCity").keypress(function(){

    required : true                 
	
});
$("shippingState").keypress(function(){

    required : true                 
	
});
$("shippingCountry").keypress(function(){

    required : true                 
	
});
$("shippingZip").keypress(function(){

    required : true                 
	
});
});

</script>
</head>

<div class="container-wrapper" style="padding: 10%">
	<div class="container">
		<div class="page-header">
			<h1>Customer</h1>
			<p class="lead">Customer Details:</p>
		</div>

		<form:form commandName="order" class="form-horizontal" id="formID">
			<h3>Shipping Address:</h3>
			<div class="form-group">
				<label for="shippingStreet">Street Name</label>
				<form:input path="cart.customer.shippingAddress.streetName"
					id="shippingStreet" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="shippingApartmentNumber">Apartment Number</label>
				<form:input path="cart.customer.shippingAddress.apartmentNumber"
					id="shippingApartmentNumber" class="form-Control"
					required="required" />
			</div>

			<div class="form-group">
				<label for="shippingCity">City</label>
				<form:input path="cart.customer.shippingAddress.city"
					id="shippingCity" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="shippingState">State</label>
				<form:input path="cart.customer.shippingAddress.state"
					id="shippingState" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="shippingCountry">Country</label>
				<form:input path="cart.customer.shippingAddress.country"
					id="shippingCountry" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="shippingZip">Zipcode</label>
				<!-- used 6 digits for zip code -->
				<form:input path="cart.customer.shippingAddress.zipCode"
					id="shippingZip" class="form-Control" required="required" 
					placeholder ="only 6 digits can be entered"
					minlength="6" maxlength="6" 
					onkeypress="return event.charCode >= 48 && event.charCode <= 57"/>
			</div>

			<input type="hidden" name="_flowExecutionKey" />

			<br />
			<br />

			<button class="btn btn-secondary"
				name="_eventId_backToCollectCustomerInfo">Back</button>

			<input type="submit" value="Next" class="btn btn-primary"
				name="_eventId_shippingDetailCollected" />

			<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

		</form:form>
	</div>
</div>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>