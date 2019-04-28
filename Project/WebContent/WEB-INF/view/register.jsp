<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
 <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<h2 class="title" align="center">Registration</h2><br>
 <form method="POST">
 <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Name" name="name">
    </div><br>
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Address" name="name">
    </div><br>
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Phone Number" name="name">
    </div><br>
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Username" name="name">
    </div><br>
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Password" name="name">
    </div><br>
    <div  class="d-flex justify-content-center align-items-center container ">
     <input class="input--style-2" type="text" placeholder="Re-password" name="name">
    </div><br>
    <div class="checkbox d-flex justify-content-center align-items-center container ">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <div class="checkbox d-flex justify-content-center align-items-center container ">
  <button type="button" class="btn btn-success">Register</button>
  </div>
</body>
</html>