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
								<strong>DANH SÁCH TÀI KHOẢN</strong>
							</h4>
						</div>
						<div class="col-6 text-right">
							<a href="${pageContext.request.contextPath}/admin/user/create"
								class="btn btn-sm btn-success"><i class="fas fa-plus"></i>
								Thêm mới</a> <a
								href="${pageContext.request.contextPath}/admin/user/listtrash"
								class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>
								Thùng rác</a>
						</div>
					</div>
				</div>
				<c:if test="${listUser!=null}">
				<div class="card-body">
					<br>
					<table class="table table-bordered table-hover table-striped">
						<thead>
							<tr class="bg-primary">
								<th scope="col">Tên Tài Khoản</th>
								<th scope="col">Quyền Truy Cập</th>
								<th scope="col">Trạng Thái</th>
								<th scope="col">Chức Năng</th>
							</tr>
						</thead>
						<c:forEach var="listUser" items="${listUser}">
							<tbody>
								<tr>
									<th><c:out value="${listUser.username}"></c:out></th>
									<th><c:out value="${listUser.role}"></c:out></th>
									<th><c:if test="${listUser.status==1}">
											<a class="btn btn-sm btn-info"
												href="${pageContext.request.contextPath}/admin/user/status?id=${listUser.id}"></i>Kích
												Hoạt</a>
										</c:if> <c:if test="${listUser.status==2}">
											<a class="badge badge-success"
												href="${pageContext.request.contextPath}/admin/user/status?id=${listUser.id}">Chưa
												Kích Hoạt</a>
										</c:if></th>
									<th><a
										href="${pageContext.request.contextPath}/admin/user/edit?id=${listUser.id}"
										class="btn btn-sm btn-success">Sửa<i class="far fa-edit"></i></a>
										<a
										href="${pageContext.request.contextPath}/admin/user/deltrash?id=${listUser.id}"
										class="btn btn-sm btn-danger">Xóa<i
											class="fas fa-trash-alt"></i></a>
										<a
										href="${pageContext.request.contextPath}/admin/user/userdetail?id=${listUser.id}"
										class="btn btn-sm btn-info">Chi Tiết<i class="far fa-edit"></i></a></th>
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