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
        <title>Añadir Nuevo Cliente</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
            <h1>Agregar Cliente</h1>
            <form action="Controlador">
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
                
                <input class="btn btn-warning btn-sm" type="submit" name="accion" value="Agregar Cliente"><br>
                <a href="Controlador?accion=listarclientes">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
