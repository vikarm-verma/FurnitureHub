

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>


<head>
<!--used this script to not to leave any input box blank  -->
<script type="text/javascript">
    
$(document).ready(function() {
	$("billingStreet").keypress(function(){

        required : true   ,
        $("billingStreet").focus();
  	
});
$("billingApartmentNumber").keypress(function(){

        required : true                 
  	
});
$("billingCity").keypress(function(){

    required : true                 
	
});
$("billingState").keypress(function(){

    required : true                 
	
});
$("billingCountry").keypress(function(){

    required : true                 
	
});
$("billingZip").keypress(function(){

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

			<h3>Basic Info:</h3>

			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="cart.customer.customerName" id="name"
					class="form-Control" readonly="true" />
			</div>

			<div class="form-group">
				<label for="email">Email</label>
				<form:input path="cart.customer.customerEmail" id="email"
					class="form-Control" readonly="true" />
			</div>

			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="cart.customer.customerPhone" id="phone"
					class="form-Control" readonly="true" />
			</div>

			<br />

			<h3>Billing Address:</h3>

			<div class="form-group">
				<label for="billingStreet">Street Name</label>
				<form:errors path="cart.customer.billingAddress.streetName"
					cssStyle="color: #ff0000" />
				<form:input path="cart.customer.billingAddress.streetName"
					id="billingStreet" class="form-Control" required="required" />

			</div>

			<div class="form-group">
				<label for="billingApartmentNumber">Apartment Number</label>
				<form:errors path="cart.customer.billingAddress.apartmentNumber"
					cssStyle="color: #ff0000" />
				<form:input path="cart.customer.billingAddress.apartmentNumber"
					id="billingApartmentNumber" class="form-Control"
					required="required" />
			</div>

			<div class="form-group">
				<label for="billingCity">City</label>
				<form:input path="cart.customer.billingAddress.city"
					id="billingCity" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="billingState">State</label>
				<form:input path="cart.customer.billingAddress.state"
					id="billingState" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="billingCountry">Country</label>
				<form:input path="cart.customer.billingAddress.country"
					id="billingCountry" class="form-Control" required="required" />
			</div>

			<div class="form-group">
				<label for="billingZip">ZipCode</label>
				<form:input path="cart.customer.billingAddress.zipCode"
					id="billingZip" class="form-Control" required="required"
					placeholder="only 6 digits can be entered" minlength="6"
					maxlength="6"
					onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
			</div>

			<input type="hidden" name="_flowExecutionKey" />


			<input type="submit" value="Next" class="btn btn-primary"
				name="_eventId_customerInfoCollected" />

			<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>

		</form:form>
	</div>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>