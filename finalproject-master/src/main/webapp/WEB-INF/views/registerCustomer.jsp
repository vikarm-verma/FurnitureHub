<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>



<div class="container-wrapper"
	style="width: 50%; float: left; padding: 10%">
	<div class="page-header">
		<h1>Register Customer</h1>

		<p class="lead">Please fill in your information below:</p>
	</div>

	<!-- for registering user , here billingAddress and shippingAddress are also being used  -->
	<form:form action="${pageContext.request.contextPath}/register"
		method="post" commandName="customer">

		<h3>Basic Info:</h3>

		<div class="form-group">
			<label for="name">Name</label>
			<form:errors path="customerName" cssStyle="color: #ff0000" />
			<form:input path="customerName" id="name" class="form-Control"
				placeholder="only alphabets with one space between words" />
		</div>

		<div class="form-group">
			<label for="email">Email</label> <span style="color: #ff0000">${emailMsg}</span>
			<form:errors path="customerEmail" cssStyle="color: #ff0000" />
			<form:input path="customerEmail" id="email" class="form-Control"
				type="email" />
		</div>

		<div class="form-group">
			<label for="phone">Phone</label>
			<form:errors path="customerPhone" cssStyle="color: #ff0000" />
			<form:input path="customerPhone" id="phone" class="form-Control"
				minlength="10" maxlength="10"
				onkeypress="return event.charCode >= 48 && event.charCode <= 57"
				placeholder="10 digits starting with 7/8/9" />
		</div>

		<div class="form-group">
			<label for="username">Username</label> <span style="color: #ff0000">${usernameMsg}</span>
			<form:errors path="username" cssStyle="color: #ff0000" />
			<form:input path="username" id="username" class="form-Control"
				placeholder="user name is case sensitive" />
		</div>

		<div class="form-group">
			<label for="password">Password</label>
			<form:errors path="password" cssStyle="color: #ff0000" />
			<form:password path="password" id="password" class="form-Control" />
		</div>


		<br />

		<h3>Billing Address:</h3>

		<div class="form-group">
			<label for="billingStreet">Street Name</label>
			<form:errors path="billingAddress.streetName"
				cssStyle="color: #ff0000" />
			<form:input path="billingAddress.streetName" id="billingStreet"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="billingApartmentNumber">Apartment Number</label>
			<form:errors path="billingAddress.apartmentNumber"
				cssStyle="color: #ff0000" />
			<form:input path="billingAddress.apartmentNumber"
				id="billingApartmentNumber" class="form-Control" />
		</div>

		<div class="form-group">
			<label for="billingCity">City</label>
			<form:errors path="billingAddress.city" cssStyle="color: #ff0000" />
			<form:input path="billingAddress.city" id="billingCity"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="billingState">State</label>
			<form:errors path="billingAddress.state" cssStyle="color: #ff0000" />
			<form:input path="billingAddress.state" id="billingState"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="billingCountry">Country</label>
			<form:errors path="billingAddress.country" cssStyle="color: #ff0000" />
			<form:input path="billingAddress.country" id="billingCountry"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="billingZip">Zipcode</label>
			<form:errors path="billingAddress.zipCode" cssStyle="color: #ff0000" />
			<form:input path="billingAddress.zipCode" id="billingZip"
				class="form-Control" minlength="6" maxlength="6"
				onkeypress="return event.charCode >= 48 && event.charCode <= 57"
				placeholder="only 6 digits can be entered" />

		</div>

		<br />

		<h3>Shipping Address:</h3>

		<div class="form-group">
			<label for="shippingStreet">Street Name</label>
			<form:errors path="shippingAddress.streetName"
				cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.streetName" id="shippingStreet"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="shippingApartmentNumber">Apartment Number</label>
			<form:errors path="shippingAddress.apartmentNumber"
				cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.apartmentNumber"
				id="shippingApartmentNumber" class="form-Control" />

		</div>

		<div class="form-group">
			<label for="shippingCity">City</label>
			<form:errors path="shippingAddress.city" cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.city" id="shippingCity"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="shippingState">State</label>
			<form:errors path="shippingAddress.country" cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.state" id="shippingState"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="shippingCountry">Country</label>
			<form:errors path="shippingAddress.country" cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.country" id="shippingCountry"
				class="form-Control" />

		</div>

		<div class="form-group">
			<label for="shippingZip">Zipcode</label>
			<form:errors path="billingAddress.zipCode" cssStyle="color: #ff0000" />
			<form:input path="shippingAddress.zipCode" id="shippingZip"
				class="form-Control" minlength="6" maxlength="6"
				onkeypress="return event.charCode >= 48 && event.charCode <= 57"
				placeholder="only 6 digits can be entered" />

		</div>
		<input type="submit" value="submit" class="btn btn-primary">
		<a href="<c:url value="/" />" class="btn btn-danger">Cancel</a>

	</form:form>
</div>

<body><%@ include file="/WEB-INF/views/template/footer.jsp"%></body>

