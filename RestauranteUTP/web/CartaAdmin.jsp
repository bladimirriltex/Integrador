<%-- 
    Document   : CartaAdmin
    Created on : 20/07/2020, 12:25:23 PM
    Author     : BaiaBaia
--%>

<%@page import="DTO.Plato"%>

<%@page import="java.util.*"%>
<%@page import="DAO.PlatoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Carta</title>
    </head>
    <body>
        <div>
            <h1>Elige la Carta</h1>
	<%  
        List<Plato> listplato=new ArrayList<Plato>();
        
        PlatoDAO dAO=new PlatoDAO();

        listplato=dAO.listar();
        
        %>
        
        <form action="ControladorCarta" method="post">
            <div>
                <h2>Entradas</h2>
                <% 
                                for (Plato plato : listplato) {
                                        if (plato.getId_tipo()==1) {%>
                            
                
                <label><input type="checkbox" id="<%= plato.getId_plato()%>" value="<%= plato.getId_plato()%>" name="id_plato"> <%= plato.getNombre_plato()%></label><br>
                <%                }
                                }
                        
                        %>
            </div>
            <div>
                <h2>Segundos</h2>
                <% 
                            for (Plato plato : listplato) {
                                    if (plato.getId_tipo()==2) {%>
                            
                
                <label><input type="checkbox" id="<%= plato.getId_plato()%>" value="<%= plato.getId_plato()%>" name="id_plato"> <%= plato.getNombre_plato()%></label><br>
                <%                }
                                }
                        
                        %>
            </div>
            <div>
                <h2>Extras</h2>
                <% 
                            for (Plato plato : listplato) {
                                    if (plato.getId_tipo()==3) {%>
                            
                
                <label><input type="checkbox" id="<%= plato.getId_plato()%>" value="<%= plato.getId_plato()%>" name="id_plato"> <%= plato.getNombre_plato()%></label><br>
                <%                }
                                }
                        
                        %>
            </div>
            
            
        <input type="submit" name="accion" value="Actualizar Nueva Carta">
        </form>
        </div>
    </body>
</html>
