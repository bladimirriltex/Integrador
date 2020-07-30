<%-- 
    
    Created on : 02/07/2020, 01:58:00 PM
    Author     : Gianpiero
--%>





<%@page import="DAO.CartaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Editar Datos de la Carta</title>
    </head>
    <body>
       <div>
           <div class="col-lg-8">
           <%
               CartaDAO cadao=new CartaDAO();
               int id_carta=Integer.parseInt((String)request.getAttribute("id_carta"));
               Carta ca = (Carta)cadao.list(id_carta);
           %>
           
            <h1>Modificar Plato</h1>
            <form action="ControladorPlato">
                Fecha_plato:<br>
                <input clas-s="form-control" type="text" value="<%= ca.getFecha_carta() %>" name="nombre_plato"><br>
                Entrada 1:<br>
                <input class="form-control" type="text" value="<%= ca.getEntrada1() %>" name="entrada1"><br>
                Entrada 2:<br>
                <input class="form-control" type="text" value="<%= ca.getEntrada2() %>" name="entrada2"><br>
                Entrada 3:<br>
                <input class="form-control" type="text" value="<%= ca.getEntrada3() %>" name="entrada3"><br>
                
                Segundo 1:<br>
                <input class="form-control" type="text" value="<%= ca.getSegundo1() %>" name="segundo1"><br>
                Segundo 2:<br>
                <input class="form-control" type="text" value="<%= ca.getSegundo2() %>" name="segundo2"><br>
                Segundo 3:<br>
                <input class="form-control" type="text" value="<%= ca.getSegundo3() %>" name="segundo3"><br>
                
                Extra 1:<br>
                <input class="form-control" type="text" value="<%= ca.getExtra1() %>" name="extra1"><br>
                Extra 2:<br>
                <input class="form-control" type="text" value="<%= ca.getExtra2() %>" name="extra2"><br>
                Extra 3:<br>
                <input class="form-control" type="text" value="<%= ca.getExtra3() %>" name="extra3"><br>
                
                <input type="hidden" value="<%= ca.getId_carta() %>" name="id_carta"><br>
                
                
                <input class="btn btn-primary btn-sm" type="submit" name="accion" value="Actualizar Carta"><br>
                <a href="ControladorCarta?accion=listarcartas">Regresar</a>
            </form>
        </div>
       </div>
    </body>
</html>
