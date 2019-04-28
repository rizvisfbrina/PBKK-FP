<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Layanan" %>
    
<!DOCTYPE html>
<html>
<head>
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
<meta charset="ISO-8859-1">
<title>Layanan</title>
<style>
.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  font-size: 22px;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
}
</style>
</head>
<body>
<div class="container">
	<h1>Layanan</h1>
	<table style="width:100%">
		<tr>
		    <th>ID</th>
		    <th>Jenis</th> 
		    <th>Harga</th>
		    <th>Kilo</th>
		 </tr>
	<%
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Layanan.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		
		try {
			ses.beginTransaction();
			
			//get pelanggan
			List<Layanan> daftarlayanan = ses.createQuery("from Layanan").list();
			for(Layanan lyn : daftarlayanan){
	%>
		<tr>
	 	 	<td><%=lyn.getIdlay()%></td>
	 	 	<td><%=lyn.getNama()%></td>
		    <td><%=lyn.getHarga()%></td>
		    <td><%=lyn.getKilo()%></td>
	 	 </tr>
	</table>
	<%
			}
			ses.getTransaction().commit();
		}
		finally {
			s.close();
		}
	%>
	
	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
	<div class="row">
		<div class="col-8">
			<h2>Paket</h2>
		</div>
	</div>
	<div class="columns">
		<div class="card">
		  <br><h2>Cuci Setrika</h2>
		  <p>Lorem jeamsun denim lorem jeansum.</p>
		  <p class="price">Rp. 5000/kg</p>
		</div>
	</div>
	<div class="columns">
		<div class="card">
		  <br><h2>Cuci Basah</h2>
		  <p>Lorem jeamsun denim lorem jeansum.</p>
		  <p class="price">Rp. 1000/kg</p>
		</div>
	</div>
	<div class="columns">
		<div class="card">
		  <br><h2>Setrika</h2>
		  <p>Lorem jeamsun denim lorem jeansum.</p>
		  <p class="price">Rp. 2000/kg</p>
		</div>
	</div>
	<div class="columns">
		<div class="card">
		  <br><h2>Cuci Jeans</h2>
		  <p>Lorem jeamsun denim lorem jeansum.</p>
		  <p class="price">Rp. 7000/kg</p>
		</div>
	</div>
	<div class="columns">
		<div class="card">
		  <br><h2>Cuci Spring Bed</h2>
		  <p>Lorem jeamsun denim lorem jeansum.</p>
		  <p class="price">Rp. 20000/kg</p>
		</div>
	</div>
</div>
</body>
</html>