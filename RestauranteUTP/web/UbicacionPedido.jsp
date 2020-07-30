<%-- 
    Document   : UbicacionPedido
    Created on : 28/07/2020, 03:19:30 PM
    Author     : EDU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp" %>
        <title>JSP Page</title>
    </head>
    <body><br><br><br>
        <button class="btn btn-danger mb-5" onclick="findMe()">Mostrar ubicación</button>

        <div id="map" style="width: 500px; height: 500px;"></div>

        <form method="get" action="Metodopago.jsp">
            <input class="lat" id="lat" name="lat" type="text" value="vacio">
            <input class="lng" id="lng" name="lng" type="text" value="vacio">
            <button type="submit" class="btn btn-success mb-5">Registrar y Pagar Pedido</button>
        </form>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2bEqMJPvnDcN1790J1w7csNq2Rgu0Ves"></script>
        <script src="js/UbicacionCliente.js" type="text/javascript"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </body>
</html>
