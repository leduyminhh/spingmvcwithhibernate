<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Giỏ Hàng</title>
<fmt:setLocale value="vi_VN" />
</head>
<body>
	<jsp:include page="../share/header.jsp" />
	<center>
		<c:if test="${empty cartForm or empty cartForm.cartLines}">
			<br>
			<br>
			<h2>Chưa có sản phẩm nào</h2>
			<br>
		</c:if>

		<c:if test="${not empty cartForm and not empty cartForm.cartLines   }">

			<h2>Giỏ Hàng</h2>
			<br>
			<table width="75%" border="1">
				<tr bgcolor="#CCCCCC">
					<td>Hình</td>
					<td>Code</td>
					<td>Tên</td>
					<td>Giá</td>
					<td>Số Lượng</td>
					<td>Tổng</td>
					<td>Xóa</td>
				</tr>
				<form:form method="POST" modelAttribute="cartForm"
					action="${pageContext.request.contextPath}/shoppingCart">
			<c:set var="salary" scope="session"
							value="${0}"></c:set>
					<c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
						varStatus="varStatus">
						
						<tr>
							<td><img class="product-image" width="50" height=70
								src="${pageContext.request.contextPath}/resources/img/product/${cartLineInfo.productInfo.image}" />
							</td>
							<td>${cartLineInfo.productInfo.code}<form:hidden
									path="cartLines[${varStatus.index}].productInfo.code" />

							</td>
							<td>${cartLineInfo.productInfo.name}</td>
							<td><span class="price"> <fmt:formatNumber
										value="${cartLineInfo.productInfo.price}" type="currency" />

							</span></td>
							<td><form:input  type='number' name="quantity"
									path="cartLines[${varStatus.index}].quantity" /> <input
								class="button-update-sc" type="submit" value="Update" /></td>
								
							<td><span class="subtotal"> <fmt:formatNumber
										value="${cartLineInfo.amount}" type="currency" />
							
							</span></td>
							
							<td><a
								href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}">
									Delete </a></td>
						</tr>
						<c:set var="salary" scope="session"
							value="${salary+cartLineInfo.amount}"></c:set>
					</c:forEach>
				</form:form>
			</table>
			<div style="clear: both"></div>
	</center>

	
	<br>

	<div class="container">
		<div class="col-lg-5 offset-lg-2">
			<div class="container-fluid">
				<div class="cart__total__procced">
					<h6>Tổng Tiền Giỏ Hàng: <fmt:formatNumber value="${salary}"
									type="currency" /></h6>
					<a href="${pageContext.request.contextPath}/shoppingCart/order" class="primary-btn">Thanh Toán</a>
				</div>
			</div>
		</div>
	</div>

	</c:if>
	<jsp:include page="../share/footer.jsp" />

</body>
</html>