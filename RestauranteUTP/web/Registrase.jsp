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
        <%@include file="header.jsp" %>
        
        <script src="https://use.fontawesome.com/2c187d074c.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <title>Hello, world!</title>
    </head>
    <body >
        
        <div class="cont mb-5" style="width: 60%;">
            <div class="head">
                <h2>Crear cuenta</h2>
            </div>
            <form action="ControladorRegistro" method="post" class="formsesion">
                <div class="formcontrol">
                    <label for="email">Correo Electronico (Este sera tu usuario)</label>
                    <input type="text" placeholder="abc@gmail.com" id="email" name="email">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                    <small>	Error message</small> 
                </div>
                
                <div class="form-row">
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="password">Contraseña</label>
                            <input type="text" placeholder="" id="password" name="password">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                    
                    
                    <div class="col-md-6">
                        <div class="formcontrol ">
                            <label for="password2">Repetir contraseña</label>
                            <input type="text" placeholder="" id="password2">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                </div> 
                
                <div class="form-row">
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="nombre">Nombres</label>
                            <input type="text"  id="nombre" name="nombres">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                    
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="apellidos">Apellidos</label>
                            <input type="text"  id="apellidos" name="apellidos">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                </div> 
                
                
                <div class="form-row">
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="distrito">Distrito</label>
                            <!--<input type="text"  id="distrito" name="distrito">-->
                            <select class="select" id="distrito" name="distrito">
                                <option value="">Seleccione su distrito</option>
                                <option value="1">Arequipa</option>
                                <option value="2">Alto Selva Alegre</option>
                                <option value="3">Cayma</option>
                                <option value="4">Cerro Colorado</option>
                                <option value="5">Characato</option>
                                <option value="6">Chiguata</option>
                                <option value="7">Jacobo Hunter</option>
                                <option value="8">José Bustamante</option>
                                <option value="9">Mariano Melgar</option>
                                <option value="10">Miraflores</option>
                                <option value="11">Mollebaya</option>
                                <option value="12">Paucarpata</option>
                                <option value="13">Quequeña</option>
                                <option value="14">Sabandía</option>
                                <option value="15">Sachaca</option>
                                <option value="16">Socabaya</option>
                                <option value="17">Tiabaya</option>
                                <option value="18">Uchumayo</option>
                                <option value="19">Yanahuara</option>
                                <option value="20">Yarabamba</option>
                                <option value="21">Yura</option>
                            </select>
                            
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                    
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="direccion">Direccion</label>
                            <input type="text"  id="direccion" name="direccion">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                </div> 
                
                
                <div class="form-row">
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="tipodoc">Tipo de documento</label>
                            <select class="select" id="tipodoc" name="tipodoc">
                                <option value="">Seleccione tipo de documento</option>
                                <option value="1">DNI</option>
                                <option value="2">Carnet extranjeria</option>
                                <option value="3">Pasaporte</option>
                            </select>
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                    
                    
                    <div class="col-md-6">
                        <div class="formcontrol">
                            <label for="nrodoc">Nro. del documento</label>
                            <input type="text"  id="nrodoc" maxlength="8" name="nrodoc">
                            <i class="fa fa-check-circle" aria-hidden="true"></i>
                            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                            <small>	Error message</small> 
                        </div>
                    </div>
                </div> 
                
                
                <div class="formcontrol">
                    <label for="celular">Nro. de Celular</label>
                    <input type="text"  id="celular" name="nrocel">
                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                    <i class="fa fa-exclamation-circle" aria-hidden="true"></i> 
                    <small>	Error message</small> 
                </div>
                
                <button type="button" class="btn-send" id="btnsend" onclick="registrar()">Enviar</button>
                
            </form>
        </div>
        
        
        
        
        
        
        
        <!-- Registrase 
        
        <div class="container bg-light mt-5 mb-5" style="width: 60%;">
            <form >
                
                <div class="card" >
                    <div class="card-header text-center">
                        Iniciar Sesión
                    </div>
                    <div class="card-body">
                        
                        <div class="form-row">
                            
                            <div class="col-md-6 mb-3 mt-3">
                                
                            </div>
                        </div> 
                        
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="password">Contraseña</label>
                                <input type="password" class="form-control " id="password"  required>
                                
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="password">Repita la contraseña</label>
                                <input type="password" class="form-control " id="password" required>
                                
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="nombre">Nombres</label>
                                <input type="text" class="form-control " id="nombre"  required>
                                
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" class="form-control " id="apellidos" required>
                                
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="direccion">Direccion</label>
                                <input type="text" class="form-control " id="direccion"  required>
                                
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="distrito">Distrito</label>
                                <select class="custom-select">
                                    <option selected>Seleccione su distrito</option>
                                    <option value="1">One</option>
                                    <option value="2">Two</option>
                                    <option value="3">Three</option>
                                </select>
                                
                            </div>
                        </div>
                        
                        <div class="form-row">
                            
                            <div class="col-md-6 mb-3">
                                <label for="distrito">Tipo de Documento</label>
                                <select class="custom-select">
                                    <option selected>Selecciona</option>
                                    <option value="1">DNI</option>
                                    <option value="2">Carnet de Extranjeria</option>
                                    <option value="3">Pasaporte</option>
                                </select>
                                
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="direccion">Nro. de Identificacion</label>
                                <input type="text" class="form-control" id="direccion"  required>
                                
                            </div>
                        </div>
                        
                        <div class="form-row">
                            
                            
                            <div class="col-md-6 mb-3">
                                <label for="celular">Celular</label>
                                <input type="num" class="form-control is-valid" id="celular"  required>
                                
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
        -->
        
        
        <!-- Optional JavaScript --> 
        <script src="js/validacion.js" type="text/javascript"></script>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
