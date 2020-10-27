<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<jsp:useBean id="now" class="java.util.Date" />



<div class="container" style="padding: 10%; text-transform: uppercase">
<h2 style="margin-left:45%;color:grey"><b>Invoice</b></h2>
	<div class="row">
		<div class="span">
		<h5><b><fmt:formatDate type="date" value="${now}" /></b></h5>
		</div>
		</div>
		<form:form commandName="order" class="form-horizontal">
			<div class="page-header row" style="margin-top:30px">
			<div class="span">
				<h1>${order.cart.customer.customerName}</h1>
			</div>
			</div>
			<div class="span">


				<div class="row">
					<div class="span">
						<address>
							<strong>Shipping Address</strong><br />
							${order.cart.customer.shippingAddress.streetName} <br />
							${order.cart.customer.shippingAddress.city},
							${order.cart.customer.shippingAddress.state} <br />
							${order.cart.customer.shippingAddress.country},
							${order.cart.customer.shippingAddress.zipCode}
						</address>
					</div>
					
				</div>

				<div class="row">
					<div class="span">
						<address>
							<strong>Billing Address</strong><br />
							${order.cart.customer.billingAddress.streetName} <br />
							${order.cart.customer.billingAddress.city},
							${order.cart.customer.billingAddress.state} <br />
							${order.cart.customer.billingAddress.country},
							${order.cart.customer.billingAddress.zipCode}
						</address>
					</div>
				</div>
				
					<table class="table">
						<thead>
							<tr>
								<td scope="col"><b>Product</b></td>
								<td scope="col"><b>Quantity</b></td>
								<td scope="col" ><b>Price</b></td>
								<td scope="col" ><b>Total</b></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cartItem" items="${order.cart.cartItems}">
								<tr>
									<td class="col-md-9"><em>${cartItem.product.productName}</em></td>
									<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
									<td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
									<td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
								</tr>
							</c:forEach>

							<tr>
							
								<td colspan="2">
									<h4>
										<strong>Grand Total:</strong>
									</h4>
								</td>
								<td colspan="2" class="text-center text-danger">
									<h4>
										<strong>$ ${order.cart.grandTotal}</strong>
									</h4>
								</td>
							</tr>

						</tbody>
					</table>
				
				<input type="hidden" name="_flowExecutionKey" /> 

				<button class="btn btn-secondary"
					name="_eventId_backToCollectShippingDetail">Back</button>

				<input type="submit" value="Submit Order" class="btn btn-primary"
					name="_eventId_orderConfirmed" />

				<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
			</div>
			
		</form:form>
	</div>



<%@ include file="/WEB-INF/views/template/footer.jsp"%>