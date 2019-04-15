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
<title>About</title>
<style>
.verticalcenter {
    display: table-cell;
    height: 400px;
    vertical-align: middle;
}
</style>
</head>
<body>
<div class="container">
	<h1>About</h1>
	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
	<br>
	<div class="row">
		<div class="col-sm-4">
			<div class="verticalcenter">
				<img src="<c:url value="/images/la.jpg"/>" alt="foto laundry" height="300" width="330" align="middle">
			</div>
		</div>
		<div class="col-sm-8">
			<h2>OUR HISTORY</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed felis varius turpis lobortis consequat eget id lectus. Praesent tempus ex quam, ac blandit tellus accumsan et. Etiam et risus id orci euismod aliquet non et libero. Proin et enim nec ex lacinia molestie non vel orci. Nam ipsum odio, iaculis vitae bibendum sed, rhoncus tincidunt leo. Curabitur pulvinar mauris nibh, posuere tristique lectus elementum eget. In iaculis metus malesuada consectetur aliquam. Duis hendrerit, enim ac fermentum maximus, purus enim vulputate nisl, vel malesuada tellus tortor vitae sem. Curabitur fringilla porttitor dui eu accumsan. Sed ac molestie enim, ut volutpat dui. Duis ultrices, magna sit amet tristique pulvinar, nulla justo interdum est, sit amet iaculis libero enim sed lacus. Donec nec sapien mauris. Sed ut lacus a justo mattis fringilla et in lacus. Nulla mattis dignissim metus, ac feugiat diam tempus ac. Interdum et malesuada fames ac ante ipsum primis in faucibus.
		
			Suspendisse sed mauris tincidunt, lacinia ante sed, commodo neque. Sed ullamcorper magna dolor, a vulputate magna dictum id. Mauris nec orci faucibus eros mattis dictum. Praesent auctor lectus ac ornare sagittis. Ut sed neque suscipit urna aliquet facilisis. Quisque tristique vulputate justo sit amet lobortis. Nunc efficitur sagittis leo eu rhoncus. Morbi eu erat magna. Aenean consectetur venenatis neque eget efficitur.</p>
		</div>
	</div>
	<h2>GET IN TOUCH</h2>
	<p>Phone : +62 8000 5116<br>
	Email : oma@laundry.com<br>
	Website : www.omalaundry.com<br>
	Address : Teknik Informatika, ITS </p>
</div>
</body>
</html>