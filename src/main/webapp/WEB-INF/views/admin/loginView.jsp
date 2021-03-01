
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" type="text/css">
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>" type="text/css">
<body>

<br>
	<div class="container">
		<div id="login-row"
			class="row justify-content-center align-items-center">
			<div id="login-column" class="col-md-6">
				<div id="login-box" class="col-md-12">
				<h3>Đăng Nhập Hệ Thống</h3>
				<br>
					<p style="color: red">${message}</p>
					<form:form id="loginForm" action="${pageContext.request.contextPath}/admin/login" method="POST"
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
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</html>