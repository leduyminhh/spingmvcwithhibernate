<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="../header.jsp"></jsp:include>
<div id="page-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="card-header">
					<div class="row">
						<div class="col-6 text-danger">
							<h4>
								<strong>CHI TIẾT TÀI KHOẢN</strong>
							</h4>
						</div>
						<div class="col-6 text-right">
							<a
								href="${pageContext.request.contextPath}/admin/user/"
								class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
								Quay Lại</a>
						</div>
					</div>
				</div>
				<c:if test="${customer!=null}">
				<div class="card-body">
					<br>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-primary">
								<th scope="col">Họ Và Tên</th>
								<th scope="col">Email</th>
								<th scope="col">Địa Chỉ</th>
								<th scope="col">Số Điện Thoại</th>
							</tr>
						</thead>
							<tbody>
								<tr>
									<th><c:out value="${customer.name}"></c:out></th>
									<th><c:out value="${customer.email}"></c:out></th>
									<th><c:out value="${customer.address}"></c:out></th>
									<th><c:out value="${customer.phone}"></c:out></th>
								</tr>
							</tbody>
					</table>
				</div>
				</c:if>
			</div>
		</div>
	</div>
</div>
<!-- /#page-wrapper -->
<jsp:include page="../footer.jsp"></jsp:include>