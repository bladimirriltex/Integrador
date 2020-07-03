<%-- 
    Document   : header
    Created on : 03/07/2020, 12:51:29 PM
    Author     : Edú
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav id="navegacion" class="navbar navbar-expand-sm navbar-light text-light px-5">
            <a class="navbar-brand text-white" href="#">RestauranteUtp</a>
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav  ml-auto  ">
                    <a class="nav-item nav-link mx-2 text-white" href="index.html">Inicio</a>
                    <a class="nav-item nav-link mx-2 text-white" href="Menudia.jsp">Menu del dia</a>
                    <a class="nav-item nav-link mx-2 text-white" href="Ordenpedido.jsp">Mi pedido</a>
                    <a class="btn btn-outline-light px-2" href="IniciarSesion.jsp" >Iniciar Sesión</a>
                    
                    <a class="  btn btn-outline-light mx-2" href="Registrase.jsp" >Registrarse</a>
                </div>
            </div>
        </nav>
    </body>
</html>
