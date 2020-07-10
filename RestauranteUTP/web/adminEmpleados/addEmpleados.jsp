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
        <title>Añadir Nuevo Empleado</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
            <h1>Agregar Empleado</h1>
            <form action="ControladorEmpleado">
                Nombres:<br>
                <input class="form-control" type="text" name="nombres"><br>
                Apellidos:<br>
                <input class="form-control" type="text" name="apellidos"><br>
                DNI:<br>
                <input class="form-control" type="text" name="dni"><br>
                Celular:<br>
                <input class="form-control" type="text" name="celular"><br>
                Distrito:<br>
                <input class="form-control" type="text" name="id_distrito"><br>
                Direccion:<br>
                <input class="form-control" type="text" name="direccion"><br>
                Correo:<br>
                <input class="form-control" type="text" name="correo"><br>
                Password:<br>
                <input class="form-control" type="text" name="password"><br>
                
                
                Ubicacion:<br>
                <input class="form-control" type="text" name="ubicacion_empleado"><br>
                Estado:<br>
                <input class="form-control" type="text" name="estado_empleado"><br>
                Rol:<br>
                <input class="form-control" type="text" name="id_rol"><br>
                Vehiculo:<br>
                <input class="form-control" type="text" name="id_vehiculo"><br>
                
                
                
                <input class="btn btn-warning btn-sm" type="submit" name="accion" value="Agregar Empleado"><br>
                <a href="ControladorEmpleado?accion=listarempleados">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
