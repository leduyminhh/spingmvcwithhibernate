
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page = "../share/header.jsp"></jsp:include>
<body>
	<div class="container">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
					<p style="color: red">${message}</p>
					<form:form id="loginForm" action="login" method="POST"
						modelAttribute="loginBean">
						<div class="form-group">
						<form:label class="text-info" path="username">Username</form:label>
						<form:input class="form-control" id="username" name="username" path="username" />
						</div>
						<div class="form-group">
						<form:label class="text-info" path="username">Password</form:label>
						<form:password class="form-control" id="password" name="password" path="password" />
						</div>
						<div class="form-group">
						<input type="submit" value="Submit" />
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page = "../share/footer.jsp"></jsp:include>
</html>