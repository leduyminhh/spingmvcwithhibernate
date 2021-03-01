<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri= "http://java.sun.com/jsp/jstl/fmt" %>
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Ưu Đãi</h4>
                </div>
            </div>
        </div>
        
        <div class="row property__gallery">
       	 <c:forEach var="producthotdeal" items="${listProductHotDeal}">
       	 
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotdeal.getImage()}"/>">
                        <div class="label new"> </div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotdeal.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="${pageContext.request.contextPath}/buyProduct?code=${producthotdeal.id}"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="<c:url value="/product?id=${producthotdeal.id}"></c:url>"><c:out value="${producthotdeal.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__details__price"><fmt:formatNumber value="${producthotdeal.price_net}" type="number" maxIntegerDigits="14"/><span><fmt:formatNumber value="${producthotdeal.getPrice()}" type="number" maxIntegerDigits="14"/></span></div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
