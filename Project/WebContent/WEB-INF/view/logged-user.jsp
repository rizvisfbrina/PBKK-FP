<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Daftar Pemesanan</h1>
<table style="width:100%">
	<tr>
	    <th>ID</th>
	    <th>Jenis</th> 
	    <th>Harga</th>
	    <th>Kilo</th>
 	 </tr>
 	 <c:forEach var="value" items="${layanan }"> 
	 	 <tr>
	 	 	<th>${value.idlay}</th>
	 	 	<th>${value.nama}</th>
		    <th>${value.harga}</th>
		    <th>${value.kilo}</th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>