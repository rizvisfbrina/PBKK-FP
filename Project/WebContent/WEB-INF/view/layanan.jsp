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
		<div class="row">
			<jsp:include page="navigation.jsp" />
		</div>
	</div>
	<div class="container" style="margin-top: 100px;">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading text-uppercase">Paket Layanan</h2>
			</div>
		</div>
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
		 	<div class="columns">
				<div class="card">
			  		<br><h2><%=lyn.getNama()%></h2>
			  		<p><%=lyn.getKet()%></p>
			  		<p class="price">Rp. <%=lyn.getHarga()%>/kg</p>
				</div>
			</div>
		<%
				}
				ses.getTransaction().commit();
			}
			finally {
				s.close();
			}
		%>
	</div>
</body>
</html>