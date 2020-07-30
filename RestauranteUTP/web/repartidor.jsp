<%-- 
    Document   : repartidor
    Created on : 07/07/2020, 09:02:49 PM
    Author     : Edú
--%>

<%@page import="DTO.PedidoListos"%>
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
        
        <br><br><br><br>
        <h1>Repartidor<%= persona.getNombres()%> </h1>
        <h1>bienvenido</h1>
        
        
        <div class="container">
            <h1>Seleccione su Pedido</h1>

            <table class="table table-bordered bg-light">
                <tr>
                    <th class="text-center">Id Pedido</th>
                    <th class="text-center">Nombre del Cliente</th>
                    <th class="text-center">Apellidos del Cliente</th>
                    <th class="text-center">Direccion</th>
                    <th class="text-center">Total</th>
                    <th class="text-center">Tipo Pago</th>
                    <th class="text-center">Pedido</th>
                </tr>
                <%
                    PedidoDAO dao = new PedidoDAO();
                    List<PedidoListos> list = dao.ListarPedidosListos();
                    Iterator<PedidoListos> iter = list.iterator();
                    PedidoListos pedido = null;

                    while (iter.hasNext()) {
                        pedido = iter.next();
                        
                            
                %>

                <tr>

                    <td class="text-center"><%= pedido.getIdpedido()%></td>
                    <td class="text-center"><%= pedido.getNombrecliente()%></td>
                    <td class="text-center"><%= pedido.getApecliente()%></td>
                    <td class="text-center"><%= pedido.getDireccion()%></td>
                    <td class="text-center"><%= pedido.getTotal()%></td>
                    <td class="text-center"><%= pedido.getTipopago()%></td>
                    <td class="text-center"><%= pedido.getEstado()%></td>


                    <td>
                <center>
                    <a class="btn btn-success btn-sm" href="ControladorSeleccionarPedido?id=<%= pedido.getIdpedido()%>">Seleccionar Pedido</a>
                    
                </center>
                </td>
                </tr>
                <%
                   } 
                %>

            </table>
        </div>
        

        

    </body>
</html>
