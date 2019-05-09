<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Akun"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="<c:url value="/resources/fontawesome-free/css/all.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/oma.css" />" rel="stylesheet">
	
	<link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />" rel="stylesheet" type="text/css">
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Kaushan+Script"/>" rel='stylesheet' type='text/css'>
 	<link href="<c:url value="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>" rel='stylesheet' type='text/css'>
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>" rel='stylesheet' type='text/css'>
  
	<meta charset="ISO-8859-1">
	
	<title>OMA Laundry</title>
<style>
.verticalcenter {
    display: table-cell;
    height: 400px;
    vertical-align: middle;
}
</style>
</head>

<body id="page-top">
	<!-- Navigation -->
	<jsp:include page="navigation.jsp" />

	<!-- Header -->
	<header class="masthead">
    	<div class="container">
      		<div class="intro-text">
        		<div class="intro-lead-in">Tingkatkan Layanan Cucian Anda!</div>
        		<div class="intro-heading text-uppercase">OMA Laundry</div>
        		<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
      		</div>
    	</div>
	</header>

	<!-- Layanan -->
	<section id="services">
    	<div class="container">
      		<div class="row">
        		<div class="col-lg-12 text-center">
          			<h2 class="section-heading text-uppercase">Layanan</h2>
          			<h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        		</div>
      		</div>
      		<div class="row text-center">
        		<div class="col-md-4">
          			<span class="fa-stack fa-4x">
            			<i class="fas fa-circle fa-stack-2x text-primary"></i>
            			<i class="fas fa-user-tie fa-stack-1x fa-inverse"></i>
          			</span>
          			<h4 class="service-heading">Cuci Setrika</h4>
          			<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        		</div>
        		<div class="col-md-4">
	          		<span class="fa-stack fa-4x">
	            		<i class="fas fa-circle fa-stack-2x text-primary"></i>
	            		<i class="fas fa-tshirt fa-stack-1x fa-inverse"></i>
	          		</span>
	          		<h4 class="service-heading">Cuci Basah</h4>
          			<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        		</div>
        		<div class="col-md-4">
          			<span class="fa-stack fa-4x">
            			<i class="fas fa-circle fa-stack-2x text-primary"></i>
            			<i class="fas fa-mitten fa-stack-1x fa-inverse"></i>
          			</span>
          			<h4 class="service-heading">Setrika</h4>
          			<p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
        		</div>
      		</div>
      		<div class="row text-center">
      			<div class="col-lg-12">
      				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="layanan">more</a>
      			</div>
      		</div>
    	</div>
	</section>
 	
 	<!-- About -->
 	<section id=about>
 		<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
          		<h2 class="section-heading text-uppercase">About</h2>
				<h3 class="section-subheading text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</h3>
				<br>
			</div>
		</div>
			<div class="row">
				<div class="col-sm-4">
					<div class="verticalcenter">
						<img src="<c:url value="/images/la.jpg"/>" alt="foto laundry" height="300" width="330" align="middle">
					</div>
				</div>
				<div class="col-sm-8">
					<h2>OUR HISTORY</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed felis varius turpis lobortis consequat eget id lectus. Praesent tempus ex quam, ac blandit tellus accumsan et. Etiam et risus id orci euismod aliquet non et libero. Proin et enim nec ex lacinia molestie non vel orci. Nam ipsum odio, iaculis vitae bibendum sed, rhoncus tincidunt leo. Curabitur pulvinar mauris nibh, posuere tristique lectus elementum eget. In iaculis metus malesuada consectetur aliquam. Duis hendrerit, enim ac fermentum maximus, purus enim vulputate nisl, vel malesuada tellus tortor vitae sem. Curabitur fringilla porttitor dui eu accumsan. Sed ac molestie enim, ut volutpat dui. Duis ultrices, magna sit amet tristique pulvinar, nulla justo interdum est, sit amet iaculis libero enim sed lacus. Donec nec sapien mauris. Sed ut lacus a justo mattis fringilla et in lacus. Nulla mattis dignissim metus, ac feugiat diam tempus ac. Interdum et malesuada fames ac ante ipsum primis in faucibus.
				
					Suspendisse sed mauris tincidunt, lacinia ante sed, commodo neque. Sed ullamcorper magna dolor, a vulputate magna dictum id. Mauris nec orci faucibus eros mattis dictum. Praesent auctor lectus ac ornare sagittis. Ut sed neque suscipit urna aliquet facilisis. Quisque tristique vulputate justo sit amet lobortis. Nunc efficitur sagittis leo eu rhoncus. Morbi eu erat magna. Aenean consectetur venenatis neque eget efficitur.</p>
				</div>
			</div>
			<h2>GET IN TOUCH</h2>
			<p>Phone : +62 8000 5116<br>
			Email : oma@laundry.com<br>
			Website : www.omalaundry.com<br>
			Address : Teknik Informatika, ITS </p>
	</div>
 	</section>
	<!-- Footer -->
	<footer>
    	<div class="container">
      		<div class="row">
        		<div class="col-md-4">
          			<span class="copyright">Copyright &copy; OMA Laundry 2019</span>
        		</div>
        		<div class="col-md-4">
          			<ul class="list-inline social-buttons">
            			<li class="list-inline-item">
              				<a href="#">
                				<i class="fab fa-twitter"></i>
              				</a>
            			</li>
            			<li class="list-inline-item">
              				<a href="#">
                				<i class="fab fa-facebook-f"></i>
              				</a>
            			</li>
            			<li class="list-inline-item">
              				<a href="#">
                				<i class="fab fa-linkedin-in"></i>
              				</a>
            			</li>
          			</ul>
        		</div>
        		<div class="col-md-4">
          			<ul class="list-inline quicklinks">
            			<li class="list-inline-item">
              				<a href="#">Privacy Policy</a>
            			</li>
            			<li class="list-inline-item">
              				<a href="#">Terms of Use</a>
            			</li>
          			</ul>
        		</div>
      		</div>
    	</div>
	</footer>
 	 
 	 
	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
    <script src="<c:url value="/resources/js/oma.js" />"></script>
    <script src="<c:url value="/resources/js/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery-easing/jquery.easing.min.js" />"></script>
</body>
</html>