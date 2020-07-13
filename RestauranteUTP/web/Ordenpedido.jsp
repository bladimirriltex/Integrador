<%-- 
    Document   : Ordenpedido
    Created on : 02/07/2020, 09:23:55 PM
    Author     : Edú
--%>

<%@page import="DTO.Plato"%>
<%@page import="DAO.PlatoDAO"%>
<%@page import="DTO.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@include file="header.jsp" %>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body >
    <% 
        HttpSession sessioncarrito=request.getSession(true);
        ArrayList<Articulo> articulos= sessioncarrito.getAttribute("carrito")==null? null : (ArrayList)sessioncarrito.getAttribute("carrito");
        
    %>

    <!-- Cuenta -->

    <div class="container mt-5">
      <div class="card">
        <div class="card-body">
          <h3 class="text-center">Su orden de pedido</h3>
          <div class="container  bg-light">
            <h4>Lista de platillos</h4>

            <div class="container" style="width: 80%;" id="card-cont">
                <table class="table table-condensed" id="card-table">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">IMG</td>
                                    <td class="description">Descripcion</td>
                                    <td class="price">Precio</td>
                                    <td class="quantity">Cantidad</td>
                                    <td class="total">Total</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>



                                <%
                                    PlatoDAO platoBD=new PlatoDAO();
                                    Plato plato;
                                    double total=0;
                                    if (articulos!=null) {
                                    for (Articulo articulo : articulos) {
                                            plato=platoBD.list(articulo.getId_plato());
                                            total = total + articulo.getCantidad() * plato.getPrecio_plato();
                                %>                                         
                                <tr>
                            
                                    <td class="cart_product">
                                        <a href=""><img src="<%= plato.getImagen() %>" alt="" width="120"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href=""><%= plato.getNombre_plato() %></a></h4>
                                        <p id="codprocducto">Web ID: <%= plato.getId_plato()%></p>
                                    </td>
                                    <td class="cart_price">
                                        <p id="precioproducto">$<%= plato.getPrecio_plato()%></p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">

                                            <input class="cart_quantity_input" type="text" name="quantity" value="<%= articulo.getCantidad()%>" autocomplete="off" size="2" readonly>

                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$<%= Math.round(plato.getPrecio_plato()* articulo.getCantidad() * 100.0) / 100.0%></p> 
                                    </td>
                                    <td class="cart_delete">
                                        <span id="idarticulo" style="display: none"><%= plato.getId_plato()%></span>
                                        <a class="btn btn-outline-danger cart_quantity_delete" id="deleteitem"><i class="fa fa-times"></i>eliminar</a>
                                        
                                    </td>
                                </tr>
                                <%}
                               }
                               %>



                            </tbody>
                        </table>
                  <% if (articulos == null) {%>
                        <h4>No hay articulos en tu carrito</h4>
                        <%}%>

              <hr style="border: 2px solid #000">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col" colspan="2" class="text-center">Total</th>
                    <th >S/. <%= total %></th>
                    <th >    </th>
                    
                  </tr>
                </thead>

              </table>

              <center>
                <a href="" class="mb-5 btn btn-outline-success">Registrar pedido y pagar</a>
              </center>
            </div>


          </div>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="js/carrito.js" type="text/javascript"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
   
  </body>
</html>
