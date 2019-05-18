<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Akun"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/oma.css" />" rel="stylesheet">
	
	<link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />" rel="stylesheet" type="text/css">
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Kaushan+Script"/>" rel='stylesheet' type='text/css'>
 	<link href="<c:url value="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>" rel='stylesheet' type='text/css'>
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>" rel='stylesheet' type='text/css'>
  
	<meta charset="ISO-8859-1">
	<title>Admin - Home</title>
</head>
<body id="page-top">
	<!-- Navigation -->
	<jsp:include page="../navigation.jsp" />

	<!-- Layanan -->
	<section id="services">
    	<div class="container">
		<c:if test = "${modell != null}">
			<c:if test = "${modell.role == 'Admin'}">
    		<div class="row">
        		<div class="col-lg-12 text-center">
          			<h2 class="section-heading">Admin Homepage</h2>
          			<h3 class="section-subheading text-muted">Atur website dengan menu :</h3>
        		</div>
      		</div>
    		<div class="row text-center">
      			<div class="col-lg-4">
      				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="editlayanan">Tambah Layanan</a>
      			</div>
      			<div class="col-lg-4">
      				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="tambah-karyawan">Tambah Pegawai</a>
      			</div>
      			<div class="col-lg-4">
      				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="daftaruser-admin">Daftar Pelanggan</a>
				</div>
			</div>
			<div class="row text-center" style="margin-top: 50px;">
      			<div class="col-lg-4">
      				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="laporan">Laporan Transaksi</a>

      		</div>
      		</div>  
    		</c:if>
    	</c:if>
    	
    	<c:if test = "${modell == null}">
			<div class="row">
        		<div class="col-lg-12 text-center">
          			<h2 class="section-heading">Admin Homepage</h2>
          			<h3 class="section-subheading text-muted">Login dahulu sebagai admin</h3>
        		</div>
      		</div>
      	</c:if>
      	
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