<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    	<div class="container">
      		<a class="navbar-brand js-scroll-trigger" href="#">OMA Laundry</a>
      		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        		Menu <i class="fas fa-bars"></i>
      		</button>
      		<div class="collapse navbar-collapse" id="navbarResponsive">
        		<ul class="navbar-nav text-uppercase ml-auto">
          			<li class="nav-item">
            			<a class="nav-link js-scroll-trigger" href="layanan/lay">Layanan</a>
          			</li>
					<li class="nav-item">
			        	<a class="nav-link js-scroll-trigger" href="login">Login</a>
			       	</li>
			       	<li class="nav-item">
			            <a class="nav-link js-scroll-trigger" href="sign-up">Registrasi</a>
			        </li>
				</ul>
			</div>
		</div>
	</nav>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h2 class="title" align="center">Login</h2>
	<br>
	<div class="container">
		<div class="form-css">
			<form:form action="prosesLogin" align="center" method="POST"
				modelAttribute="model">
				ID : <br />
				<form:input path="id" />
				<br />
				<br />
				Password : <br />
				<form:password path="password" />
				<br />
				<br />
				Role : <br />
				<form:radiobutton path="role" value="Pelanggan" />Pelanggan<br>
				<form:radiobutton path="role" value="Admin" />Admin<br />
				<br />
				<input type="submit" class="btn btn-success" value="Submit">

			</form:form>
		</div>
	</div>

</body>
</html>