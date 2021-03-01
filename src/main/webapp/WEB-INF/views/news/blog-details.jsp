<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>

	<!-- Header Section Begin -->
	<jsp:include page = "../share/header.jsp"></jsp:include>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <a href="./blog.html">Blog</a>
                        <span><c:out value="${blogdetail.getTitle()}"/></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="blog__details__content">
                        <div class="blog__details__item">
                            <img src="img/blog/details/blog-details.jpg" alt="">
                            <div class="blog__details__item__title">
                                <span class="tip">Phong Cách</span>
                                <h4><c:out value="${blogdetail.getTitle()}"/></h4>
                                <ul>
                                    <li>Bởi: <span><c:out value="${blogdetail.getAuthor()}"/></span></li>
                                    <li><c:out value="${blogdetail.getCreatedAt()}"/></li>
                                    <li>39 Comments</li>
                                </ul>
                            </div>
                        </div>
                        <div class="blog__details__desc">
                            <p><c:out value="${blogdetail.getDescription()}"/></p>
                        </div>
                        <div class="blog__details__btns">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__details__btn__item">
                                        <h6><a href="#"><i class="fa fa-angle-left"></i>Bài trước</a></h6>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__details__btn__item blog__details__btn__item--next">
                                        <h6><a href="#">Bài tiếp theo <i class="fa fa-angle-right"></i></a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__comment">
                            <h5>3 Bình Luận</h5>
                            <a href="#" class="leave-btn">Để Lại Bình Luận</a>
                            <div class="blog__comment__item">
                                <div class="blog__comment__item__pic">
                                    <img src="img/blog/details/comment-1.jpg" alt="">
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>Lê Minh</h6>
                                    <p>Rất hay và bổ ích.</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> 02/07/2020</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog__comment__item blog__comment__item--reply">
                                <div class="blog__comment__item__pic">
                                    <img src="img/blog/details/comment-2.jpg" alt="">
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>Trần Tuấn</h6>
                                    <p>Đã xem.</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> 02/07/2020</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog__comment__item">
                                <div class="blog__comment__item__pic">
                                    <img src="img/blog/details/comment-3.jpg" alt="">
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>Lê Xuân</h6>
                                    <p>Mình không nghĩ thế.</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> 02/07/2020</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__item">
                            <div class="section-title">
                                <h4>Bài Đăng Nổi Bật</h4>
                            </div>
                            <c:forEach var="listtopviews" items="${listtopviews}">
                                 <div class="blog__feature__item__text">
                                    <a href="blogdetail?id=${listtopviews.getId()}"><h6><c:out value="${listtopviews.getTitle()}"/></h6></a>
                                    <span>Lượt Xem: <c:out value="${listtopviews.getViews()}"/></span>
                                </div>
                            <a href="blogdetail?id=${listtopviews.getId()}" class="blog__feature__item">
                                <div class="blog__feature__item__pic">
                                    <img src="resources/img/blog/<c:out value="${listtopviews.getImage()}"/>" width=120px height=100px>
                                </div>
              
                            </a>
                            </c:forEach>
                        </div>
                        <div class="blog__sidebar__item">
                            <div class="section-title">
                                <h4>Từ Khóa</h4>
                            </div>
                            <div class="blog__sidebar__tags">
                                <a href="#">Thời Trang Nữ</a>
                                <a href="#">Phụ Kiện</a>
                                <a href="#">Trẻ Em</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

	<!-- Instagram Begin -->
	<jsp:include page = "../home/instagram.jsp"></jsp:include>
	<!-- Instagram End -->
	
	<!-- Header Section Begin -->
	<jsp:include page = "../share/footer.jsp"></jsp:include>
    <!-- Header Section End -->