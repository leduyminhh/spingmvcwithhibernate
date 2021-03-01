<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">

<jsp:include page="../header.jsp"></jsp:include>
<form:form id="loginForm" action="${pageContext.request.contextPath}/admin/category/create" method="POST"
	modelAttribute="cate">
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card-header">
						<div class="row">
							<div class="col-6 text-danger">
								<strong>SỬA LOẠI SẢN PHẨM</strong>
							</div>
							<div class="col-6 text-right">
								<a href="${pageContext.request.contextPath}/admin/category/" class="btn btn-sm btn-danger"><i
									class="fas fa-sign-in-alt"></i> Quay Lại</a>
								<button type="submit" class="btn btn-info btn-sm">Sửa[Lưu]</button>
							</div>
							
						</div>
					</div>
					<br>
					<div class="card-body">
						<div class="row">
							<div class="col-md-10">
							<form:input type="hidden" class="form-control" id="id" name="id"
										value="${cate.id}" path="id" />
								<div class="form-group">
									<form:label class="text-info" path="title">Tên Chủ Đề</form:label>
									<form:input class="form-control" id="title" name="title"
										value="${cate.title}" path="title" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="description">Chi Tiết</form:label>
									<form:textarea  class="form-control" rows="5" path="description"/>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="review">Đánh Giá</form:label>
									<form:input class="form-control" path="review" value="${cate.review}"/>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="parent">Lớp Cha</form:label>
									<form:select class="form-control" path="parent">
										<c:if test="${cate.parent==0}">
											<form:option value="0">Là Lớp Cha</form:option>
										</c:if>
										<c:forEach var="listcate" items="${listcate}">
											<c:if test="${cate.parent==listcate.id}">
												<form:option value="${cate.parent}">${listcate.title}</form:option>
											</c:if>
											<c:if test="${cate.id!=listcate.id}">
												<form:option value="${listcate.id}">
													<c:out value="${listcate.title}" />
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