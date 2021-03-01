<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">

<jsp:include page="../header.jsp"></jsp:include>
<form:form id="loginForm"
	action="${pageContext.request.contextPath}/admin/product/create"
	method="POST" modelAttribute="product">
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card-header">
						<div class="row">
							<div class="col-6 text-danger">
								<strong>SỬA SẢN PHẨM</strong>
							</div>
							<div class="col-6 text-right">
								<a href="${pageContext.request.contextPath}/admin/product/"
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
									value="${product.id}" path="id" />
								<div class="form-group">
									<form:label class="text-info" path="image">Hình Ảnh</form:label>
									<form:textarea path="image" value="${product.image}"/>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="title">Tên Sản Phẩm</form:label>
									<form:input class="form-control" id="title" name="title"
										value="${product.title}" path="title" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="description">Chi Tiết</form:label>
									<form:textarea  class="form-control" rows="5" path="description"/>
								</div>

								<div class="form-group">
									<form:label class="text-info" path="price">Giá Tiền</form:label>
									<form:input class="form-control" id="price" name="price"
										value="${product.price}" path="price" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="price_net">Giá Khuyến Mãi</form:label>
									<form:input class="form-control" id="price_net"
										name="price_net" value="${product.price_net}" path="price_net" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="available">Số Lượng</form:label>
									<form:input class="form-control" id="available"
										name="available" value="${product.available}" path="available" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="discount">Giảm Giá(%)</form:label>
									<form:input class="form-control" id="discount" name="discount"
										value="${product.discount}" path="discount" />
								</div>
								<div class="form-group">
									<form:label class="text-info" path="id_category">Loại Sản Phẩm</form:label>
									<form:select class="form-control" path="id_category">
										<c:forEach var="listcate" items="${listCategory}">
											<c:if test="${listcate.id==product.id_category}">
												<form:option value="${listcate.id}">${listcate.title}</form:option>
											</c:if>
										</c:forEach>
										<c:forEach var="listcate" items="${listCategory}">
											<c:if test="${listcate.id!=product.id_category}">
												<form:option value="${listcate.id}">${listcate.title}</form:option>
											</c:if>
										</c:forEach>
									</form:select>
								</div>

							</div>
							<div class="col-md-3">
								<div class="form-group">
									<form:label class="text-info" path="cover">Là SP Nổi Bật</form:label>
									<form:select class="form-control" path="cover">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
									</form:select>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="hot_deal">Là SP Khuyến Mãi</form:label>
									<form:select class="form-control" path="hot_deal">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
									</form:select>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="hot_new">Là SP Mới</form:label>
									<form:select class="form-control" path="hot_new">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
									</form:select>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="trend">Là SP Thịnh Hành</form:label>
									<form:select class="form-control" path="trend">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
									</form:select>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="hot_best">Là SP Bán Chạy</form:label>
									<form:select class="form-control" path="hot_best">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
									</form:select>
								</div>
								<div class="form-group">
									<form:label class="text-info" path="latest_review">Là SP Đã Xem Qua</form:label>
									<form:select class="form-control" path="latest_review">
										<form:option value="true">Kích Hoạt</form:option>
										<form:option value="false">Chưa Kích Hoạt</form:option>
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