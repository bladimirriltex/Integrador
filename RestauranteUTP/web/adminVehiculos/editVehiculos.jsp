<%-- 
    Document   : editClientes
    Created on : 02/07/2020, 01:58:00 PM
    Author     : Gianpiero
--%>



<%@page import="DTO.Vehiculo"%>
<%@page import="DAO.VehiculoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Editar Datos del Vehiculo</title>
    </head>
    <body>
       <div>
           <div class="col-lg-8">
           <%
               VehiculoDAO vdao=new VehiculoDAO();
               int id_vehiculo=Integer.parseInt((String)request.getAttribute("id_vehiculo"));
               Vehiculo v = (Vehiculo)vdao.list(id_vehiculo);
           %>
           
            <h1>Modificar Vehiculo</h1>
            <form action="ControladorVehiculo">
                Placa:<br>
                <input class="form-control" type="text" value="<%= v.getPlaca() %>" name="placa"><br>
                Tipo:<br>
                <input class="form-control" type="text" value="<%= v.getTipo() %>" name="tipo"><br>
                Soat:<br>
                <input class="form-control" type="text" value="<%= v.getSoat() %>" name="soat"><br>
                
                
                
                <input type="hidden" value="<%= v.getId_vehiculo() %>" name="id_vehiculo"><br>
                
                
                <input class="btn btn-primary btn-sm" type="submit" name="accion" value="Actualizar Vehiculo"><br>
                <a href="ControladorVehiculo?accion=listarvehiculos">Regresar</a>
            </form>
        </div>
       </div>
    </body>
</html>
