<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>OMALaundry</title>
</head>
<body style="margin-top:100px;">
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="../adm/home-adm">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
				
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="#">Layanan</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="../adm/daftarplg-adm">Pelanggan</a>
          			</li>
			        <li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="../adm/histori-adm">Histori Pemesanan</a>
			       	</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="../logout">${model.nama},Logout</a>
			       	</li>
			    
				</ul>
			</div>
		</div>
	</nav>
	<div align="center">
	<h2 class="title" align="center">Tambah Layanan</h2>
	<br>
	<form:form action="insertDb" method="POST" modelAttribute="layanan">
					ID Layanan : <br />
		<form:input path="idlay" />
		<br />
		<br />
					Nama : <br />
		<form:input path="nama" />
		<br />
		<br />
					Harga : <br />
		<form:input path="harga" />
		<br />
		<br />
					 Keterangan: <br />
		<form:input path="ket" />
		<br />
		<br />
					Durasi: <br />
		<form:input path="durasi"/>
		<br />
		<br />
		<input type="submit" value="Tambah">
	</form:form>
	</div>
</body>
</html>