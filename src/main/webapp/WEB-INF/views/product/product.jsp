<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- Header Section Begin -->
<%@include file="/WEB-INF/views/share/header.jsp"%>
<!-- Header Section End -->
<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="product__details__pic">
					<div class="product__details__pic__left product__thumb nice-scroll">
						<a class="pt active" href="#product-1"> <img
							src="${pageContext.request.contextPath}/resources/img/product/details/thumb-1.jpg" alt="">
						</a> <a class="pt" href="#product-2"> <img
							src="${pageContext.request.contextPath}/resources/img/product/details/thumb-2.jpg" alt="">
						</a> <a class="pt" href="#product-3"> <img
							src="${pageContext.request.contextPath}/resources/img/product/details/thumb-3.jpg" alt="">
						</a> <a class="pt" href="#product-4"> <img
							src="${pageContext.request.contextPath}/resources/img/product/details/thumb-4.jpg" alt="">
						</a>
					</div>
					<div class="product__details__slider__content">
						<div class="product__details__pic__slider owl-carousel">
							<img data-hash="product-1" class="product__big__img"
								src="<c:url value="/resources/img/product/${product.getImage()}"/>"
								alt=""> <img data-hash="product-2"
								class="product__big__img"
								src="${pageContext.request.contextPath}/resources/img/product/details/product-3.jpg" alt=""> <img
								data-hash="product-3" class="product__big__img"
								src="${pageContext.request.contextPath}/resources/img/product/details/product-2.jpg" alt=""> <img
								data-hash="product-4" class="product__big__img"
								src="${pageContext.request.contextPath}/resources/img/product/details/product-4.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="product__details__text">
					<span>${product.getTitle()}</span>
					<div class="rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <span>( 138 reviews )</span>
					</div>
					<div class="product__details__price">${product.price_net}<span>${product.price}</span>
					</div>
					<p>${product.getDescription()}</p>
					<!--  <div class="product__details__button">
                            <div class="quantity">
                                <span>Quantity:</span>
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                             -->

				</div>
				<a
					href="${pageContext.request.contextPath}/buyProduct?code=${product.id}">
					<input type="button" value="Thêm Vào Giỏ Hàng" >
				</a>

				<div class="product__details__widget">
					<ul>
						<li><span>Availability:</span>
							<div class="stock__checkbox">
								<label for="stockin"> In Stock <input type="checkbox"
									id="stockin"> <span class="checkmark"></span>
								</label>
							</div></li>
						<li><span>Available color:</span>
							<div class="color__checkbox">
								<label for="red"> <input type="radio"
									name="color__radio" id="red" checked> <span
									class="checkmark"></span>
								</label> <label for="black"> <input type="radio"
									name="color__radio" id="black"> <span
									class="checkmark black-bg"></span>
								</label> <label for="grey"> <input type="radio"
									name="color__radio" id="grey"> <span
									class="checkmark grey-bg"></span>
								</label>
							</div></li>
						<li><span>Available size:</span>
							<div class="size__btn">
								<label for="xs-btn" class="active"> <input type="radio"
									id="xs-btn"> xs
								</label> <label for="s-btn"> <input type="radio" id="s-btn">
									s
								</label> <label for="m-btn"> <input type="radio" id="m-btn">
									m
								</label> <label for="l-btn"> <input type="radio" id="l-btn">
									l
								</label>
							</div></li>
						<li><span>Promotions:</span>
							<p>Free shipping</p></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="product__details__tab">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#tabs-1" role="tab">Description</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-2" role="tab">Specification</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#tabs-3" role="tab">Reviews ( 2 )</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tabs-1" role="tabpanel">
						<h6>Description</h6>
						<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
							odit aut loret fugit, sed quia consequuntur magni dolores eos qui
							ratione voluptatem sequi nesciunt loret. Neque porro lorem
							quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
							voluptatem quia voluptas sit aspernatur aut odit aut loret fugit,
							sed quia ipsu consequuntur magni dolores eos qui ratione
							voluptatem sequi nesciunt. Nulla consequat massa quis enim.</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
							natoque penatibus et magnis dis parturient montes, nascetur
							ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
							pretium quis, sem.</p>
					</div>
					<div class="tab-pane" id="tabs-2" role="tabpanel">
						<h6>Specification</h6>
						<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
							odit aut loret fugit, sed quia consequuntur magni dolores eos qui
							ratione voluptatem sequi nesciunt loret. Neque porro lorem
							quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
							voluptatem quia voluptas sit aspernatur aut odit aut loret fugit,
							sed quia ipsu consequuntur magni dolores eos qui ratione
							voluptatem sequi nesciunt. Nulla consequat massa quis enim.</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
							natoque penatibus et magnis dis parturient montes, nascetur
							ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
							pretium quis, sem.</p>
					</div>
					<div class="tab-pane" id="tabs-3" role="tabpanel">
						<h6>Reviews ( 2 )</h6>
						<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut
							odit aut loret fugit, sed quia consequuntur magni dolores eos qui
							ratione voluptatem sequi nesciunt loret. Neque porro lorem
							quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
							voluptatem quia voluptas sit aspernatur aut odit aut loret fugit,
							sed quia ipsu consequuntur magni dolores eos qui ratione
							voluptatem sequi nesciunt. Nulla consequat massa quis enim.</p>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
							Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
							natoque penatibus et magnis dis parturient montes, nascetur
							ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
							pretium quis, sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12 text-center">
			<div class="related__title">
				<h5>RELATED PRODUCTS</h5>
			</div>
		</div>
		<c:forEach var="listprosimilar" items="${listproductSimilar}">
			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="<c:url value="/resources/img/product/${listprosimilar.getImage()}"/>">
						<div class="label new">Similar</div>
					</div>
					<div class="product__item__text">
						<h6>
							<a href="<c:url value="/product?id=${listprosimilar.id}"></c:url>"><c:out value="${listprosimilar.getTitle()}" /></a>
						</h6>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<div class="product__price">
							<fmt:formatNumber value="${listprosimilar.getPrice()}"
								type="number" maxIntegerDigits="14" />
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</section>
<!-- Product Details Section End -->

<!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/share/footer.jsp"%>
<!-- Footer Section Begin -->