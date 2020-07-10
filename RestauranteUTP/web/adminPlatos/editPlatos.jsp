<%-- 
    Document   : editClientes
    Created on : 02/07/2020, 01:58:00 PM
    Author     : Gianpiero
--%>



<%@page import="DTO.Plato"%>
<%@page import="DAO.PlatoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Editar Datos del Plato</title>
    </head>
    <body>
       <div>
           <div class="col-lg-8">
           <%
               PlatoDAO pldao=new PlatoDAO();
               int id_plato=Integer.parseInt((String)request.getAttribute("id_plato"));
               Plato pl = (Plato)pldao.list(id_plato);
           %>
           
            <h1>Modificar Plato</h1>
            <form action="ControladorPlato">
                Nombre plato:<br>
                <input class="form-control" type="text" value="<%= pl.getNombre_plato() %>" name="nombre_plato"><br>
                Precio del plato:<br>
                <input class="form-control" type="text" value="<%= pl.getPrecio_plato() %>" name="precio_plato"><br>
                Imagen:<br>
                <input class="form-control" type="text" value="<%= pl.getImagen() %>" name="imagen"><br>
                Stock:<br>
                <input class="form-control" type="text" value="<%= pl.getStock() %>" name="stock"><br>
                Tipo de plato:<br>
                <input class="form-control" type="text" value="<%= pl.getId_tipo() %>" name="id_tipo"><br>
                
                
                <input type="hidden" value="<%= pl.getId_plato() %>" name="id_plato"><br>
                
                
                <input class="btn btn-primary btn-sm" type="submit" name="accion" value="Actualizar Plato"><br>
                <a href="ControladorPlato?accion=listarplatos">Regresar</a>
            </form>
        </div>
       </div>
    </body>
</html>
