/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;

import DTO.Vehiculo;

import INTERFACES.CRUDvehiculo;
import java.sql.*;
import java.util.*;


/**
 *
 * @author Gianpiero
 */
public class VehiculoDAO implements CRUDvehiculo{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Vehiculo v = new Vehiculo();
    

    @Override
    public List listar() {
        ArrayList<Vehiculo> list = new ArrayList<>();
        String sql="select * from vehiculo";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Vehiculo v = new Vehiculo();
                v.setId_vehiculo(rs.getInt("id_vehiculo"));
                v.setPlaca(rs.getString("placa"));
                v.setTipo(rs.getString("tipo"));
                v.setSoat(rs.getString("soat"));
                
                
                list.add(v);
            }
        }catch (Exception e){
            
        }return list;
    }
    

    @Override
    public Vehiculo list(int id_vehiculo) {
        String sql="select * from vehiculo where id_vehiculo="+id_vehiculo;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                v.setId_vehiculo(rs.getInt("id_vehiculo"));
                v.setPlaca(rs.getString("placa"));
                v.setTipo(rs.getString("tipo"));
                v.setSoat(rs.getString("soat"));
                
                
            }
        }catch (Exception e){
            
        }return v;
    }

    @Override
    public boolean add(Vehiculo v) {
        String sql="insert into vehiculo (placa, tipo, soat) values('"+v.getPlaca()+"', '"+v.getTipo()+"', '"+v.getSoat()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Vehiculo v) {
            String sql="UPDATE vehiculo SET placa = '"+v.getPlaca()+"', tipo= '"+v.getTipo()+"', soat= '"+v.getSoat()+"' where id_vehiculo= "+v.getId_vehiculo();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }

    @Override
    public boolean eliminar(int id_vehiculo) {
        String sql="delete from vehiculo where id_vehiculo= "+id_vehiculo;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }
    
}