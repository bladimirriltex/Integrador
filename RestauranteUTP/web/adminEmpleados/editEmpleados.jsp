<%-- 
    Document   : editClientes
    Created on : 02/07/2020, 01:58:00 PM
    Author     : Gianpiero
--%>




<%@page import="DTO.Empleado"%>
<%@page import="DAO.EmpleadoDAO"%>
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
               EmpleadoDAO vdao=new EmpleadoDAO();
               int id=Integer.parseInt((String)request.getAttribute("id_empleado"));
               Empleado em = (Empleado)vdao.list(id);
           %>
           
            <h1>Modificar Empleado</h1>
            <form action="Controlador">
                Nombres:<br>
                <input class="form-control" type="text" value="<%= c.getNombres() %>" name="nombres"><br>
                Apellidos:<br>
                <input class="form-control" type="text" value="<%= c.getApellidos() %>" name="apellidos"><br>
                DNI:<br>
                <input class="form-control" type="text" value="<%= c.getDni()%>" name="dni"><br>
                Celular:<br>
                <input class="form-control" type="text" value="<%= c.getCelular() %>" name="celular"><br>
                Distrito:<br>
                <input class="form-control" type="text" value="<%= c.getId_distrito() %>" name="id_distrito"><br>
                Direccion:<br>
                <input class="form-control" type="text" value="<%= c.getDireccion() %>" name="direccion"><br>
                Correo:<br>
                <input class="form-control" type="text" value="<%= c.getCorreo() %>" name="correo"><br>
                Password:<br>
                <input class="form-control" type="text" value="<%= c.getPassword() %>" name="password"><br>
                
                
                
                
                
                <input type="hidden" value="<%= c.getId() %>" name="id"><br>
                
                
                
                
                <input class="btn btn-primary btn-sm" type="submit" name="accion" value="Actualizar Vehiculo"><br>
                <a href="ControladorVehiculo?accion=listarvehiculos">Regresar</a>
            </form>
        </div>
       </div>
    </body>
</html>
