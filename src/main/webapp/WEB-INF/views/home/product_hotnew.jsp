<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri= "http://java.sun.com/jsp/jstl/fmt" %>
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Sản Phẩm Mới</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".women">Nữ</li>
                    <li data-filter=".men">Nam</li>
                    <li data-filter=".kid">Trẻ Em</li>
                    <li data-filter=".accessories">Phụ Kiện</li>
                    <li data-filter=".cosmetic">Mỹ Phẩm</li>
                </ul>
            </div>
        </div>
        <div class="row property__gallery">
       	 <c:forEach var="producthotnew1" items="${listProductHotNew}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotnew1.getImage()}"/>">
                        <div class="label new">Mới</div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotnew1.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="${pageContext.request.contextPath}/buyProduct?code=${producthotnew1.id}"><span class="icon_bag_alt" ></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="<c:url value="/product?id=${producthotnew1.id}"></c:url>"><c:out value="${producthotnew1.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${producthotnew1.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
            </c:forEach>
            <c:forEach var="producthotnew2" items="${producthotnew2}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix men">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotnew2.getImage()}"/>">
                    <div class="label new">Mới</div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotnew2.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href=""${pageContext.request.contextPath}/buyProduct?code=${producthotnew2.id}""><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="detail?id=<c:out value="${producthotnew2.getId()}"/>"><c:out value="${producthotnew2.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${producthotnew2.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
            </c:forEach>
            <c:forEach var="producthotnew5" items="${producthotnew5}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix accessories">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotnew5.getImage()}"/>">
                    <div class="label new">Mới</div>
                        <div class="label stockout"></div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotnew5.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="detail/<c:out value="${producthotnew5.getId()}"/>"><c:out value="${producthotnew5.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${producthotnew5.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
            </c:forEach>
            <c:forEach var="producthotnew4" items="${producthotnew4}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix cosmetic">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotnew4.getImage()}"/>">
                    <div class="label new">Mới</div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotnew4.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="detail?id=<c:out value="${producthotnew4.getId()}"/>"><c:out value="${producthotnew4.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${producthotnew4.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
            </c:forEach>
             <c:forEach var="producthotnew3" items="${producthotnew3}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix kid">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="resources/img/product/<c:out value="${producthotnew3.getImage()}"/>">
                    <div class="label new">Mới</div>
                        <ul class="product__hover">
                            <li><a href="resources/img/product/<c:out value="${producthotnew3.getImage()}"/>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="#"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a href="detail?id=<c:out value="${producthotnew3.getId()}"/>"><c:out value="${producthotnew3.getTitle()}"/></a></h6>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="product__price"><fmt:formatNumber value="${producthotnew3.getPrice()}" type="number" maxIntegerDigits="14"/></div>
                    </div>
                </div>
            </div>
			</c:forEach>
            </div>
        </div>
    </div>
</section>
