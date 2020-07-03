<%-- 
    Document   : verClientes
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>
<%@page import="java.util.Iterator"%>
<%@page import="DAO.ClienteDAO"%>
<%@page import="DTO.Cliente"%>
<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Tus Clientes</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Tus Clientes</h1>
                        <a class="btn btn-success btn-sm" href="Controlador?accion=addclientes">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id</th>
                                <th class="text-center">Nombres</th>
                                <th class="text-center">Apellidos</th>
                                <th class="text-center">Celular</th>
                                <th class="text-center">Distrito</th>
                                <th class="text-center">Direccion</th>
                                <th class="text-center">Correo</th>
                                <th class="text-center">Acciones</th>
                            </tr>
                            <%
				ClienteDAO dao = new ClienteDAO();
                                List<Cliente> list= dao.listar();
                                Iterator<Cliente> iter= list.iterator();
                                Cliente c=null;
                                
                                while(iter.hasNext()){
                                    c=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= c.getId() %></td>
                                <td class="text-center"><%= c.getNombres()%></td>
                                <td class="text-center"><%= c.getApellidos()%></td>
                                <td class="text-center"><%= c.getCelular()%></td>
                                <td class="text-center"><%= c.getId_distrito()%></td>
                                <td class="text-center"><%= c.getDireccion()%></td>
                                <td class="text-center"><%= c.getCorreo()%></td>
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="Controlador?accion=editarclientes&id=<%= c.getId() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="Controlador?accion=eliminarclientes&id=<%= c.getId() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
