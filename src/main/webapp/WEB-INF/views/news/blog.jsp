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
                        <a href="./index.html"><i class="fa fa-home"></i> Trang Chủ</a>
                        <span>Tin Tức</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
               <div class="row property__gallery">
       	 <c:forEach var="listblog" items="${listblog}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
                <div class="blog-item">
                                <div class="bi-pic">
                                    <img src="resources/img/blog/<c:out value="${listblog.getImage()}"/>" alt="" width = "350px" height="250px">
                                </div>
                                <div class="bi-text">
                                    <a href="blogdetail?id=<c:out value="${listblog.getId()}"/>">
                                        <h4><c:out value="${listblog.getTitle()}"/></h4>
                                    </a>
                                    Người Viết: <span><c:out value="${listblog.getAuthor()}"/></span>
                                    Ngày Viết: <span><c:out value="${listblog.getCreatedAt()}"/></span>
                                </div>
                            </div>
            </div>
            </c:forEach>
           	 <div class="col-lg-12 text-center">
                    <a href="#" class="primary-btn load-btn">Xem Thêm</a>
                </div>
        </div>
    
        </div>
    </section>
    <!-- Blog Section End -->
	
	<!-- Instagram Begin -->
	<jsp:include page = "../home/instagram.jsp"></jsp:include>
	<!-- Instagram End -->
	
	<!-- Header Section Begin -->
	<jsp:include page = "../share/footer.jsp"></jsp:include>
    <!-- Header Section End -->