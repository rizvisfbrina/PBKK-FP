<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
	<link href="<c:url value="/resources/fontawesome-free/css/all.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/oma.css" />" rel="stylesheet">
    
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />" rel="stylesheet" type="text/css">
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Kaushan+Script"/>" rel='stylesheet' type='text/css'>
 	<link href="<c:url value="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>" rel='stylesheet' type='text/css'>
  	<link href="<c:url value="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>" rel='stylesheet' type='text/css'>
	<meta charset="ISO-8859-1">
	<title>OMALaundry</title>
</head>
<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="plg/home-plg">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="editPlg">Ubah Data</a>
          			</li>		     	
			     	<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="pemesanan-plg?id=${model.idpel }">Pemesanan</a>
			       	</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="OMALaundry/logout">${model.nama},Logout</a>
			       	</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- content -->
	<div class=top style="margin-top: 100px;">
		<div class=header>
			<h1>EDIT DATA</h1>
		</div>
	</div>

	<br></br>
	<div class="besar">
		<div class="header">
			<div class="logo">
				<h3>OMALaundry</h3>
			</div>
		</div>
		<div class="badan">
			<div class="form-css">
				<form:form action="editDb" method="POST" modelAttribute="model">
					Nama : <br />
					<form:input path="nama"/> <br /><br />
					ID Pelanggan : <br />
					<form:input disabled="true" path="idpel" /> <br /><br />
					Username : <br />
					<form:input path="username"/> <br /><br />
					Password : <br />
					<form:password path="password" /> <br /><br />
					Email : <br />
					<form:input path="email" /> <br /><br />
					No. HP : <br />
					<form:input path="nohp" /> <br /><br /><br /><br />
					<input type="submit" value="Submit">
				</form:form>
			</div>
		</div>
	</div>

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