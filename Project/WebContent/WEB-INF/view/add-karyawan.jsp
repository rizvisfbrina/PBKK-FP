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
<title>Tambah Karyawan</title>
</head>
<body>
<div class="container">
	<div class="row">
		<jsp:include page="navigation.jsp" />
	</div>
</div><br><br><br><br><br>
<h2 class="title" align="center">Tambah Karyawan</h2><br>
 <form action="prosesDaftar" method="POST" modelAttribute="model">
 	<div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Name" name="nama">
    </div><br>
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Address" name="alamat">
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
    
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Re-password" name="re-password">
    </div><br>
  <div class="checkbox d-flex justify-content-center align-items-center container ">
  	<button type="submit" class="btn btn-success">Tambah</button>
  </div>
</body>
</html>