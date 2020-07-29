<%-- 
    Document   : TrazarRuta
    Created on : 26/07/2020, 08:22:24 PM
    Author     : EDU
--%>

<%@page import="DTO.encabezadoPedido"%>
<%@page import="DAO.PedidoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        <script
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2bEqMJPvnDcN1790J1w7csNq2Rgu0Ves&callback=initMap&libraries=&v=weekly"
            defer
        ></script>
        <script src="js/ruta.js" type="text/javascript"></script>
        
    </head>
    <body>
        <%
            String id=String.valueOf(request.getAttribute("idpedido"));
            
            PedidoDAO pedidoDAO=new PedidoDAO();
            encabezadoPedido ubi=pedidoDAO.ubicacionPedido(id);
        %>
       
        <%= ubi.getLat() %>
        <%= ubi.getLng()%>
        <div id="map" ></div>
        <div id="right-panel">
            <div>
                <b>Inicio</b>
                <select id="start">
                    <option value="-16.393035, -71.538261">Tu posiscion</option>
                </select>
                <br />

                <b>Lugar de Entrega</b>
                <select id="end">

                    <option value="<%= ubi.getLat() %>, <%= ubi.getLng()%>">Cliente
                    </option>
                </select>
                <br />
                <input type="submit" id="submit"/>
            </div>
                    <a class="btn btn-warning btn-sm" href="ControladorEstadoPedido?accion=Entregado&id=<%= id %>">Entregado</a>        
        </div>

        
    </body>
</html>
