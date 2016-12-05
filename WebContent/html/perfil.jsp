<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil de usuario</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/estilo.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js" ></script>

</head>

<body>

<header>

<p id="enhorabuena"> <img alt="logocuenta" width="80" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">  ¡Enhorabuena <%= request.getAttribute("dato") %>! Ha entrado usted en su cuenta </p>

</header>

<section>

<div class = "text-center">

<img alt="logo" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">

</div>

<br><br><br><br>



<div class="container">

    <br><br>
    

    
    <div class="row text-center" style="margin-bottom: 20px;">
    	
            <a href="productoController"><button class="btn btn-circle">Mi tienda <br><span class="glyphicon glyphicon-home"></span> </button></a>
            <button type="button" class="btn btn-circle" ;">Mi cesta <br><span class="glyphicon glyphicon-shopping-cart"></span></button>
            <a href="index.jsp"><button type="button" class="btn btn-circle" ;">Cerrar sesión <br><span class="glyphicon glyphicon-log-out"></span></button> </a>           
   		
    </div>
    
    
</div>

	

</section>


<footer class ="text-center">
<br><br><br>
	Mercadona, S.L. Marca Registrada  ® 
	<br><br><br><br>

</footer>

</body>
</html>