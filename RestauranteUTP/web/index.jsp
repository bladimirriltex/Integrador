<%-- 
    Document   : index
    Created on : 02/07/2020, 02:00:21 PM
    Author     : Gianpiero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Administrador</title>
    </head>
    <body>
        <div class="container text-center" >
        
            <div><h1>Bienvenido Administrador</h1></div>
        
            <div>
                <div><h2>¿Que deseas hacer?</h2></div>
                <a class="btn btn-success btn-lg" href="Controlador?accion=listarclientes">Listar Clientes</a>
                <a class="btn btn-success btn-lg" href="ControladorPlato?accion=listarplatos">Listar Platos</a>
                <a class="btn btn-success btn-lg" href="ControladorVehiculo?accion=listarvehiculos">Listar Vehiculos</a>
                <a class="btn btn-success btn-lg" href="ControladorEmpleado?accion=listarempleados">Listar Empleados</a>
                <a class="btn btn-success btn-lg" href="ControladorCarta?accion=listarcartas">Listar Cartas</a>
            </div>
            <div><h2>Resumen del dia</h2></div>
                <a class="btn btn-success btn-lg" href="">Entradas</a>
                <a class="btn btn-success btn-lg" href="">Segundos</a>
                <a class="btn btn-success btn-lg" href="">Extras</a>
            
    </div>
        
    </body>
</html>
