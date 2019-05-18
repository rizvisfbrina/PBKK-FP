<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Akun"%>

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
	
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="a">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="layanan">Layanan</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="about">About</a>
          			</li>
          			       			
				<c:if test = "${model == null}">
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="login">Login</a>
			       	</li>
			       	<li class="nav-item">
			            <a class="nav-link js-scroll-trigger" href="registrasi">Registrasi</a>
			        </li>
			    </c:if>
			    
				<c:if test = "${model != null}">
					<c:if test = "${model.role == 'Admin'}">
          			
	          			<li class="nav-item">
	            			<a class="nav-link js-scroll-trigger" href="admin/pegawai">Pegawai</a>
	          			</li>
				        <li class="nav-item">
				        	<a class="nav-link js-scroll-trigger" href="admin/laporan">Laporan</a>
				       	</li>
			       	</c:if>
			     	
			     	<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="pesanan">Pesanan</a>
			       	</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="logout">"${model.username}",Logout</a>
			       	</li>
			    </c:if>
			    
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>