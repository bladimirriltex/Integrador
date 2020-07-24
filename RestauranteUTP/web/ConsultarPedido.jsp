<%-- 
    Document   : ConsultarPedido
    Created on : 23/07/2020, 09:26:04 PM
    Author     : EDU
--%>

<%@page import="DTO.InfoPedido"%>
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
  <body>
      <div class="cont mb-5" style="width: 60%;">
            <div class="head">
                <h2>Consultar informacion de pedido</h2>
            </div>
            <form action="ControladorConsultaPedido" method="post" class="formsesion">
                <h3>Seguimiento de tu pedido e informacion</h3>
                <ul>
                    <li>Conoce la ubicacion de tu pedido</li>
                    <li>Ingresa tu numero de DNI o numero de pedido en el siguiente campo y presiona consultar</li>
                </ul>
                <div class="formcontrol">
                    <label for="consulta">Ingrese su DNI</label>
                    <input type="text"  id="consulta" name="consulta">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                    <small>	Error message</small> 
                </div>

                <button type="submit" class="btn-send" id="btnsend">Consultar</button>
                
                <%
                InfoPedido info=(InfoPedido)request.getAttribute("infopedido");
                if (info!=null) {
                   
                    
             %>
                    <div class="container mt-5">
                            <div class="formcontrol">
                                <label for="nropedido">Nro. de pedido:</label>
                                <input type="text"  readonly id="nropedido" name="nropedido" value="<%= info.getIdpedido() %>">
                            </div>
                            <div class="formcontrol">
                                <label for="fecha">Fecha del pedido:</label>
                                <input type="text" readonly id="fecha" name="fecha" value="<%= info.getFecha()%>">
                            </div>
                            <div class="formcontrol">
                                <label for="estadopago">Estado de pago pedido:</label>
                                <input type="text"  readonly id="estado" name="estado" value="<%= info.getEstadopago()%>">
                            </div>
                            <div class="formcontrol">
                                <label for="repartidor">Nombre repartidor</label>
                                <input type="text" readonly id="repartidor" name="repartidor" value="<%= info.getNombrerepar()%>">
                            </div>
                            <div class="formcontrol">
                                <label for="estadopedido">Estado pedido</label>
                                <input type="text" readonly id="estadopedido" name="estadopedido" value="<%= info.getEstadopedido()%>">
                            </div>

                    </div>
                    
                <%
                }
                %>
            </form>
        </div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
