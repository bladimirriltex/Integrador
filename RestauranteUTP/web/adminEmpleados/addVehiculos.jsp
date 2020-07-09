<%-- 
    Document   : añadir
    Created on : 02/07/2020, 01:30:54 PM
    Author     : Gianpiero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Añadir Nuevo Vehiculo</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
            <h1>Agregar Vehiculo</h1>
            <form action="ControladorVehiculo">
                Placa:<br>
                <input class="form-control" type="text" name="placa"><br>
                Tipo:<br>
                <input class="form-control" type="text" name="tipo"><br>
                Soat:<br>
                <input class="form-control" type="text" name="soat"><br>
                
                
                
                <input class="btn btn-warning btn-sm" type="submit" name="accion" value="Agregar Vehiculo"><br>
                <a href="ControladorVehiculo?accion=listarvehiculos">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
