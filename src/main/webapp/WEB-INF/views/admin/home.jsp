<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page = "header.jsp"></jsp:include>
<div id="page-wrapper">

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				Hello:
				<c:out value="${loggedInAdmin}"></c:out>
			</div>
		</div>

	</div>
	<!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->
<jsp:include page = "footer.jsp"></jsp:include>