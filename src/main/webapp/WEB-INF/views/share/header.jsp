<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/elegant-icons.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/slicknav.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" type="text/css">

 
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <div class="tip">2</div>
            </a></li>
            <li><a href="/shoppingCart"><span class="icon_bag_alt"></span>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="resources/img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="login">Đăng Nhập</a>
            <a href="logout">Đăng Ký</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="home"><img src="resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                         	<c:forEach var="category" items="${listCateParent}">
                         	<c:if test="${category.parent==0}">
                            <li><a href=""><c:out value="${category.title}"/></a>
                            <ul class="dropdown">
                            	<c:forEach var="categoryparent" items="${listCateParent}">
                           			 <c:if test="${categoryparent.parent==category.id}">
		                                   <li><a href=""><c:out value="${categoryparent.title}"/></a></li>
                           			 </c:if>
                           		</c:forEach>
                           </ul>
                           	</li>
                           	</c:if>
                            </c:forEach>
                       	</ul> 
                    </nav>
                </div>
                <div class="col-xl-3">
                    <div class="header__right">
                    <c:if test="${loggedInUser==NULL}">
                        <div class="header__right__auth">
                            <a href="login">Đăng Nhập</a>
                            <a href="register">Đăng Ký</a>
                        </div>
                     </c:if>
                     <c:if test="${loggedInUser!=NULL}">
                         <div class="header__right__auth">
                            <a href="">${loggedInUser}</a>
                            <a href="logout">Đăng Xuất</a>
                        </div>
                     </c:if>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <li><a href="#"><span class="icon_heart_alt"></span>
                                <div class="tip">0</div>
                            </a></li>
                            <li><a href="${pageContext.request.contextPath }/shoppingCart"><span class="icon_bag_alt"></span>
                                <div class="tip">${productInCart}</div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    