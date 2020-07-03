<%-- 
    Document   : verClientes
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>
<%@page import="DAO.PlatoDAO"%>
<%@page import="DTO.Plato"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Tus Platos</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Tus Platos</h1>
                        <a class="btn btn-success btn-sm" href="Controlador?accion=addclientes">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id Plato</th>
                                <th class="text-center">Nombre Plato</th>
                                <th class="text-center">Precio Plato</th>
                                <th class="text-center">Imagen</th>
                                <th class="text-center">Stock</th>
                                <th class="text-center">Id Tipo</th>
                                
                                <th class="text-center">Acciones</th>
                            </tr>
                            <%
				PlatoDAO dao = new PlatoDAO();
                                List<Plato> list= dao.listar();
                                Iterator<Plato> iter= list.iterator();
                                Plato pl=null;
                                
                                while(iter.hasNext()){
                                    pl=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= pl.getId_plato() %></td>
                                <td class="text-center"><%= pl.getNombre_plato() %></td>
                                <td class="text-center"><%= pl.getPrecio_plato() %></td>
                                <td class="text-center"><%= pl.getImagen() %></td>
                                <td class="text-center"><%= pl.getStock() %></td>
                                <td class="text-center"><%= pl.getId_tipo() %></td>
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="Controlador?accion=editarclientes&id=<%= pl.getId_plato() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="Controlador?accion=eliminarclientes&id=<%= pl.getId_plato() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
