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
        <title>Editar Datos del Empleado</title>
    </head>
    <body>
       <div>
           <div class="col-lg-8">
           <%
               EmpleadoDAO vdao=new EmpleadoDAO();
               int id=Integer.parseInt((String)request.getAttribute("idempleado"));
               Empleado em = (Empleado)vdao.list(id);
           %>
           
            <h1>Modificar Empleado</h1>
            <form action="ControladorEmpleado">
                Nombres:<br>
                <input class="form-control" type="text" value="<%= em.getNombres() %>" name="nombres"><br>
                Apellidos:<br>
                <input class="form-control" type="text" value="<%= em.getApellidos() %>" name="apellidos"><br>
                DNI:<br>
                <input class="form-control" type="text" value="<%= em.getDni()%>" name="dni"><br>
                Celular:<br>
                <input class="form-control" type="text" value="<%= em.getCelular() %>" name="celular"><br>
                Distrito:<br>
                <input class="form-control" type="text" value="<%= em.getId_distrito() %>" name="id_distrito"><br>
                Direccion:<br>
                <input class="form-control" type="text" value="<%= em.getDireccion() %>" name="direccion"><br>
                Correo:<br>
                <input class="form-control" type="text" value="<%= em.getCorreo() %>" name="correo"><br>
                Password:<br>
                <input class="form-control" type="text" value="<%= em.getPassword() %>" name="password"><br>
                
                
                Ubicacion:<br>
                <input class="form-control" type="text" value="<%= em.getUbicacion() %>" name="ubicacion_empleado"><br>
                Estado:<br>
                <input class="form-control" type="text" value="<%= em.getEstado() %>" name="estado_empleado"><br>
                Rol:<br>
                <input class="form-control" type="text" value="<%= em.getId_rol() %>" name="id_rol"><br>
                Vehiculo:<br>
                <input class="form-control" type="text" value="<%= em.getId_vehi() %>" name="id_vehiculo"><br>
                
                
                
                
                <input type="hidden" value="<%= em.getId() %>" name="id"><br>
                
                
                
                
                <input class="btn btn-primary btn-sm" type="submit" name="accion" value="Actualizar Empleado"><br>
                <a href="ControladorEmpleado?accion=listarempleados">Regresar</a>
            </form>
        </div>
       </div>
    </body>
</html>
