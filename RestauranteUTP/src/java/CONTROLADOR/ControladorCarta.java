/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;


import DAO.PlatoDAO;


import DTO.Plato;
import DTO.encabezadoCarta;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BaiaBaia
 */
public class ControladorCarta extends HttpServlet {
    String menu="Menudia.jsp";
    
    Plato pl=new Plato();
    PlatoDAO pldao=new PlatoDAO();
    
    encabezadoCarta ca=new encabezadoCarta();
    
    
    

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorCarta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCarta at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        String acceso="";
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("Actualizar Carta")){
            List<Plato> listcarta=pldao.listar();
            for (Plato plato : listcarta) {
                pldao.resetCarta(plato.getId_plato());
            }
            String[] carta = request.getParameterValues("id_plato");
            String fecha_carta=request.getParameter("fecha_carta");
            
            for (int i = 0; i< carta.length; i++) {
                int id_plato=Integer.parseInt(carta[i]);
                pldao.enCarta(id_plato);
            }
            
            
            
            acceso=menu;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
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

   /* public static void main(String[] args) {
        List<Carta> listcarta=new ArrayList<Carta>();
        
        CartaDAO dAO=new CartaDAO();
        Carta carta=new Carta();
        carta=dAO.list(1);
        
        System.out.println(carta.getSegundo1());
        
        
=======
    public static void main(String[] args) {
        List<Plato> list=new ArrayList<Plato>();
>>>>>>> origin/master
        PlatoDAO dao=new PlatoDAO();
<<<<<<< HEAD
        Plato pl=new Plato();
        pl=dao.list(carta.getSegundo3());
        
        System.out.println(pl.getNombre_plato());
        dao.enCarta(pl.getId_plato());
        
    }*/

        
                
        }
    




