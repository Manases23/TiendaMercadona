<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
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
<title>Mi tienda</title>
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
		Mi tienda <br>
		<span class="glyphicon glyphicon-home"></span>
	</h1>
	
	<div class="container">
	<div class="row text-center">
	

	<%
	ResultSet rs =(ResultSet) (request.getAttribute("listadoProd"));
	
	while(rs.next()){
		int id = rs.getInt("id");
	%>
	<div class="col-sm-4 elemento">	
		<p class="nombreproducto"><%= rs.getString("nombre") %></p>
		<p class="precioproducto"><%= rs.getString("precio") %> euros/kg</p>
		
		<a href="detalleController?id=<%=id%>"><img class="col-sm-12" src="img/<%=rs.getString("imagen")%>"></a>
	</div>
	<%
	}
	%>

	</div>
	
	</div>


	<footer class="text-center"> 
	<br>
	<br>
	<br>
	Mercadona, S.L. Marca Registrada ® <br>
	<br>
	<br>
	<br>

	</footer>
</body>
</html>