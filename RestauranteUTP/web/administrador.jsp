<%-- 
    Document   : administrador
    Created on : 07/07/2020, 10:46:37 PM
    Author     : Edú
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
        <h1>Bienvenido Administrador</h1>
        
        <div class="container text-center" >
            <h2>¿Que deseas hacer?</h2>
        <a class="btn btn-success btn-lg" href="Controlador?accion=listarclientes">Listar Clientes</a>
        <a class="btn btn-success btn-lg" href="ControladorPlato?accion=listarplatos">Listar Platos</a>
        <a class="btn btn-success btn-lg" href="ControladorVehiculo?accion=listarvehiculos">Listar Vehiculos</a>
        <a class="btn btn-success btn-lg" href="ControladorEmpleado?accion=listarempleados">Listar Empleados</a>
    </div>
    </body>
</html>