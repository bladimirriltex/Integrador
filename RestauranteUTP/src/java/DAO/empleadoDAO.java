/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAO;

import CONEXION.Conexion;

import DTO.Persona;
import DTO.empleado;
import INTERFACES.CRUDempleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Edú
 */
public class empleadoDAO implements CRUDempleado{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    empleado e =null;
    @Override
    public empleado IniciarSesion(Persona user) {
        String sql="select * from empleado where correo_empleado=? and password_empleado=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, user.getCorreo());
            ps.setString(2, user.getPassword());
            rs=ps.executeQuery();
            if(rs.next()){
                e = new empleado();
                e.setId(rs.getInt(1));
                e.setNombres(rs.getString(2));
                e.setApellidos(rs.getString(3));
                e.setDni(rs.getString(4));
                e.setCelular(rs.getString(5));
                e.setDireccion(rs.getString(6));
                e.setCorreo(rs.getString(7));
                e.setPassword(rs.getString(8));
                e.setUbicacion(rs.getString(9));
                e.setEstado(rs.getString(10));
                e.setId_distrito(rs.getInt(11));
                e.setId_rol(rs.getInt(12));
                e.setId_vehi(rs.getInt(13));
                
                
                System.out.println(e.getCorreo());
                System.out.println(e.getPassword());
            }
        } catch (NumberFormatException | SQLException e) {
            System.out.println("error clientDAO  "+e);
        }finally{
            try {
                if(rs!=null)rs.close();
                if(ps!=null)ps.close();
                
            } catch (SQLException e) {
                System.out.println("error clienteDAO"+e);
            }
        }
        
        return e;
        
    }
   /* public static void main(String[] args) {
        empleado empleado=new empleado();
        empleado.setCorreo("coci20");
        empleado.setPassword("cocinero");
        empleadoDAO emDAO=new empleadoDAO();
        empleado=emDAO.IniciarSesion(empleado);
        empleado.getApellidos();
        empleado.getNombres();
        empleado.getCorreo();
    }*/
    
}
