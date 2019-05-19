<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
 <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="ISO-8859-1">
<title>OMALaundry</title>
</head>
<body>
<!-- Navigation -->
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
          			       			
				<c:if test = "${modell == null}">
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="login">Login</a>
			       	</li>
			       	<li class="nav-item">
			            <a class="nav-link js-scroll-trigger" href="registrasi">Registrasi</a>
			        </li>
			    </c:if>
			    
				<c:if test = "${modell != null}">
					<c:if test = "${modell.role == 'Admin'}">
          			
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="admin/pegawai">Pegawai</a>
          			</li>
			        <li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="historipesan-adm">Histori Pemesanan</a>
			       	</li>
			       	</c:if>
			     	
			     	<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="logout">Pesanan</a>
			       	</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="logout">Logout</a>
			       	</li>
			    </c:if>
			    
			    <c:if test = "${modell != null}">
					<c:if test = "${modell.role == 'Pelanggan'}">
	          			<li class="nav-item">
	            			<a class="nav-link js-scroll-trigger" href="editPlg">Ubah Data</a>
	          			</li>
				        <li class="nav-item">
				        	<a class="nav-link js-scroll-trigger" href="pemesanan-plg?id=${model.idpel }">Pemesanan</a>
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
<h2 class="title" align="center">Registrasi</h2><br>
 <form action="prosesDaftar" method="POST" modelAttribute="model">
 	<div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Nama" name="nama">
    </div><br>
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Username" name="username">
    </div><br>
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Phone Number" name="nohp">
    </div><br>
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Email" name="email">
    </div><br>
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Password" name="password">
    </div><br>
    
  <div class="checkbox d-flex justify-content-center align-items-center container ">
  	<button type="submit" class="btn btn-success">Daftar</button>
  </div>
</body>
</html>