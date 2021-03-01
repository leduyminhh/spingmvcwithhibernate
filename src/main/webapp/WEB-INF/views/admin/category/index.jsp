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
								<strong>DANH SÁCH LOẠI SẢN PHẨM</strong>
							</h4>
						</div>
						<div class="col-6 text-right">
							<a href="${pageContext.request.contextPath}/admin/category/create"
								class="btn btn-sm btn-success"><i class="fas fa-plus"></i>
								Thêm mới</a> <a
								href="${pageContext.request.contextPath}/admin/category/listtrash"
								class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
								Thùng rác</a>
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
								<th scope="col">Trạng Thái</th>
								<th scope="col">Chức Năng</th>
							</tr>
						</thead>
						<c:forEach var="listcate" items="${listCate}">
							<tbody>
								<tr>
									<th><c:out value="${listcate.title}"></c:out></th>
									<th>${listcate.description}</th>
									<th><c:if test="${listcate.status==1}">
											<a class="btn btn-sm btn-info"
												href="${pageContext.request.contextPath}/admin/category/status?id=${listcate.id}"></i>Kích
												Hoạt</a>
										</c:if> <c:if test="${listcate.status==2}">
											<a class="badge badge-success"
												href="${pageContext.request.contextPath}/admin/category/status?id=${listcate.id}">Chưa
												Kích Hoạt</a>
										</c:if></th>
									<th> <a
										href="${pageContext.request.contextPath}/admin/category/edit?id=${listcate.id}"
										class="btn btn-sm btn-info">Sửa<i class="far fa-edit"></i></a>
										<a
										href="${pageContext.request.contextPath}/admin/category/deltrash?id=${listcate.id}"
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