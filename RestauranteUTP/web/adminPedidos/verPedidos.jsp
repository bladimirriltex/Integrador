<%-- 
    Document   : verPedidos
    Created on : 30/07/2020, 02:57:42 PM
    Author     : BaiaBaia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header_admin.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Los Pedidos</title>
    </head>
    <body>
        <div class="container">
                        <h1>Los Pedidos</h1>
                        <a class="btn btn-success btn-sm" href="ControladorPlato?accion=addplatos">Agregar Nuevo</a>
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
                                
                                <td class="text-center"><img src="<%= pl.getImagen() %>" width="100" height="100" ></td>
                                <td class="text-center"><%= pl.getStock() %></td>
                                <td class="text-center"><%= pl.getId_tipo() %></td>
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="ControladorPlato?accion=editarplatos&id=<%= pl.getId_plato() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="ControladorPlato?accion=eliminarplatos&id=<%= pl.getId_plato() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
    </body>
</html>
