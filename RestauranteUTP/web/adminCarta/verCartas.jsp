<%-- 
    
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>

<%@page import="DTO.encabezadoCarta"%>

<%@page import="DAO.CartaDAO"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header_admin.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>La Carta</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Todas las Cartas</h1>
                        <a class="btn btn-success btn-sm" href="ControladorCarta?accion=addcartas">Agregar Nuevo</a>
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id Plato</th>
                                <th class="text-center">Fecha</th>
                                
                                
                                <th class="text-center">Acciones</th>
                            </tr>
                            <%
				CartaDAO dao = new CartaDAO();
                                List<encabezadoCarta> list= dao.listar();
                                Iterator<encabezadoCarta> iter= list.iterator();
                                encabezadoCarta ca=null;
                                
                                while(iter.hasNext()){
                                    ca=iter.next();
                                
                            %>
                            
                                <tr>
                                
                                <td class="text-center"><%= ca.getId_carta() %></td>
                                <td class="text-center"><%= ca.getFecha_carta() %></td>
                                
                                
                                
                                <td>
                                    <a class="btn btn-warning btn-sm" href="ControladorCarta?accion=editarcartas&id=<%= ca.getId_carta() %>">Ver</a>
                                    
                                    
                                    
                                </td>
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
