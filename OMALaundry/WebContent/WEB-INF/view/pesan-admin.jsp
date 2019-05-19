<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OMALaundry</title>
</head>
<body>
<h1>HALO ADMIN, ${model.nama }</h1>
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

<h2>Daftar Pemesanan</h2>
<table style="width:100%">
	<tr>
	    <th>ID Pesan</th>
	    <th>ID Pelanggan</th> 
	    <th>ID Layanan</th>
	    <th>Kilo</th>
	    <th>Total</th>
	    <th>Status</th>
	    <th>Jenis Layanan</th>
	    <th>Tanggal Taruh</th>
	    <th>Tanggal Ambil</th>
	    <th>Action</th>
 	 </tr>
 	 <c:forEach var="value" items="${pesan }"> 
	 	 <tr>
	 	 	<th>${value.idpesan }</th>
		    <th>${value.idpel }</th>
		    <th>${value.idlay }</th> 
		    <th>${value.kilo }</th>
		    <th>${value.total }</th>
		    <th>${value.status }</th>
		    <th>${value.jenisLayanan }</th>
		    <th>${value.tgl_taruh }</th>
		    <th>${value.tgl_ambil }</th>
		    <th><a href="statusPesan?idpesan=${value.idpesan }">Ganti Status</a></th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>