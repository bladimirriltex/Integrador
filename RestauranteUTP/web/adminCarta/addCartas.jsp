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
        <title>Añadir Nueva Carta</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-8">
            <h1>Agregar Carta</h1>
            <form action="ControladorPlato">
                Fecha:<br>
                <input class="form-control" type="text" name="fecha_carta"><br>
                Entrada 1:<br>
                <input class="form-control" type="text" name="entrada1"><br>
                Entrada 2:<br>
                <input class="form-control" type="text" name="entrada2"><br>
                Entrada 3:<br>
                <input class="form-control" type="text" name="entrada3"><br>
                
                
                Segundo 1:<br>
                <input class="form-control" type="text" name="segundo1"><br>
                Segundo 2:<br>
                <input class="form-control" type="text" name="segundo2"><br>
                Segundo 3:<br>
                <input class="form-control" type="text" name="segundo3"><br>
                
                Extra 1:<br>
                <input class="form-control" type="text" name="extra1"><br>
                Extra 2:<br>
                <input class="form-control" type="text" name="extra2"><br>
                Extra 3:<br>
                <input class="form-control" type="text" name="extra3"><br>
                
                <input class="btn btn-warning btn-sm" type="submit" name="accion" value="Agregar Carta"><br>
                <a href="ControladorCarta?accion=listarcartas">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
