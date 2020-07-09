/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;



import DAO.VehiculoDAO;
import DTO.Vehiculo;
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
public class ControladorVehiculo extends HttpServlet {
    
    String listarvehiculos="adminVehiculos/verVehiculos.jsp";
    String addvehiculos="adminVehiculos/addVehiculos.jsp";
    String editvehiculos="adminVehiculos/editVehiculos.jsp";
    Vehiculo v=new Vehiculo();
    VehiculoDAO vdao=new VehiculoDAO();

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
        
        if(action.equalsIgnoreCase("listarvehiculos")){
            acceso=listarvehiculos;
        }else if(action.equalsIgnoreCase("addvehiculos")){
            acceso = addvehiculos;
        }else if(action.equalsIgnoreCase("Agregar Vehiculo")){
            
            
            String placa=request.getParameter("placa");
            String tipo=request.getParameter("tipo");
            String soat=request.getParameter("soat");
            
            v.setPlaca(placa);
            v.setTipo(tipo);
            v.setSoat(soat);
            
            
            vdao.add(v);
            acceso=listarvehiculos;
        }else if(action.equalsIgnoreCase("editarvehiculos")){
            request.setAttribute("id_vehiculo", request.getParameter("id"));
            acceso=editvehiculos;
            
        }else if(action.equalsIgnoreCase("Actualizar Vehiculo")){
            String placa=request.getParameter("placa");
            String tipo=request.getParameter("tipo");
            String soat=request.getParameter("soat");
            
            int id_vehiculo=Integer.parseInt(request.getParameter("id_vehiculo"));
            
            v.setId_vehiculo(id_vehiculo);
            v.setSoat(soat);
            v.setPlaca(placa);
            v.setTipo(tipo);
            
            vdao.edit(v);
            acceso=listarvehiculos;
            
            
        }else if(action.equalsIgnoreCase("eliminarvehiculos")){
            int id_vehiculo=Integer.parseInt(request.getParameter("id_vehiculo"));
            v.setId_vehiculo(id_vehiculo);
            vdao.eliminar(id_vehiculo);
            acceso=listarvehiculos;
            
            
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