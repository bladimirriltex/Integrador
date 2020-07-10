<%-- 
    Document   : verClientes
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>

<%@page import="DTO.Empleado"%>
<%@page import="DAO.EmpleadoDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Los Colaboradores</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Los Colaboradores</h1>
                        <a class="btn btn-success btn-sm" href="ControladorEmpleado?accion=addempleados">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id</th>
                                <th class="text-center">Nombres</th>
                                <th class="text-center">Apellidos</th>
                                <th class="text-center">Celular</th>
                                <th class="text-center">Distrito</th>
                                <th class="text-center">Direccion</th>
                                <th class="text-center">Correo</th>
                                
                                <th class="text-center">Ubicacion</th>
                                <th class="text-center">Estado</th>
                                <th class="text-center">Rol</th>
                                <th class="text-center">Vehiculo</th>
                                
                                
                                
                                <th class="text-center">Acciones</th>
                                
                                
                                
                            </tr>
                            <%
				EmpleadoDAO dao = new EmpleadoDAO();
                                List<Empleado> list= dao.listar();
                                Iterator<Empleado> iter= list.iterator();
                                Empleado em=null;
                                
                                while(iter.hasNext()){
                                    em=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= em.getId() %></td>
                                <td class="text-center"><%= em.getNombres()%></td>
                                <td class="text-center"><%= em.getApellidos()%></td>
                                <td class="text-center"><%= em.getCelular()%></td>
                                <td class="text-center"><%= em.getId_distrito()%></td>
                                <td class="text-center"><%= em.getDireccion()%></td>
                                <td class="text-center"><%= em.getCorreo()%></td>
                                
                                
                                <td class="text-center"><%= em.getUbicacion()%></td>
                                <td class="text-center"><%= em.getEstado()%></td>
                                <td class="text-center"><%= em.getId_rol()%></td>
                                <td class="text-center"><%= em.getId_vehi()%></td>
                                
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="ControladorEmpleado?accion=editarempleados&id=<%= em.getId_vehiculo() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="ControladorEmpleado?accion=eliminarempleados&id=<%= em.getId_vehiculo() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
