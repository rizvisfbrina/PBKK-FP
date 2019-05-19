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
<h2 class="title" align="center">Tambah Admin</h2><br>
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
 <form action="prosesDaftar" method="POST" modelAttribute="model">
 	<div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Name" name="nama">
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
  	<button type="submit" class="btn btn-success">Tambah</button>
  </div>
</body>
</html>