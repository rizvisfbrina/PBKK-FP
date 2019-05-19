<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>
<h1>HALO ADMIN, ${model.nama}</h1>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
     <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="a">OMA Laundry</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
    <c:if test = "${modell != null}">
     <c:if test = "${modell.role == 'Admin'}">
             <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="editlayanan">Layanan</a>
             </li>
             <li class="nav-item">
               <a class="nav-link js-scroll-trigger" href="daftarplg-admin">Pelanggan</a>
             </li>
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="historipesan-adm">Histori Pemesanan</a>
           </li>
           <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="pesan-adm">Pemesanan</a>
           </li>
           </c:if>
     <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="logout">Logout</a>
           </li>
       </c:if>
       
    </ul>
   </div>
  </div>
 </nav>
 
 	<div style="margin-top:100px;">
	<form:form action="prosesTransaksi" method="GET" modelAttribute="statusx">
		<h4>Ubah Status</h4>
				ID : <br/>
				<form:input disabled="true" path="idpesan"/>
				<br/>
				Status : <br />
				<form:select path="status">
					<form:option value="Menunggu"></form:option>
					<form:option value="Proses"></form:option>
					<form:option value="Selesai"></form:option>
				</form:select><br />
			
			<input type="submit" value="Ubah" />
	</form:form>
	</div>
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