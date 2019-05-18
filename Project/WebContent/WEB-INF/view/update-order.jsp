<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Akun"%>

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
<title>Update Order</title>
</head>
<body>
<div class="container">
	<div class="row">
		<jsp:include page="navigation.jsp" />
	</div>
</div>
<h2 align="center">Update Order</h2>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID Pesanan</th>
      <th scope="col">Jenis Layanan</th>
      <th scope="col">Harga</th>
      <th scope="col">Kilo</th>
      <th scope="col">Total</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="value" items="${pemesanan }"> 
		 	 <tr>
		 	 	<th>${value.idpesan }</th>
			    <th>${value.jenis_layanan }</th>
			    <th>${value.harga }</th> 
			    <th>${value.harga }</th>
			    <th>${value.kilo }</th>
			    <th>${value.total }</th>
			    <th>${value.status }</th>
			    <th><a href="#">Hapus</a></th>
		 	 </tr>
	 </c:forEach>
  </tbody>
</table>
</body>
</html>