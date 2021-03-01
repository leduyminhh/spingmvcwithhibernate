<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri= "http://java.sun.com/jsp/jstl/fmt" %>
	 <!-- Header Section Begin -->
	<jsp:include page = "../share/header.jsp"></jsp:include>
    <!-- Header Section End -->
    <section class="product spad">
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="home"><i class="fa fa-home"></i> Home</a>
                        <a href="#">Tất Cả Sản Phẩm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row property__gallery">
       	 <c:forEach var="listproductparent" items="${listProduct}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${listproductparent.getImage()}"/>">
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${listproductparent.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="<c:url value="/product?id=${listproductparent.id}"></c:url>"><c:out value="${listproductparent.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${listproductparent.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
            </c:forEach>
            </div>
            </div>
	</section>
    <!-- Instagram Begin -->
	<jsp:include page = "../home/instagram.jsp"></jsp:include>
	<!-- Instagram End -->

	<!-- Footer Section Begin -->
	<jsp:include page = "../share/footer.jsp"></jsp:include>
	<!-- Footer Section Begin -->