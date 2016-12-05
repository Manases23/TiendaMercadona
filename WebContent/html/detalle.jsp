<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/estilo.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js"></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detalles del producto</title>
</head>
<body>
	<header>

	<p id="enhorabuena">
		<img alt="logocuenta" width="80"
			src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">
		¡Enhorabuena
		<%=request.getAttribute("dato")%>! Ha entrado usted en su cuenta
	</p>

	</header>

	<section>

	<div class="text-center">

		<img alt="logo"
			src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">

	</div>

	</section>


	<h1 class="container mitienda text-center">
		Detalles del producto <br>
		<span class="glyphicon glyphicon-tasks"></span>
	</h1>
<br>

<%
ResultSet rs =(ResultSet) (request.getAttribute("detalleProd"));

if (rs.next()) {
%>


	<div class="container text-center">
		<div class="row">
			<p class="nombreproducto"><%= rs.getString("nombre") %></p>
		</div>
		
	
	
	</div>
<% 
}
%>


</body>
</html>