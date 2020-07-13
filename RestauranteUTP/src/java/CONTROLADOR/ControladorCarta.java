/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import DAO.CartaDAO;
import DTO.Carta;

import java.io.IOException;
import java.io.PrintWriter;
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
    String listarcartas="adminCarta/verCartas.jsp";
    String addcartas="adminCarta/addCartas.jsp";
    String editcartas="adminCarta/editCartas.jsp";
    Carta ca=new Carta();
    CartaDAO cadao=new CartaDAO();

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
        
        if(action.equalsIgnoreCase("listarcartas")){
            acceso=listarcartas;
        }else if(action.equalsIgnoreCase("addcartas")){
            acceso = addcartas;
        }else if(action.equalsIgnoreCase("Agregar Carta")){
            
            
            String fecha_carta=request.getParameter("fecha_carta");
            int entrada1=Integer.parseInt(request.getParameter("entrada1"));
            int entrada2=Integer.parseInt(request.getParameter("entrada2"));
            int entrada3=Integer.parseInt(request.getParameter("entrada3"));
            
            int segundo1=Integer.parseInt(request.getParameter("segundo1"));
            int segundo2=Integer.parseInt(request.getParameter("segundo1"));
            int segundo3=Integer.parseInt(request.getParameter("segundo1"));
            
            int extra1=Integer.parseInt(request.getParameter("extra1"));
            int extra2=Integer.parseInt(request.getParameter("extra2"));
            int extra3=Integer.parseInt(request.getParameter("extra3"));
            
            
            ca.setFecha_carta(fecha_carta);
            ca.setEntrada1(entrada1);
            ca.setEntrada2(entrada2);
            ca.setEntrada3(entrada3);
            ca.setExtra1(extra1);
            ca.setExtra2(extra2);
            ca.setExtra3(extra3);
            ca.setSegundo1(segundo1);
            ca.setSegundo2(segundo2);
            ca.setSegundo3(segundo3);
            
            
            cadao.add(ca);
            acceso=listarcartas;
        }else if(action.equalsIgnoreCase("editarcartas")){
            request.setAttribute("id_carta", request.getParameter("id"));
            acceso=editcartas;
            
        }else if(action.equalsIgnoreCase("Actualizar Carta")){
            
            String fecha_carta=request.getParameter("fecha_carta");
            int entrada1=Integer.parseInt(request.getParameter("entrada1"));
            int entrada2=Integer.parseInt(request.getParameter("entrada2"));
            int entrada3=Integer.parseInt(request.getParameter("entrada3"));
            
            int segundo1=Integer.parseInt(request.getParameter("segundo1"));
            int segundo2=Integer.parseInt(request.getParameter("segundo1"));
            int segundo3=Integer.parseInt(request.getParameter("segundo1"));
            
            int extra1=Integer.parseInt(request.getParameter("extra1"));
            int extra2=Integer.parseInt(request.getParameter("extra2"));
            int extra3=Integer.parseInt(request.getParameter("extra3"));
            
            
            ca.setFecha_carta(fecha_carta);
            ca.setEntrada1(entrada1);
            ca.setEntrada2(entrada2);
            ca.setEntrada3(entrada3);
            ca.setExtra1(extra1);
            ca.setExtra2(extra2);
            ca.setExtra3(extra3);
            ca.setSegundo1(segundo1);
            ca.setSegundo2(segundo2);
            ca.setSegundo3(segundo3);
            
            
            
            cadao.edit(ca);
            acceso=listarcartas;
            
            
        }else if(action.equalsIgnoreCase("eliminarcartas")){
            int id_carta=Integer.parseInt(request.getParameter("id"));
            ca.setId_carta(id_carta);
            cadao.eliminar(id_carta);
            acceso=listarcartas;
            
            
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

}
