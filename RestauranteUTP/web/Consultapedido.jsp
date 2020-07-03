<%-- 
    Document   : Consultapedido
    Created on : 02/07/2020, 10:52:18 PM
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        
        <title>Hello, world!</title>
    </head>
    <body >
        
        
        <!-- Cuenta -->
        
        <div class="container bg-secondary mt-5">
            <div class="card" style="width: 70%; margin: 0px auto;">
                <div class="car-header">
                    <h3 class="text-center">Seguimiento de tu pedido e informacion</h3>
                </div>
                <div class="card-body">
                    <ul>
                        <li>Conoce el estado de tu pedio en estado real</li>
                        <li>Ingresa el Nro. de DNI o numero de pedido en le siguiente campo y haz click en buscar (Ejemplo: 10001252)</li>
                    </ul>
                    
                    <div class="container">
                        <form class="form-inline">
                            <input class="form-control col-md-10 mr-sm-3" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                        </form>
                    </div>
                    
                    <div class="container mt-5">
                        <div class="card" style="width: 60%; margin: 0px auto;">
                            <div class="card-body">
                                <p>Numero del pedido: 1001215641</p>
                                <p>Fecha del pedido: 2020-19-06</p>
                                <p>Estado del pedido: En preparacion</p>
                                <p>Estado del pago del pedido: Pendiente</p>
                                <p>Nombre del repartidor: Jesus</p>
                            </div>
                        </div>
                        
                        
                    </div>
                    
                    
                    <div class="container mt-5">
                        <div class="card" style="width: 60%; height: 300px; margin: 0px auto;">
                            <div class="card-body bg-secondary" style="width: 60%; height: 260px; margin: 0px auto;">
                                
                            </div>
                            <span class="text-center">Ubicacion</span> 
                        </div>
                        
                        
                    </div>
                    
                </div>
            </div>
        </div> 
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
