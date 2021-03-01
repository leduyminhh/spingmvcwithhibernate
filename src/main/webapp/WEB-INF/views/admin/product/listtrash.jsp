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
							<h4><strong>DANH SÁCH TẠM XÓA LOẠI SẢN PHẨM</strong></h4>
						</div>
						<div class="col-6 text-right">
							<a href="${pageContext.request.contextPath}/admin/product/" class="btn btn-sm btn-danger"><i
								class="fas fa-plus"></i>Quay lại</a> 
						</div>
					</div>
				</div>

				<div class="card-body">
					<br>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-primary">
								<th scope="col">Hình Ảnh</th>
								<th scope="col">Tên Sản Phẩm</th>
								<th scope="col">Giá</th>
								<th scope="col">Số Lượng</th>
								<th scope="col">Đã Bán</th>
								<th scope="col">Loại Sản Phẩm</th>
								<th scope="col">Chức Năng</th>
							</tr>
						</thead>
						<c:forEach var="listProduct" items="${listProduct}">
							<tbody>
								<tr>
									<th>${listProduct.image}</th>
									<th><c:out value="${listProduct.title}"></c:out></th>
									<th><c:out value="${listProduct.price}"></c:out></th>
									<th><c:out value="${listProduct.available}"></c:out></th>
									<th><c:out value="${listProduct.sold}"></c:out></th>
									<th><c:out value="${listProduct.id_category}"></c:out></th>
									<th><c:if test="${listProduct.status==1}">
											<a class="btn btn-sm btn-info"
												href="${pageContext.request.contextPath}/admin/product/status?id=${listProduct.id}"></i>Kích
												Hoạt</a>
										</c:if> <c:if test="${listProduct.status==2}">
											<a class="badge badge-success"
												href="${pageContext.request.contextPath}/admin/product/status?id=${listProduct.id}">Chưa
												Kích Hoạt</a>
										</c:if> <a
										href="${pageContext.request.contextPath}/admin/product/restore?id=${listProduct.id}"
										class="btn btn-sm btn-info">Phục Hồi<i class="far fa-edit"></i></a>
										<a
										href="${pageContext.request.contextPath}/admin/product/delete?id=${listProduct.id}"
										class="btn btn-sm btn-danger">Xóa<i
											class="fas fa-trash-alt"></i></a></th>
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