<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
  <head>
    <title>Kurly Holic</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="resources/assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/assets/css/animate.css">
    
    <link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/assets/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/assets/css/aos.css">

    <link rel="stylesheet" href="resources/assets/css/ionicons.min.css">

    <link rel="stylesheet" href="resources/assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="resources/assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="resources/assets/css/icomoon.css">
    <link rel="stylesheet" href="resources/assets/css/style.css">
    
    <link rel="stylesheet" href="resources/assets/css/kurly/kurly.css">
  </head>
  <body>
    
  	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/main">Kurly Holic</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="/mypage" class="nav-link"><span>???????????????</span></a></li>
	          <li class="nav-item cta"><a href="/logout" class="nav-link"><span>????????????</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
    <div class="hero-wrap" style="background-image: url('resources/assets/images/kurly/bg_kurly.png'); height: 470px !important; ">
    </div>


    <section class="ftco-section ftco-degree-bg">
      <div class="container">
        <div class="row">
          <div class="col-md-5 ftco-animate">
            <p>
              <img src="resources/assets/images/kurly/${info.category }1.jpg" alt="" class="img-fluid">
            </p>

          </div> <!-- .col-md-8 -->
          <div class="col-md-7 ftco-animate">
          	<div class="css-1bhm8h2 ezpe9l12">
          		<button class="css-gplgk2 eaxuegm1"></button>
          		<h2 class="css-1f2zq3n ezpe9l11">${info.name }</h2>
          		<button class="css-3z91zj e4nu7ef3" type="button" width="56" height="56" radius="3"><span class="css-ymwvow e4nu7ef1"><img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBzdHJva2U9IiM1RjAwODAiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K" alt="" class="css-0"></span></button>
          	</div>
            <div class="css-liviaq e1q8tigr7">
            	<span class="css-9pf1ze e1q8tigr5"><fmt:formatNumber type="number" maxFractionDigits="3" value="${info.reduced_price }" /></span>
            	<span class="css-1x9cx9j e1q8tigr4">???</span>
            </div>
            <div class="css-iqoq9n ejdfx860">
            	<dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">??????</dt>
		            <dd class="css-1k8t52o exslwju2">
			            <p class="css-14emg3b exslwju1">????????????</p>
			            <p class="css-uy94b2 exslwju0">23??? ??? ?????? ??? ?????? ?????? 7??? ??? ??????
			            (?????????????????????? ???????????? ???????????? ?????? ??????)
			            </p>
		            </dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">?????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">??????</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">????????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">?????? (????????????)</p>
	            		<p class="css-uy94b2 exslwju0">??????????????? ?????? ????????? ?????????????????? ???????????????.</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">????????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">1???</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">??????/??????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">325g</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">??????????????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">- ??????, ???, ??????, ?????? ??????
	            		- ??????, ??????, ????????????, ?????????, ?????????, ????????????, ??????, ?????????, ??? ????????????
	            		</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">??????????????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">????????? ?????? ?????? 30??? ?????? ????????? ?????? ????????????</p>
	            	</dd>
	            </dl>
	            <dl class="css-e6zlnr e1wur6vo1">
	            	<dt class="title css-1ikhfdy e1wur6vo0">????????????</dt>
	            	<dd class="css-1k8t52o exslwju2">
	            		<p class="css-14emg3b exslwju1">- 2022??? 8??? 25??? 23??? ?????? ?????????, ???????????? 2022??? 9??? 16??? ?????? ??????</p>
	            	</dd>
	            </dl>
	        </div>
	        <p>????????? ????????? ????????? ????????? ????????? ???????????????. ????????? ?????? ?????? ????????? ?????? ?????? ????????? ????????? ?????? ???????????? ????????? ???????????? ????????? ??? ??????. ??????????????? ????????? ?????? ????????? ????????? ??????, ???????????? ????????? ??????????????? ????????? ????????? ???????????? ?????? ?????????. ???????????? ?????????????????? ????????? ???????????? ?????? ????????? ??? ?????? ????????????. ???????????? ????????? ?????? ???????????? ???????????????, ????????? ?????? ????????? ?????? ????????? ????????? ???????????????.</p>
          </div>
        </div>
      </div>
    </section> <!-- .section -->

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">dirEngine</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">About</a></li>
                <li><a href="#" class="py-2 d-block">Service</a></li>
                <li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Become a partner</a></li>
                <li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">FAQ</a></li>
                <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                <li><a href="#" class="py-2 d-block">How it works</a></li>
                <li><a href="#" class="py-2 d-block">Contact Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="resources/assets/js/jquery.min.js"></script>
  <script src="resources/assets/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/assets/js/popper.min.js"></script>
  <script src="resources/assets/js/bootstrap.min.js"></script>
  <script src="resources/assets/js/jquery.easing.1.3.js"></script>
  <script src="resources/assets/js/jquery.waypoints.min.js"></script>
  <script src="resources/assets/js/jquery.stellar.min.js"></script>
  <script src="resources/assets/js/owl.carousel.min.js"></script>
  <script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/assets/js/aos.js"></script>
  <script src="resources/assets/js/jquery.animateNumber.min.js"></script>
  <script src="resources/assets/js/bootstrap-datepicker.js"></script>
  <script src="resources/assets/js/jquery.timepicker.min.js"></script>
  <script src="resources/assets/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="resources/assets/js/google-map.js"></script>
  <script src="resources/assets/js/main.js"></script>
    
  </body>
</html>