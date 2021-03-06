<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="home-plg">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
	          			<li class="nav-item">
	            			<a class="nav-link js-scroll-trigger" href="editPlg">Ubah Data</a>
	          			</li>
				        <li class="nav-item">
				        	<a class="nav-link js-scroll-trigger" href="pemesanan-plg?idpel=${model.idpel }">Pemesanan</a>
				       	</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="logout">${model.nama},Logout</a>
			       	</li>
			    
				</ul>
			</div>
		</div>
	</nav>

	<!-- Content -->
	<div class="container">
	<br>
	<h2 style="margin-top:100px;" align="center">Daftar Pemesanan</h2>
	<table class= "table">
		<tr>
		    <th>ID Pel</th>
		    <th>Jenis Layanan</th>
		    <th>Kilo</th>
		    <th>Total</th>
		    <th>Tanggal Taruh</th> 
		    <th>Tanggal Ambil</th>
		    <th>Status</th>
	 	 </tr>
	 	 <c:forEach var="value" items="${pesan }"> 
		 	 <tr>
		 	 	<td>${value.idpel }</td>
		 	 	<td>${value.jenisLayanan }</td>
		 	 	<td>${value.kilo }</td>
		 	 	<td>${value.total }</td>
			    <td>${value.tgl_taruh }</td>
			    <td>${value.tgl_ambil }</td>
			    <td>
			    	<c:if test = "${value.status == 'Menunggu' }">
				    	<p style="color: red;">${value.status }</p>
				    </c:if>
				    <c:if test = "${value.status != 'Proses' }">
				    	<p>${value.status }</p>
				    </c:if>
				    <c:if test = "${value.status != 'Selesai' }">
				    	<p>${value.status }</p>
				    </c:if>
			    </td>
		 	 </tr>
		 </c:forEach>
	</table>
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