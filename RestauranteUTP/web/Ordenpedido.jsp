<%-- 
    Document   : Ordenpedido
    Created on : 02/07/2020, 09:23:55 PM
    Author     : Edú
--%>

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
    

    <!-- Cuenta -->

    <div class="container mt-5">
      <div class="card">
        <div class="card-body">
          <h3 class="text-center">Su orden de pedido</h3>
          <div class="container  bg-light">
            <h4>Lista de platillos</h4>

            <div class="container" style="width: 80%;">
              <table class="table table-hover">
                <thead>
                  <tr class="text-center">
                    <th scope="col">#</th>
                    <th scope="col" class="text-center">Menu</th>
                    <th scope="col">Precio</th>
                    <th scope="col" class="text-center">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="text-center">
                    <th scope="row">1</th>
                    <td>Caldo</td>
                    <td>S/. 2</td>
                    <td class="text-center"><a href="" class="btn btn-outline-danger btn-sm mr-2">Eliminar</a><a href="" class="btn btn-outline-warning btn-sm">Modificar</a></td>
                  </tr>

                  <tr class="text-center">
                    <th scope="row">2</th>
                    <td>Pollo frito</td>
                    <td>S/. 6</td>
                    <td class="text-center"><a href="" class="btn btn-outline-danger btn-sm mr-2">Eliminar</a><a href="" class="btn btn-outline-warning btn-sm">Modificar</a></td>
                  </tr>
                  <tr class="text-center">
                    <th scope="row">3</th>
                    <td>Ceviche</td>
                    <td>S/. 26</td>
                    <td class="text-center"><a href="" class="btn btn-outline-danger btn-sm mr-2">Eliminar</a><a href="" class="btn btn-outline-warning btn-sm">Modificar</a></td>
                  </tr>

                </tbody>
              </table>

              <hr style="border: 2px solid #000">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col" colspan="2" class="text-center">Total</th>
                    <th >S/. 34</th>
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
  </body>
</html>
