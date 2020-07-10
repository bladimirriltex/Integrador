/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;


import DAO.EmpleadoDAO;
import DTO.Empleado;

import DTO.Persona;

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
public class ControladorEmpleado extends HttpServlet {
    String listarempleados="adminEmpleados/verEmpleados.jsp";
    String addempleados="adminEmpleados/addEmpleados.jsp";
    String editempleados="adminEmpleados/editEmpleados.jsp";
    Empleado em=new Empleado();
    EmpleadoDAO emdao=new EmpleadoDAO();

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
            out.println("<title>Servlet ControladorEmpleado</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorEmpleado at " + request.getContextPath() + "</h1>");
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
        
        if(action.equalsIgnoreCase("listarempleados")){
            acceso=listarempleados;
        }else if(action.equalsIgnoreCase("addempleados")){
            acceso = addempleados;
        }else if(action.equalsIgnoreCase("Agregar Empleado")){
            
            
            String nombres=request.getParameter("nombres");
            String apellidos=request.getParameter("apellidos");
            String dni=request.getParameter("dni");
            String celular=request.getParameter("celular");
            
            
            int id_distrito=Integer.parseInt(request.getParameter("id_distrito"));
            
            String direccion=request.getParameter("direccion");
            String correo=request.getParameter("correo");
            String password=request.getParameter("password");
            
            String ubicacion_empleado=request.getParameter("ubicacion_empleado");
            String estado_empleado=request.getParameter("estado_empleado");
            
            
            int id_rol=Integer.parseInt(request.getParameter("id_rol"));
            int id_vehiculo=Integer.parseInt(request.getParameter("id_vehiculo"));
            
            em.setNombres(nombres);
            em.setApellidos(apellidos);
            em.setDni(dni);
            em.setCelular(celular);
            em.setId_distrito(id_distrito);
            em.setDireccion(direccion);
            em.setCorreo(correo);
            em.setPassword(password);
            
            em.setEstado(estado_empleado);
            em.setUbicacion(ubicacion_empleado);
            
            em.setId_rol(id_rol);
            em.setId_vehi(id_vehiculo);
            
            
            
            emdao.add(em);
            acceso=listarempleados;
        }else if(action.equalsIgnoreCase("editarempleados")){
            request.setAttribute("idempleado", request.getParameter("id"));
            acceso=editempleados;
            
        }else if(action.equalsIgnoreCase("Actualizar Empleado")){
            
            
            
            String nombres=request.getParameter("nombres");
            String apellidos=request.getParameter("apellidos");
            String dni=request.getParameter("dni");
            String celular=request.getParameter("celular");
            
            
            int id_distrito=Integer.parseInt(request.getParameter("id_distrito"));
            
            String direccion=request.getParameter("direccion");
            String correo=request.getParameter("correo");
            String password=request.getParameter("password");
            int id=Integer.parseInt(request.getParameter("id"));
            
            
            String ubicacion_empleado=request.getParameter("ubicacion_empleado");
            String estado_empleado=request.getParameter("estado_empleado");
            
            
            int id_rol=Integer.parseInt(request.getParameter("id_rol"));
            int id_vehiculo=Integer.parseInt(request.getParameter("id_vehiculo"));
            
            
            em.setNombres(nombres);
            em.setApellidos(apellidos);
            em.setDni(dni);
            em.setCelular(celular);
            em.setId_distrito(id_distrito);
            em.setDireccion(direccion);
            em.setCorreo(correo);
            em.setPassword(password);
            
            em.setEstado(estado_empleado);
            em.setUbicacion(ubicacion_empleado);
            
            em.setId_rol(id_rol);
            em.setId_vehi(id_vehiculo);
            
            
            
            em.setId(id);
            emdao.edit(em);
            acceso=listarempleados;
            
            
        }else if(action.equalsIgnoreCase("eliminarempleados")){
            int id=Integer.parseInt(request.getParameter("id"));
            em.setId(id);
            emdao.eliminar(id);
            acceso=listarempleados;
            
            
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