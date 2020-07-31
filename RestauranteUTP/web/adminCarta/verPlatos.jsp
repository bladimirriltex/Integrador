<%-- 
    Document   : verClientes
    Created on : 24/06/2020, 05:39:04 PM
    Author     : Gianpiero
--%>
<%@page import="DAO.CartaDAO"%>
<%@page import="DAO.PlatoDAO"%>
<%@page import="DTO.Plato"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header_admin.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Tus Platos</title>
    </head>
    <body>
        
        
                
                    
                    <div class="container">
                        <h1>Tus Platos</h1>
                        
                        <table class="table table-bordered">
                            <tr>
                                <th class="text-center">Id Plato</th>
                                <th class="text-center">Nombre Plato</th>
                                <th class="text-center">Precio Plato</th>
                                <th class="text-center">Imagen</th>
                                <th class="text-center">Stock</th>
                                <th class="text-center">Id Tipo</th>
                                
                                
                            </tr>
                            <%
                                int id=Integer.parseInt((String)request.getAttribute("id_carta"));
				CartaDAO cartadao = new CartaDAO();
                                List<Plato> list= cartadao.getPlatosbyId_carta(id);
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
                                
                                
                                
                                </tr>
                                <%
                                }
                                %>
                        
                        </table>
                    </div>
                
            
    </body>
</html>
