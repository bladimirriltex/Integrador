<%-- 
    
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>

<%@page import="DTO.Carta"%>
<%@page import="DAO.CartaDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>La Carta</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Todas las Cartas</h1>
                        <a class="btn btn-success btn-sm" href="ControladorPlato?accion=addplatos">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id Plato</th>
                                <th class="text-center">Fecha</th>
                                <th class="text-center">Entreda 1</th>
                                <th class="text-center">Entreda 2</th>
                                <th class="text-center">Entreda 3</th>
                                
                                <th class="text-center">Segundo 1</th>
                                <th class="text-center">Segundo 2</th>
                                <th class="text-center">Segundo 3</th>
                                
                                <th class="text-center">Extra 1</th>
                                <th class="text-center">Extra 2</th>
                                <th class="text-center">Extra 3</th>
                                
                                <th class="text-center">Acciones</th>
                            </tr>
                            <%
				CartaDAO dao = new CartaDAO();
                                List<Carta> list= dao.listar();
                                Iterator<Carta> iter= list.iterator();
                                Carta ca=null;
                                
                                while(iter.hasNext()){
                                    ca=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= ca.getId_carta() %></td>
                                <td class="text-center"><%= ca.getEntrada1() %></td>
                                <td class="text-center"><%= ca.getEntrada2() %></td>
                                <td class="text-center"><%= ca.getEntrada3() %></td>
                                
                                <td class="text-center"><%= ca.getSegundo1() %></td>
                                <td class="text-center"><%= ca.getSegundo2() %></td>
                                <td class="text-center"><%= ca.getSegundo3() %></td>
                                
                                <td class="text-center"><%= ca.getExtra1() %></td>
                                <td class="text-center"><%= ca.getExtra2() %></td>
                                <td class="text-center"><%= ca.getExtra3() %></td>
                                
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="ControladorCarta?accion=editarcartas&id=<%= ca.getId_carta() %>">Editar</a>
                                    <a class="btn btn-danger btn-sm" href="ControladorCarta?accion=eliminarcartas&id=<%= ca.getId_carta() %>">Eliminar</a>
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
