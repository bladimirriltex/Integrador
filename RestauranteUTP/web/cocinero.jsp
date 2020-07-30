<%-- 
    Document   : cocinero
    Created on : 07/07/2020, 09:02:40 PM
    Author     : Edú
--%>


<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="DTO.ListaPedido"%>
<%@page import="DAO.PedidoDAO"%>
<%@page import="DTO.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            HttpSession user = request.getSession(true);
            Persona persona = (Persona) user.getAttribute("usuario");
            String nombre = "";
            if (persona != null) {
                nombre = persona.getNombres();
            }
            HttpSession sesion = request.getSession(true);
            sesion = (HttpSession) sesion.getAttribute("sesion");
            if (sesion == null) {
                request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
            }


        %>
        
        
        <h1>cocinero:<%= persona.getNombres()%></h1>
        <h1>bienvenido</h1>


        <div class="container">
            <h1>Pedidos a Preparar</h1>

            <table class="table table-bordered bg-light">
                <tr>
                    <th class="text-center">Id Pedido</th>
                    <th class="text-center">Nombre del Plato</th>
                    <th class="text-center">Cantidad</th>
                    <th class="text-center">Estado Pedido</th>
                    <th class="text-center">Opciones</th>
                </tr>
                <%
                    PedidoDAO dao = new PedidoDAO();
                    List<ListaPedido> list = dao.ListarPedidos();
                    Iterator<ListaPedido> iter = list.iterator();
                    ListaPedido pedido = null;

                    while (iter.hasNext()) {
                        pedido = iter.next();
                        if(!pedido.getEstadopedido().equals("Listo")){
                            
                %>

                <tr>

                    <td class="text-center"><%= pedido.getIdpedido()%></td>
                    <td class="text-center"><%= pedido.getNomplato()%></td>
                    <td class="text-center"><%= pedido.getCant()%></td>
                    <td class="text-center"><%= pedido.getEstadopedido()%></td>


                    <td>
                <center>
                    <% if(pedido.getEstadopedido().equals("en cola")){
                %>
                    <a class="btn btn-warning btn-sm" href="ControladorEstadoPedido?accion=Preparando&id=<%= pedido.getIdpedido()%>">Preparar</a>
                    <% } else if(pedido.getEstadopedido().equals("Preparando")){
                %>
                    <a class="btn btn-success btn-sm" href="ControladorEstadoPedido?accion=Listo&id=<%= pedido.getIdpedido()%>">Pedido Listo</a>
                    <% }
                    %>
                </center>
                </td>
                </tr>
                <%
                    }
            }       
                %>

            </table>
        </div>
    </body>
</html>
