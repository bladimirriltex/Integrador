/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;


import DAO.PlatoDAO;
import DTO.Plato;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gianpiero
 */
public class ControladorPlato extends HttpServlet {
    
    String listarplatos="adminPlatos/verPlatos.jsp";
    String addplatos="adminPlatos/addPlatos.jsp";
    String editplatos="adminPlatos/editPlatos.jsp";
    Plato pl=new Plato();
    PlatoDAO pldao=new PlatoDAO();

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
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
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
        
        if(action.equalsIgnoreCase("listarplatos")){
            acceso=listarplatos;
        }else if(action.equalsIgnoreCase("addplatos")){
            acceso = addplatos;
        }else if(action.equalsIgnoreCase("Agregar Plato")){
            
            
            String nombre_plato=request.getParameter("nombre_plato");
            
            String imagen=request.getParameter("imagen");
            
            
            
            int precio_plato=Integer.parseInt(request.getParameter("precio_plato"));
            int stock=Integer.parseInt(request.getParameter("stock"));
            int id_tipo=Integer.parseInt(request.getParameter("id_tipo"));
            
            pl.setNombre_plato(nombre_plato);
            pl.setPrecio_plato(precio_plato);
            pl.setImagen(imagen);
            pl.setStock(stock);
            pl.setId_tipo(id_tipo);
            
            
            
            pldao.add(pl);
            acceso=listarplatos;
        }else if(action.equalsIgnoreCase("editarplatos")){
            request.setAttribute("id_plato", request.getParameter("id"));
            acceso=editplatos;
            
        }else if(action.equalsIgnoreCase("Actualizar Plato")){
            
            String nombre_plato=request.getParameter("nombre_plato");
            
            String imagen=request.getParameter("imagen");
            
            
            
            int precio_plato=Integer.parseInt(request.getParameter("precio_plato"));
            int stock=Integer.parseInt(request.getParameter("stock"));
            int id_tipo=Integer.parseInt(request.getParameter("id_tipo"));
            
            
            
            
            int id_plato=Integer.parseInt(request.getParameter("id_plato"));
            
            
            pl.setNombre_plato(nombre_plato);
            pl.setPrecio_plato(precio_plato);
            pl.setImagen(imagen);
            pl.setStock(stock);
            pl.setId_tipo(id_tipo);
            pl.setId_plato(id_plato);
            
            
            
            
            
            pldao.edit(pl);
            acceso=listarplatos;
            
            
        }else if(action.equalsIgnoreCase("eliminarplatos")){
            int id_plato=Integer.parseInt(request.getParameter("id"));
            pl.setId_plato(id_plato);
            pldao.eliminar(id_plato);
            acceso=listarplatos;
            
            
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
