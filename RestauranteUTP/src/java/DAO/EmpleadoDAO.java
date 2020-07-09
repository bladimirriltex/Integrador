/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;

import DTO.Empleado;
import INTERFACES.CRUDempleado;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Gianpiero
 */
public class EmpleadoDAO implements CRUDempleado{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
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
                
                em.setUbicacion_empleado(rs.getString("ubicacion_empleado"));
                em.setEstado_empleado(rs.getString("estado_empleado"));
                em.setId_rol(rs.getInt("id_rol"));
                em.setId_vehiculo(rs.getInt("id_vehiculo"));
                
                
                
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
                
                em.setUbicacion_empleado(rs.getString("ubicacion_empleado"));
                em.setEstado_empleado(rs.getString("estado_empleado"));
                em.setId_rol(rs.getInt("id_rol"));
                em.setId_vehiculo(rs.getInt("id_vehiculo"));
                
                
            }
        }catch (Exception e){
            
        }return em;
    }

    @Override
    public boolean add(Empleado em) {
        String sql="insert into empleado (nombre_empleado, apellidos_empleado, dni_empleado, celular_empleado, direccion_empleado, correo_empleado, password_empleado, ubicacion_empleado, estado_empleado, id_distrito, id_rol, id_vehiculo) values('"+em.getNombres()+"', '"+em.getApellidos()+"', '"+em.getDni()+"', '"+em.getCelular()+"', '"+em.getDireccion()+"', '"+em.getCorreo()+"', '"+em.getPassword()+"', '"+em.getUbicacion_empleado()+"', '"+em.getEstado_empleado()+"', '"+em.getId_distrito()+"', '"+em.getId_rol()+"', '"+em.getId_vehiculo()+"')";
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
        String sql="UPDATE empleado SET nombre_empleado = '"+em.getNombres()+"', apellidos_empleado = '"+em.getApellidos()+"', dni_empleado = '"+em.getDni()+"', celular_empleado = '"+em.getCelular()+"', direccion_empleado = '"+em.getDireccion()+"', correo_empleado = '"+em.getCorreo()+"', password_empleado = '"+em.getPassword()+"', ubicacion_empleado = '"+em.getUbicacion_empleado()+"', estado_empleado = '"+em.getEstado_empleado()+"', id_distrito = '"+em.getId_distrito()+"', id_rol = '"+em.getId_rol()+"', id_vehiculo = '"+em.getId_vehiculo()+"' where id_empleado= "+em.getId();
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
    
}
