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
							<h4><strong>DANH SÁCH TẠM XÓA ĐƠN HÀNG</strong></h4>
						</div>
						<div class="col-6 text-right">
							<a href="${pageContext.request.contextPath}/admin/order/" class="btn btn-sm btn-danger"><i
								class="fas fa-plus"></i>Quay lại</a> 
						</div>
					</div>
				</div>

				<div class="card-body">
					<br>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-primary">
								<th scope="col">Mã Đơn Hàng</th>
								<th scope="col">Tài Khoản</th>
								<th scope="col">Chức Năng</th>
							</tr>
						</thead>
						<c:forEach var="listOrder" items="${listOrder}">
							<tbody>
								<tr>
									<th><c:out value="${listOrder.id}"></c:out></th>
									<th><c:out value="${listOrder.customername}"></c:out></th>
									<th><a
										href="${pageContext.request.contextPath}/admin/order/restore?id=${listOrder.id}"
										class="btn btn-sm btn-success">Phục Hồi<i class="far fa-edit"></i></a>
										<a
										href="${pageContext.request.contextPath}/admin/order/delete?id=${listOrder.id}"
										class="btn btn-sm btn-danger">Xóa<i
											class="fas fa-trash-alt"></i></a>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /#page-wrapper -->
<jsp:include page="../footer.jsp"></jsp:include>