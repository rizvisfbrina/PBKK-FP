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
<form>
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname">
  Address:<br>
  <input type="text" name="address">
  Phone Number:<br>
  <input type="text" name="phone number">
  Username:<br>
  <input type="text" name="username">
  Password:<br>
  <input type="text" name="password">
  Re-password:<br>
  <input type="text" name="re-password">
</form>
</body>
</html>