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
<title>Login</title>
</head>
<body>
<div class="container">
	<div class="row">
		<jsp:include page="navigation.jsp" />
	</div>
</div><br><br><br><br><br>
<h2 class="title" align="center">Login</h2><br>
<div class="container">
		<div class="form-css">
			<form:form action="prosesLogin" align="center" method="POST" modelAttribute="model">
				Username : <br />
				<form:input path="username" /> <br /><br />
				Password : <br />
				<form:password path="password" /> <br /><br />
				Role : <br />
				<form:radiobutton path="role" value="Pelanggan" />Pelanggan<br>
				<form:radiobutton path="role" value="Admin" />Admin<br /><br />
				<input type="submit" class="btn btn-success" value="Submit">
				
			</form:form>
		</div>
	</div>

</body>
</html>