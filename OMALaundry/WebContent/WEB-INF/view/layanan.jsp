<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<c:url value="https://use.fontawesome.com/releases/v5.8.1/css/all.css"/>"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link
	href="<c:url value="/resources/fontawesome-free/css/all.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/oma.css" />" rel="stylesheet">

<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,700" />"
	rel="stylesheet" type="text/css">
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Kaushan+Script"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic"/>"
	rel='stylesheet' type='text/css'>
<link
	href="<c:url value="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"/>"
	rel='stylesheet' type='text/css'>

<meta charset="ISO-8859-1">
<title>Layanan</title>
<style>
.columns {
	float: left;
	width: 33.3%;
	padding: 8px;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.price {
	font-size: 22px;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-expand-lg navbar-dark fixed-top"
				id="mainNav">
				<div class="container">
					<a class="navbar-brand js-scroll-trigger" href="../#">OMA
						Laundry</a>
					<button class="navbar-toggler navbar-toggler-right" type="button"
						data-toggle="collapse" data-target="#navbarResponsive"
						aria-controls="navbarResponsive" aria-expanded="false"
						aria-label="Toggle navigation">
						Menu <i class="fas fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav text-uppercase ml-auto">
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#">Layanan</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="../login">Login</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="../sign-up">Registrasi</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!--  content -->

	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Daftar Layanan</h2>
			</div>
		</div>
		<div class="row">
			<c:forEach var="value" items="${lay }">
				<div class="columns">
					<div class="card">

						<br>
						<h2>${value.nama }</h2>
						<p>${value.ket }</p>
						<p>Durasi : ${value.durasi }</p>
						<c:if test="${value.idlay == 205 }">
							<p class="price">Rp. ${value.harga }/psg</p>
						</c:if>
						<c:if test="${value.idlay == 204 }">
							<p class="price">Rp. ${value.harga }/pcs</p>
						</c:if>
						<c:if test="${value.idlay != 205 &&  value.idlay != 204}">
							<p class="price">Rp. ${value.harga }/kg</p>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>


	<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
	<script src="<c:url value="/resources/js/oma.js" />"></script>
	<script src="<c:url value="/resources/js/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="/resources/js/jquery-easing/jquery.easing.min.js" />"></script>
</body>
</html>