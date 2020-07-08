/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package CONTROLADOR;

import DAO.ClienteDAO;
import DAO.empleadoDAO;
import DTO.Cliente;
import DTO.Persona;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Edú
 */
@WebServlet(name = "ControladorSesion", urlPatterns = {"/ControladorSesion"})
public class ControladorSesion extends HttpServlet {
    
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
        
        
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        String emailPattern = "^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@" +
                "[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,4})$";
        
        Pattern pattern = Pattern.compile(emailPattern);
        
        Persona per= new Persona();
        per.setCorreo(email);
        per.setPassword(password);
        
        Matcher matcher = pattern.matcher(email);
        if (matcher.matches()) {
            
            ClienteDAO clienteDAO=new ClienteDAO();
            
            per=clienteDAO.IniciarSesion(per);
            if(per==null){
                request.setAttribute("mensaje", "Error usuario y/o clave");
                request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
            }else if (per!= null) {
                request.setAttribute("usuario",per);
                request.getRequestDispatcher("Menudia.jsp").forward(request, response);
            }
        }else if(per.getCorreo().length()==6){
            
            char charAt =per.getCorreo().charAt(0);
            char[] Char = {'a', 'c', 'r'};
            if(Char[0]==charAt){
                System.out.println("es admin");
                empleadoDAO empleadoDAO=new empleadoDAO();
                per=empleadoDAO.IniciarSesion(per);
                if(per==null){
                    request.setAttribute("mensaje", "Error usuario y/o clave");
                    request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
                }else if (per!= null){
                    request.setAttribute("usuario",per);
                    request.getRequestDispatcher("administrador.jsp").forward(request, response);
                }                
            }else if (Char[1]==charAt){
                System.out.println("es cocinero");
                empleadoDAO empleadoDAO=new empleadoDAO();
                per=empleadoDAO.IniciarSesion(per);
                if(per==null){
                    request.setAttribute("mensaje", "Error usuario y/o clave");
                    request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
                }else if (per!= null){
                    request.setAttribute("usuario",per);
                    request.getRequestDispatcher("cocinero.jsp").forward(request, response);
                }
            }else if (Char[2]==charAt) {
                System.out.println("es repartidor");
                empleadoDAO empleadoDAO=new empleadoDAO();
                per=empleadoDAO.IniciarSesion(per);
                if(per==null){
                    request.setAttribute("mensaje", "Error usuario y/o clave");
                    request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
                }else if (per!= null){
                    request.setAttribute("usuario",per);
                    request.getRequestDispatcher("admin.jsp").forward(request, response);
                }                
            }
            
        }else{
            request.setAttribute("mensaje", "Error usuario y/o clave");
            request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
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
