<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">

<jsp:include page="../header.jsp"></jsp:include>
<form:form id="loginForm"
	action="${pageContext.request.contextPath}/admin/user/create"
	method="POST" modelAttribute="user">
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card-header">
						<div class="row">
							<div class="col-6 text-danger">
								<strong>SỬA TÀI KHOẢN</strong>
							</div>
							<div class="col-6 text-right">
								<a href="${pageContext.request.contextPath}/admin/user/"
									class="btn btn-sm btn-danger"><i class="fas fa-sign-in-alt"></i>
									Quay Lại</a>
								<button type="submit" class="btn btn-info btn-sm">Sửa[Lưu]</button>
							</div>

						</div>
					</div>
					<br>
					<div class="card-body">
						<div class="row">
							<div class="col-md-9">
								<form:input type="hidden" class="form-control" id="id" name="id"
									value="${user.id}" path="id" />
								<div class="form-group">
									<form:label class="text-info" path="username">Tên Tài Khoản</form:label>
									<form:input class="form-control" id="username" name="username"
										value="${user.username}" path="username" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="password">Mật Khẩu</form:label>
									<form:input class="form-control" id="password" name="password"
										value="${user.password}" path="password" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="role">Quyền Truy Cập</form:label>
									<form:input class="form-control" id="role" name="role"
										value="${user.role}" path="role" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="status">Trạng Thái</form:label>
									<form:select class="form-control" path="status">
										<form:option value="1">Kích Hoạt</form:option>
										<form:option value="2">Chưa Kích Hoạt</form:option>
										<form:option value="0">Thùng Rác</form:option>
									</form:select>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>


<jsp:include page="../footer.jsp"></jsp:include>