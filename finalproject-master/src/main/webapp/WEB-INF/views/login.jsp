<%@ include file="/WEB-INF/views/template/header.jsp"%>


<div class="container" style="padding: 10%">
	<div id="login-box">
		<h2>Login with Username and Password</h2>

		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>


		<form name="loginForm"
			action="<c:url value="/j_spring_security_check" />" method="post">

			<c:if test="${not empty error}">
				<div class="error" style="color: #ff0000;">${error}</div>
			</c:if>

			<div class="form-group">
				<label for="username">User: </label> <input type="text"
					id="username" name="username" class="form-control"
					placeholder="username is case sensitive" />
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" class="form-control" />
			</div>
			<input type="submit" value="Submit" class="btn btn-primary">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" /> <a href="<c:url value = "/" />"
				class="btn btn-danger">Cancel</a>
		</form>
	</div>
</div>


<%@ include file="/WEB-INF/views/template/footer.jsp"%>
