<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">

<jsp:include page="../header.jsp"></jsp:include>
<form:form id="loginForm"
	action="${pageContext.request.contextPath}/admin/order/create"
	method="POST" modelAttribute="order">
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card-header">
						<div class="row">
							<div class="col-6 text-danger">
								<strong>SỬA ĐƠN HÀNG</strong>
							</div>
							<div class="col-6 text-right">
								<a href="${pageContext.request.contextPath}/admin/order/"
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
									value="${order.id}" path="id" />
								<div class="form-group">
									<form:label class="text-info" path="customername">Tên Tài Khoản</form:label>
									<form:select class="form-control" path="customername">
										<form:option value="${order.customername}">
											<c:out value="${order.customername}" />
										</form:option>

										<c:forEach var="users" items="${users}">
											<c:if test="${order.customername!=users.username}">
												<form:option value="${users.username}">
													<c:out value="${users.username}" />
												</form:option>
											</c:if>
										</c:forEach>

									</form:select>
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