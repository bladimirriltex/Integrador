/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAO;

import CONEXION.Conexion;
import DTO.Empleado;

import DTO.Persona;

import INTERFACES.CRUDempleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Edú
 */
public class EmpleadoDAO implements CRUDempleado{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Empleado e =null;
    @Override
    public Empleado IniciarSesion(Persona user) {
        String sql="select * from empleado where correo_empleado=? and password_empleado=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, user.getCorreo());
            ps.setString(2, user.getPassword());
            rs=ps.executeQuery();
            if(rs.next()){
                e = new Empleado();
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
    
    
    
    Empleado em = new Empleado();

    @Override
    public List listar() {
        ArrayList<Empleado> list = new ArrayList<>();
        String sql="select * from empleado";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Empleado em = new Empleado();
                
                em.setId(rs.getInt("id_empleado"));
                em.setNombres(rs.getString("nombre_empleado"));
                em.setApellidos(rs.getString("apellidos_empleado"));
                em.setDni(rs.getString("dni_empleado"));
                em.setCelular(rs.getString("celular_empleado"));
                em.setId_distrito(rs.getInt("id_distrito"));
                em.setDireccion(rs.getString("direccion_empleado"));
                em.setCorreo(rs.getString("correo_empleado"));
                em.setPassword(rs.getString("password_empleado"));
                
                em.setUbicacion(rs.getString("ubicacion_empleado"));
                em.setEstado(rs.getString("estado_empleado"));
                em.setId_rol(rs.getInt("id_rol"));
                em.setId_vehi(rs.getInt("id_vehiculo"));
                
                
                
                list.add(em);
            }
        }catch (Exception e){
            
        }return list;
    }

    @Override
    public Empleado list(int id_empleado) {
        String sql="select * from empleado where id_empleado="+id_empleado;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                em.setId(rs.getInt("id_empleado"));
                em.setNombres(rs.getString("nombre_empleado"));
                em.setApellidos(rs.getString("apellidos_empleado"));
                em.setDni(rs.getString("dni_empleado"));
                em.setCelular(rs.getString("celular_empleado"));
                em.setId_distrito(rs.getInt("id_distrito"));
                em.setDireccion(rs.getString("direccion_empleado"));
                em.setCorreo(rs.getString("correo_empleado"));
                em.setPassword(rs.getString("password_empleado"));
                
                em.setUbicacion(rs.getString("ubicacion_empleado"));
                em.setEstado(rs.getString("estado_empleado"));
                em.setId_rol(rs.getInt("id_rol"));
                em.setId_vehi(rs.getInt("id_vehiculo"));
                
                
            }
        }catch (Exception e){
            
        }return em;
    }

    @Override
    public boolean add(Empleado em) {
        String sql="insert into empleado (nombre_empleado, apellidos_empleado, dni_empleado, celular_empleado, direccion_empleado, correo_empleado, password_empleado, ubicacion_empleado, estado_empleado, id_distrito, id_rol, id_vehiculo) values('"+em.getNombres()+"', '"+em.getApellidos()+"', '"+em.getDni()+"', '"+em.getCelular()+"', '"+em.getDireccion()+"', '"+em.getCorreo()+"', '"+em.getPassword()+"', '"+em.getUbicacion()+"', '"+em.getEstado()+"', '"+em.getId_distrito()+"', '"+em.getId_rol()+"', '"+em.getId_vehi()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Empleado em) {
        String sql="UPDATE empleado SET nombre_empleado = '"+em.getNombres()+"', apellidos_empleado = '"+em.getApellidos()+"', dni_empleado = '"+em.getDni()+"', celular_empleado = '"+em.getCelular()+"', direccion_empleado = '"+em.getDireccion()+"', correo_empleado = '"+em.getCorreo()+"', password_empleado = '"+em.getPassword()+"', ubicacion_empleado = '"+em.getUbicacion()+"', estado_empleado = '"+em.getEstado()+"', id_distrito = '"+em.getId_distrito()+"', id_rol = '"+em.getId_rol()+"', id_vehiculo = '"+em.getId_vehi()+"' where id_empleado= "+em.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
     
    }

    @Override
    public boolean eliminar(int id_empleado) {
        String sql="delete from empleado where id_empleado= "+id_empleado;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
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
