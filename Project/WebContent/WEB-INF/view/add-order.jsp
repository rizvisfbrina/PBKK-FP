<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
</head>

<body id="page-top">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="#page-top">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="#">Ubah Data</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="/OMALaundry/add-admin">Tambah Karyawan</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="#">Tambah Layanan</a>
          			</li>
			        <li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="/OMALaundry/daftaruser-admin/?id=${model.id_admin }">Daftar Pelanggan</a>
			       	</li>
			        <li class="nav-item">
			            <a class="nav-link js-scroll-trigger" href="#">Logout</a>
			        </li>
				</ul>
			</div>
		</div>
	</nav>

	  <form:form action="daftarPesanan" method="POST" modelAttribute="model">
	  	<div  class="d-flex justify-content-center align-items-center container ">
			ID Pesan: <br />
			<form:input class="input--style-2" type="text" path="idpesan"/> <br /><br />
		</div>
		<div  class="d-flex justify-content-center align-items-center container ">
			Jenis Layanan : <br />
			<form:input class="input--style-2" type="text" path="jenislayanan"/> <br /><br />
		</div>
		<div  class="d-flex justify-content-center align-items-center container ">
			Harga: <br />
			<form:input class="input--style-2" type="text" path="harga"/> <br /><br />
		</div>
		<div  class="d-flex justify-content-center align-items-center container ">
			Kilo : <br />
			<form:input class="input--style-2" type="text" path="kilo"/> <br /><br />
		</div>
		<div  class="d-flex justify-content-center align-items-center container ">
			Total : <br />
			<form:input class="input--style-2" type="text" path="total"/> <br /><br />
		</div>
		<div  class="d-flex justify-content-center align-items-center container ">
			Status: <br />
			<form:input class="input--style-2" type="text" path="status"/> <br /><br />
		</div>  
		<div class="checkbox d-flex justify-content-center align-items-center container ">
		  	<button type="button" class="btn btn-success">Submit</button>
		</div>
	</form:form>
  	
	
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