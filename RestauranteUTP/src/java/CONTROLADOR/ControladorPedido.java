/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import DAO.PedidoDAO;
import DAO.PlatoDAO;
import DTO.Articulo;
import DTO.Detallepedido;
import DTO.Persona;
import DTO.Plato;
import DTO.encabezadoPedido;
import Boleta.Boleta;
import Correo.Correo;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author EDU
 */
@WebServlet(name = "ControladorPedido", urlPatterns = {"/ControladorPedido"})
public class ControladorPedido extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession sessioncarrito=request.getSession(true);
        ArrayList<Articulo> articulos= sessioncarrito.getAttribute("carrito")==null ? null : (ArrayList)sessioncarrito.getAttribute("carrito");
        
        
        HttpSession user=request.getSession(true);
        Persona persona=(Persona)user.getAttribute("usuario");
        
        if (persona==null) {
            request.setAttribute("sms", "<div class=\"alert alert-danger alert-dismissible fade show\"  id=\"exitoalert\" role=\"alert\">\n" +
"		<strong>Debe</strong> iniciar sesion <strong>para registrar su pedido</strong>\n" +
"		<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
"			<span aria-hidden=\"true\">&times;</span>\n" +
"		</button>\n" +
"	</div>");
            request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
        }
        
        if (articulos==null) {
            request.setAttribute("sms", "<div class=\"alert alert-danger alert-dismissible fade show\"  id=\"exitoalert\" role=\"alert\">\n" +
"		<strong>Debe</strong> seleccionar sus platillos <strong>para registrar su pedido</strong>\n" +
"		<button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\n" +
"			<span aria-hidden=\"true\">&times;</span>\n" +
"		</button>\n" +
"	</div>");
            request.getRequestDispatcher("Menudia.jsp").forward(request, response);
        }
        
        
        String tipopago=request.getParameter("tipo");
        
        float total=0;
        PlatoDAO plt=new PlatoDAO();
        
        for (Articulo a : articulos) {
            
            Plato plato=plt.list(a.getId_plato());
            total=total+a.getCantidad()*plato.getPrecio_plato();
        }
        
        Date date = new Date();
        
        DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        
        String lat=request.getParameter("lat");
        String lng=request.getParameter("lng");
        
        System.out.println(lat+" "+lng);
        
        encabezadoPedido encapedido=new encabezadoPedido();
        encapedido.setFecha(hourdateFormat.format(date));
        encapedido.setTotalpedido(total);
        encapedido.setEstado("en cola");
        encapedido.setIdcliente(persona.getId());
        encapedido.setTipopago(tipopago);
        encapedido.setLat(lat);
        encapedido.setLng(lng);
        
        PedidoDAO ped=new PedidoDAO();
        boolean pedido=ped.RegistarheadPedido(encapedido);
        encapedido=ped.getEncabezado(persona.getId());
        

        for (Articulo articulo : articulos) {
            Detallepedido detallepedido=new Detallepedido();
            detallepedido.setIdplato(articulo.getId_plato());
            detallepedido.setCantplato(articulo.getCantidad());
            detallepedido.setIdpedido(encapedido.getIdpedido());
            ped.RegistrarDetallePedido(detallepedido); 
        }
        
        Boleta Boleta=new Boleta();
        Boleta.generarBoleta(encapedido.getIdpedido());
        
        Correo enviarBoleta=new Correo();
        enviarBoleta.EnviarBoleta(persona.getCorreo());
        
        request.getRequestDispatcher("Confirmacionpedido.jsp").forward(request, response);
        
        
        
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(ControladorPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(ControladorPedido.class.getName()).log(Level.SEVERE, null, ex);
        }
             
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    

}
