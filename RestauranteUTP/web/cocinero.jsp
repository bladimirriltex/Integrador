<%-- 
    Document   : cocinero
    Created on : 07/07/2020, 09:02:40 PM
    Author     : Edú
--%>

<%@page import="DTO.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
            Persona user;
            HttpSession sesion=(HttpSession)request.getAttribute("sesion");
            if(sesion==null){
                request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
            }
            user=(Persona)request.getAttribute("usuario");
            
        %>
        <h1>cocinero: <%= user.getNombres()  %></h1>
        <h1>bienvenido</h1>
    </body>
</html>
