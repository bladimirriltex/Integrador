<%-- 
    Document   : verClientes
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>
<%@page import="DAO.VehiculoDAO"%>
<%@page import="DTO.Vehiculo"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header_admin.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Los Vehiculos</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Los Vehiculos</h1>
                        <a class="btn btn-success btn-sm" href="ControladorVehiculo?accion=addvehiculos">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id Vehiculo</th>
                                <th class="text-center">Placa</th>
                                <th class="text-center">Tipo</th>
                                <th class="text-center">soat</th>
                                
                                
                                <th class="text-center">Acciones</th>
                            </tr>
                            <%
				VehiculoDAO dao = new VehiculoDAO();
                                List<Vehiculo> list= dao.listar();
                                Iterator<Vehiculo> iter= list.iterator();
                                Vehiculo v=null;
                                
                                while(iter.hasNext()){
                                    v=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= v.getId_vehiculo() %></td>
                                <td class="text-center"><%= v.getPlaca() %></td>
                                <td class="text-center"><%= v.getTipo() %></td>
                                <td class="text-center"><%= v.getSoat() %></td>
                                
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="ControladorVehiculo?accion=editarvehiculos&id=<%= v.getId_vehiculo() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="ControladorVehiculo?accion=eliminarvehiculos&id=<%= v.getId_vehiculo() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
