/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;


import DTO.Articulo;
import DTO.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Edú
 */
@WebServlet(name = "ControladorCarrito", urlPatterns = {"/ControladorCarrito"})
public class ControladorCarrito extends HttpServlet {

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
            throws ServletException, IOException {
        
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
        processRequest(request, response);
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
        processRequest(request, response);
        
        int cantidad=Integer.parseInt(request.getParameter("cantidad"));
        int idproducto=Integer.parseInt(request.getParameter("idplato"));
        
        HttpSession user=request.getSession(true);
        Persona per=(Persona)user.getAttribute("usuario");
        
        HttpSession sesioncarrito= request.getSession(true);
        ArrayList<Articulo> articulos=sesioncarrito.getAttribute("carrito")==null ? new ArrayList<>(): (ArrayList<Articulo>)sesioncarrito.getAttribute("carrito");
        boolean flag=false;
        
        if(articulos.size()>0){
            for(Articulo a: articulos){
                if(idproducto==a.getId_plato()){
                    a.setCantidad(a.getCantidad()+cantidad);
                    flag=true;
                    break;
                }
            }
        }
        if(!flag){
            articulos.add(new Articulo(idproducto, cantidad));
        }
        sesioncarrito.setAttribute("carrito",articulos);
        user.setAttribute("usuario",per);
        response.sendRedirect("Ordenpedido.jsp");
        
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
