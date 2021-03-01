<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri= "http://java.sun.com/jsp/jstl/fmt" %>
<section class="trend spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Xu Hướng</h4>
                    </div>
                    <c:forEach var="producttrend" items="${listProductTrend}">
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="resources/img/product/<c:out value="${producttrend.getImage()}"/>" alt="" width=140px; height=100px;>
                        </div>
                        <div class="trend__item__text">
                            <h6><a href = "<c:url value="/product?id=${producttrend.id}"></c:url>"><c:out value="${producttrend.getTitle()}"/></a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><fmt:formatNumber value="${producttrend.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
			<div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Bán Chạy</h4>
                    </div>
                    <c:forEach var="producttopsell" items="${listProductHotBest}">
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="resources/img/product/<c:out value="${producttopsell.getImage()}"/>" alt="" width=140px; height=100px;>
                        </div>
                        <div class="trend__item__text">
                            <h6><a href="<c:url value="/product?id=${producttopsell.id}"></c:url>"><c:out value="${producttopsell.getTitle()}"/></a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><fmt:formatNumber value="${producttopsell.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
			
			<div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Sản Phẩm Đã Xem Qua</h4>
                    </div>
                    <c:forEach var="productlatestreview" items="${listProductLatest_Review}">
                    <div class="trend__item">
                        <div class="trend__item__pic">
                            <img src="resources/img/product/<c:out value="${productlatestreview.getImage()}"/>" alt="" width=140px; height=100px;>
                        </div>
                        <div class="trend__item__text">
                            <h6><a href="<c:url value="/product?id=${productlatestreview.id}"></c:url>"><c:out value="${productlatestreview.getTitle()}"/></a></h6>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product__price"><fmt:formatNumber value="${productlatestreview.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
			
        </div>
    </div>
</section>
	