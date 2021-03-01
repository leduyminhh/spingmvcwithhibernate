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
								<strong>CHI TIẾT ĐƠN HÀNG</strong>
							</h4>
						</div>
						<div class="col-6 text-right">
							<a href="${pageContext.request.contextPath}/admin/order/"
								class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
								Quay Lại</a>
						</div>
					</div>
				</div>
				<c:if test="${ordersDetail!=null}">
					<div class="card-body">
						<br>
						<table class="table table-bordered table-hover table-striped">
							<thead>
								<tr class="bg-primary">
									<th scope="col">Mã Đơn Hàng</th>
									<th scope="col">Tên Sản Phẩm</th>
									<th scope="col">Số Lượng</th>
									<th scope="col">Giá Tiền</th>
									<th scope="col">Ngày Tạo</th>
									<th scope="col">Tổng Tiền</th>
								</tr>
							</thead>
							<c:forEach var="ordersDetail" items="${ordersDetail}">
								<tbody>
									<tr>
										<th><c:out value="${ordersDetail.id}"></c:out></th>
										<th><c:forEach var="listProduct" items="${listProduct}">
												<c:if test="${ordersDetail.product_id==listProduct.id}">
													<c:out value="${listProduct.title}"></c:out>
												</c:if>
											</c:forEach></th>
										<th><c:out value="${ordersDetail.quantity}"></c:out></th>
										<th><c:out value="${ordersDetail.price}"></c:out></th>
										<th><c:out value="${ordersDetail.create_at}"></c:out></th>
										<th><c:out value="${ordersDetail.amount}"></c:out></th>
									</tr>
								</tbody>
							</c:forEach>
						</table>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>
<!-- /#page-wrapper -->
<jsp:include page="../footer.jsp"></jsp:include>