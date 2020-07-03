<%-- 
    Document   : Metodopago
    Created on : 02/07/2020, 10:25:19 PM
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

    <!-- Cuenta -->

    <div class="container mt-5">
      <div class="card" style="width: 70%; margin: 0px auto;">
        <div class="card-body">
          <div id="accordion">
            <div class="card">
              <div class="card-header" id="headingOne">
                <h5 class="mb-0">
                  <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Pago Online
                  </button>
                </h5>
              </div>

              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                  <form action="" >
                    <div class="form-row text-center">
                     <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="visa" name="customRadioInline1" class="custom-control-input">
                      <label class="custom-control-label" for="visa">visa</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="mastercard" name="customRadioInline1" class="custom-control-input">
                      <label class="custom-control-label" for="mastercard">MasterCard</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="american" name="customRadioInline1" class="custom-control-input">
                      <label class="custom-control-label" for="american">American</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline">
                      <input type="radio" id="dinners" name="customRadioInline1" class="custom-control-input">
                      <label class="custom-control-label" for="dinners">Dinners</label>
                    </div>



                  </div>
                  <br>
                  <br>
                  <div class="container">
                    <label for="nombretitular">Nombre del titular:</label>
                    <input type="text" class="form-control col-md-6 is-valid" id="nombretitular"  required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>


                    <label for="nrotarjeta">Numero de la tarjeta</label>
                    <input type="num" class="form-control col-md-6 is-valid" id="nrotarjeta"  required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>

                    <label for="cvv">CVV:</label>
                    <input type="text" class="form-control col-md-2 is-valid" id="cvv"  required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>

                    <label for="fechavec">Fecha de Vencimiento:</label>
                    <input type="date" class="form-control col-md-4 is-valid" id="fechavec"  required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>

                    <center>
                      <a href="" class="mb-5 mr-5 btn btn-outline-success">Pagar</a>

                      <a href="" class="mb-5 btn btn-outline-success">Volver</a>
                    </center>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="card">
          <div class="card-header" id="headingThree">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Pago en Efectivo
              </button>
            </h5>
          </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
            <div class="card-body">
             <form action="">
               <div class="custom-control custom-radio custom-control-inline">
                <input type="radio" id="efectivo" name="customRadioInline1" class="custom-control-input">
                <label class="custom-control-label" for="efectivo">Efectivo</label>
              </div>
              <center>
                <a href="" class="mb-5 mr-5 btn btn-outline-success">Pagar</a>

                <a href="" class="mb-5 btn btn-outline-success">Volver</a>
              </center>
            </form>
          </div>
        </div>
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
