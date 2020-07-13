<%-- 
    Document   : Menudia
    Created on : 02/07/2020, 07:54:19 PM
    Author     : Edú
--%>

<%@page import="DAO.PlatoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Plato"%>
<%@page import="java.util.List"%>
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
        <%  List<Plato> listplato=new ArrayList<Plato>();
        
        PlatoDAO dAO=new PlatoDAO();

        listplato=dAO.listar();
        
       
            
        %>
        
        <!-- Menu del dia o carta del dia -->
        <!-- img 286 x 214.49 -->
        <div class="container text-center pt-5 mt-5">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active text-dark" id="nav-home-tab" data-toggle="tab" href="#nav-entradas" role="tab" aria-controls="nav-entradas" aria-selected="true">Entradas</a>
                    <a class="nav-item nav-link text-dark" id="nav-profile-tab" data-toggle="tab" href="#nav-segundos" role="tab" aria-controls="nav-segundos" aria-selected="false">Segundos</a>
                    <a class="nav-item nav-link text-dark" id="nav-contact-tab" data-toggle="tab" href="#nav-extras" role="tab" aria-controls="nav-extras" aria-selected="false">Extras</a>
                </div>
            </nav>
            <div class="tab-content bg-light" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-entradas" role="tabpanel" aria-labelledby="nav-entradas-tab">
                    <div class="card-body">
                        <div class="form-row">
                            <% 
                            for (Plato plato : listplato) {
                                    if (plato.getId_tipo()==1 && plato.isCarta()==true) {%>
                                    
                            <div class="col-md-4 mb-3 mr-auto">
                                <form action="ControladorCarrito" method="post">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="<%= plato.getImagen()%>" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title"><%= plato.getNombre_plato()%></h5>
                    
                                        <p class="card-text">Descripcion del plato.</p>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Precio del palto: S/. <%= plato.getPrecio_plato()%> </li>
                                        <li class="list-group-item">Stock: <%= plato.getStock()%></li>
                                        <input type="hidden" name="idplato" value="<%= plato.getId_plato()%>">
                                        <li class="list-group-item"><input type="text" name="cantidad" value="1"></li>
                                    </ul>
                                        
                                            <div class="card-body">
                                                <button type="submit" class="btn btn-outline-danger">Seleccionar</button>

                                            </div>
                                        
                                </div>
                                </form>
                            </div>
                                               
                        <%                }
                                }
                        
                        %>
                        
                    </div>   
                </div>      
                    
                </div>
                <div class="tab-pane fade" id="nav-segundos" role="tabpanel" aria-labelledby="nav-segundos-tab">
                    <div class="card-body">
                        <div class="form-row">
                            <% 
                            for (Plato plato : listplato) {
                                    if (plato.getId_tipo()==2 && plato.isCarta()==true) {%>
                                    
                            <div class="col-md-4 mb-3 mr-auto">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="<%= plato.getImagen()%>" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title"><%= plato.getNombre_plato()%></h5>
                                        <p class="card-text">Descripcion del plato.</p>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Precio del palto: S/. <%= plato.getPrecio_plato()%> </li>
                                        <li class="list-group-item">Stock: <%= plato.getStock()%></li>
                                        
                                    </ul>
                                    <div class="card-body">
                                        <a href="#" class="btn btn-outline-danger">Seleccionar</a>
                                        
                                    </div>
                                </div>
                            </div>
                                               
                        <%                }
                                }
                        
                        %>
                            
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-extras" role="tabpanel" aria-labelledby="nav-extras-tab">
                    <div class="card-body">
                        <div class="form-row">
                            <% 
                            for (Plato plato : listplato) {
                                    if (plato.getId_tipo()==3 && plato.isCarta()==true) {%>
                                    
                            <div class="col-md-4 mb-3 mr-auto">
                                <div class="card" style="width: 18rem;">
                                    <img class="card-img-top" src="<%= plato.getImagen()%>" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title"><%= plato.getNombre_plato()%></h5>
                                        <p class="card-text">Descripcion del plato.</p>
                                    </div>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Precio del palto: S/. <%= plato.getPrecio_plato()%> </li>
                                        <li class="list-group-item">Stock: <%= plato.getStock()%></li>
                                        
                                    </ul>
                                    <div class="card-body">
                                        <a href="#" class="btn btn-outline-danger">Seleccionar</a>
                                        
                                    </div>
                                </div>
                            </div>
                                               
                        <%                }
                                }
                        
                        %>
                            
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
    </body>
</html>
