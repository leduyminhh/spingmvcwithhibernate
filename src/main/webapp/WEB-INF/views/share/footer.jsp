<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c"  uri= "http://java.sun.com/jsp/jstl/core" %>
 
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                    <p>Thanh toán nhanh, gon,tiện lợi và an toàn</p>
                    <div class="footer__payment">
                        <a href="#"><img src="resources/img/payment/payment-1.png" alt=""></a>
                        <a href="#"><img src="resources/img/payment/payment-2.png" alt=""></a>
                        <a href="#"><img src="resources/img/payment/payment-3.png" alt=""></a>
                        <a href="#"><img src="resources/img/payment/payment-4.png" alt=""></a>
                        <a href="#"><img src="resources/img/payment/payment-5.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>Liên Kết</h6>
                    <ul>
                        <li><a href="#">Về Chúng Tôi</a></li>
                        <li><a href="#">Tin Tức</a></li>
                        <li><a href="#">Tương Tác</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>Tài Khoản</h6>
                    <ul>
                        <li><a href="#">Tài Khoản Của Bạn</a></li>
                        <li><a href="#">Đơn Hàng</a></li>
                        <li><a href="#">Thủ Tục Thanh Toán</a></li>
                        <li><a href="#">Danh Sách Yêu Thích</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                <div class="footer__newslatter">
                    <h6>Bản Tin</h6>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit" class="site-btn">Đăng Kí</button>
                    </form>
                    <div class="footer__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                    <p>Bản Quyền &copy; <script>document.write(new Date().getFullYear());</script>Được Tạo <i class="fa fa-heart" aria-hidden="true"></i> Bởi <a href="" target="_blank">Lê Minh</a></p>
                </div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
<script src="<c:url value="/resources/js/mixitup.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.countdown.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.slicknav.js"/>"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.min.js"/>"></script>
<script src="<c:url value="/resources/js/main.js"/>"></script>

</html>