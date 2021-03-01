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
							<a href="${pageContext.request.contextPath}/admin/category/" class="btn btn-sm btn-danger"><i
								class="fas fa-plus"></i>Quay lại</a> 
						</div>
					</div>
				</div>

				<div class="card-body">
					<br>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-primary">
								<th scope="col">Tên Loại</th>
								<th scope="col">Chi Tiết</th>
								<th scope="col">Chức Năng</th>
							</tr>
						</thead>
						<c:forEach var="listtrash" items="${listtrash}">
							<tbody>
								<tr>
									<th><c:out value="${listtrash.title}"></c:out></th>
									<th>${listtrash.description}</th>
									<th><a href="${pageContext.request.contextPath}/admin/category/restore?id=${listtrash.id}"
										class="btn btn-sm btn-info">Phục Hồi<i class="far fa-edit"></i></a> 
										<a href="${pageContext.request.contextPath}/admin/category/delete?id=${listtrash.id}"
										class="btn btn-sm btn-danger">Xóa<i class="fas fa-trash-alt"></i></a>
									</th>
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