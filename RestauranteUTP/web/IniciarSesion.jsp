<%-- 
    Document   : IniciarSesion
    Created on : 02/07/2020, 06:15:55 PM
    Author     : Edú
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@include file="header.jsp" %>
        <!-- Bootstrap CSS -->
        <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        -->
        <script src="https://use.fontawesome.com/2c187d074c.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>Iniciar Sesion</title>
    </head>
    <body >
        
        <!-- Inicio sesion -->
        <div class="cont">
            <div class="head">
                <h2>Iniciar Sesion</h2>
            </div>
            <form action="ControladorSesion" method="POST" id="forminicio" class="formsesion" >
                
                <div class="formcontrol">
                    <label for="email">E-mail</label>
                    <input type="text" placeholder="abc@gmail.com" id="email">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                    <small>	Error message</small> 
                </div>
                
                
                <div class="formcontrol">
                    <label for="password">Contraseña</label>
                    <input type="text" placeholder="" id="password">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                    <small>	Error message</small> 
                </div>
                <input type="submit" class="btn-send" id="btnsend"  onsubmit="validarIniciosesion();" value="Iniciar Sesion">
            </form>
        </div>
        <!-- Optional JavaScript -->
        <script  src="js/validacion.js"></script>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>  
</html>
