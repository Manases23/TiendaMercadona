<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/estilo.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="js/miscript.js" ></script>


<title>Tienda Mercadona</title>
</head>

<body>

<header>

</header>

<section>


<div class = "text-center">

<img alt="logo" src="https://www.mercadona.es/imagenes/1415435237___esp/logomercavertical.gif">

</div>
<br><br><br>

<div class="container">
   <div class="row">
    <div class="col-md-6 col-md-offset-3">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">
              <form id="login-form" action="LoginController" method="post" role="form" style="display: block;">
                <h2>ENTRE EN SU CUENTA</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Contrase�a">
                  </div>
                  <div class="col-xs-6 form-group pull-left checkbox">
                    <input id="checkbox1" type="checkbox" name="remember">
                    <label for="checkbox1">Recuerda tu cuenta</label>   
                  </div>
                  <div class="col-xs-6 form-group pull-right">     
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Entrar">
                  </div>
              </form>
              <form id="register-form" action="LoginController" method="post" role="form" style="display: none;">
                <h2>REG�STRESE AQU�</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="1" class="form-control" placeholder="Contrase�a" value="">
                  </div>
                  <div class="form-group">
                    <input type="text" name="nombre" id="nombre" tabindex="2" class="form-control" placeholder="Nombre">
                  </div>
                  <div class="form-group">
                    <input type="number" name="edad" id="edad" tabindex="2" class="form-control" placeholder="Edad">
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Reg�strese ahora">
                      </div>
                    </div>
                  </div>
              </form>
            </div>
          </div>
        </div>
        <div class="panel-heading">
          <div class="row">
            <div class="col-xs-6 tabs">
              <a href="#" class="active" id="login-form-link"><div class="login">ENTRAR</div></a>
            </div>
            <div class="col-xs-6 tabs">
              <a href="#" id="register-form-link"><div class="register">REGISTRO</div></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


</section>

<footer class ="text-center">
<br><br><br>
	Mercadona, S.L. Marca Registrada  � 
	<br><br><br><br>
</footer>


</body>
</html>