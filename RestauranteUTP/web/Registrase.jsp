<%-- 
    Document   : Registrase
    Created on : 02/07/2020, 07:21:18 PM
    Author     : Edú
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body >
    <nav class="navbar navbar-expand-sm navbar-light bg-light px-5 pb-5">
      <a class="navbar-brand" href="#">RestauranteUtp</a>
      <a class="navbar-brand" href="#">ICON</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav  ml-auto text-dark ">
          <a class="nav-item nav-link" href="#">Inicio</a>
          <a class="nav-item nav-link" href="#">Menu del dia</a>
          <a class="nav-item nav-link" href="#">Nosotros</a>
          <a class="  btn btn-outline-secondary px-2" href="#" >Iniciar Sesión</a>
          <a class="  btn btn-outline-secondary" href="#" >Registrarse</a>
        </div>
      </div>
    </nav>
    <!-- Registrase -->

    <div class="container bg-light mt-5 mb-5" style="width: 60%;">
      <form >

        <div class="card" >
          <div class="card-header text-center">
            Iniciar Sesión
          </div>
          <div class="card-body">

            <div class="form-row">

              <div class="col-md-6 mb-3 mt-3">
                <label for="email">Correo Electronico (Este sera tu usuario)</label>
                <input type="email" class="form-control is-valid" id="email" placeholder="nombre@gmail" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div> 

            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control is-valid" id="password"  required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="password">Repita la contraseña</label>
                <input type="password" class="form-control is-valid" id="password" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="nombre">Nombres</label>
                <input type="text" class="form-control is-valid" id="nombre"  required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="apellidos">Apellidos</label>
                <input type="text" class="form-control is-valid" id="apellidos" required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div>

            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="direccion">Direccion</label>
                <input type="text" class="form-control is-valid" id="direccion"  required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="distrito">Distrito</label>
                <select class="custom-select">
                  <option selected>Open this select menu</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div>

            <div class="form-row">

              <div class="col-md-6 mb-3">
                <label for="distrito">Tipo de Documento</label>
                <select class="custom-select">
                  <option selected>Selecciona</option>
                  <option value="1">One</option>
                  <option value="2">Two</option>
                  <option value="3">Three</option>
                </select>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="direccion">Nro. de Identificacion</label>
                <input type="text" class="form-control is-valid" id="direccion"  required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div>

            <div class="form-row">


              <div class="col-md-6 mb-3">
                <label for="celular">Celular</label>
                <input type="num" class="form-control is-valid" id="celular"  required>
                <div class="valid-feedback">
                  Looks good!
                </div>
              </div>
            </div>




            <div class="container mb-5">
              <div class="row">
                <button class="btn btn-primary col-md-4 ml-5" type="submit">Resgistrar</button>
                <button class="btn btn-primary col-md-4 ml-auto mr-5" type="reset">Cancelar</button>
              </div>
            </div>




          </div>

        </div>
      </div>

    </form>
  </div>



  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
