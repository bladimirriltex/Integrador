<%-- 
    Document   : IniciarSesion
    Created on : 02/07/2020, 06:15:55 PM
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

    <title>Iniciar Sesion</title>
  </head>
  <body >
    
    <!-- Inicio sesion -->
    <center><div class="container mt-5">
      <div class="card" style="max-width: 40rem;">
        <div class="card-header text-center">
          Iniciar Sesión
        </div>
        <div class="card-body">
          <div class="container" style="max-width: 30rem;" >
            <form >
              <div class="form-row" >

                <label for="email">Correo Electronico</label>
                <input type="email" class="form-control is-valid" id="email" value="Mark" required>
                <div class="valid-feedback">
                  Looks good!
                </div>


                <label for="password">Contraseña</label>
                <input type="password" class="form-control is-valid" id="password"  required>
                <div class="valid-feedback">
                  Looks good!!
                </div>

              </div>

              <button class="btn btn-primary my-3 btn btn-block btn btn-center " type="submit">Inicar sesion</button>
              <hr>

              <a  href="#" class="btn btn-primary my-3 btn btn-block btn btn-center ">Registrase</a>


            </form>
          </div>

        </div>
      </div>
    </div>
  </center>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>  
</html>
