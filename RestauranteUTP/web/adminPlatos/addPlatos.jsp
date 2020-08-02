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
        <title>Añadir Nuevo Plato</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
            <h1>Agregar PLato</h1>
            <form action="ControladorPlato">
                Nombre Plato:<br>
                <input class="form-control" type="text" name="nombre_plato"><br>
                Precio del PLato :<br>
                <input class="form-control" type="text" name="precio_plato"><br>
                Imagen:<br>
                <input accept="image/*" class="form-control" type="file" name="imagen"><br>
                Stock del producto:<br>
                <input class="form-control" type="text" name="stock"><br>
                Tipo de plato:<br>
                <input class="form-control" type="text" name="id_tipo"><br>
                
                
                <input class="btn btn-warning btn-sm" type="submit" name="accion" value="Agregar Plato"><br>
                <a href="ControladorPlato?accion=listarplatos">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
