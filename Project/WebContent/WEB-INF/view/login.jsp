<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<div class="container">
		<div class="form-css">
			<form:form action="prosesLogin" method="POST" modelAttribute="model">
				Id : <br />
				<form:input path="id" /> <br /><br />
				Password : <br />
				<form:password path="password" /> <br /><br />
				Role : <br />
				<form:radiobutton path="role" value="Pelanggan" />Pelanggan
				<form:radiobutton path="role" value="Admin" />Admin<br /><br />
				<input type="submit" value="Submit">
				
			</form:form>
		</div>
	</div>

</body>
</html>