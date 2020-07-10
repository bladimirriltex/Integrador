/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;



import DTO.Plato;

import INTERFACES.CRUDplato;
import java.sql.*;
import java.util.*;


/**
 *
 * @author Gianpiero
 */
public class PlatoDAO implements CRUDplato{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Plato pl = new Plato();
    

    @Override
    public  List listar() {
        ArrayList<Plato> list = new ArrayList<>();
        String sql="select * from plato";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Plato pl = new Plato();
                pl.setId_plato(rs.getInt("id_plato"));
                pl.setNombre_plato(rs.getString("nombre_plato"));
                pl.setPrecio_plato(rs.getFloat("precio_plato"));
                pl.setImagen(rs.getString("imagen"));
                pl.setStock(rs.getInt("stock"));
                pl.setId_tipo(rs.getInt("id_tipo"));
                
                list.add(pl);
            }
        }catch (Exception e){
            
        }return list;
    }
    

    @Override
    public Plato list(int id_plato) {
        String sql="select * from plato where id_plato="+id_plato;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                pl.setId_plato(rs.getInt("id_plato"));
                pl.setNombre_plato(rs.getString("nombre_plato"));
                pl.setPrecio_plato(rs.getFloat("precio_plato"));
                pl.setImagen(rs.getString("imagen"));
                pl.setStock(rs.getInt("stock"));
                pl.setId_tipo(rs.getInt("id_tipo"));
                
            }
        }catch (Exception e){
            
        }return pl;
    }

    @Override
    public boolean add(Plato pl) {
        String sql="insert into plato (nombre_plato, precio_plato, imagen, stock, id_tipo) values('"+pl.getNombre_plato()+"', '"+pl.getPrecio_plato()+"', '"+pl.getImagen()+"', '"+pl.getStock()+"', '"+pl.getId_tipo()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Plato pl) {
            String sql="UPDATE plato SET nombre_plato = '"+pl.getNombre_plato()+"', precio_plato= '"+pl.getPrecio_plato()+"', imagen= '"+pl.getImagen()+"', stock= '"+pl.getStock()+"', id_tipo= '"+pl.getId_tipo()+"' where id_plato= "+pl.getId_plato();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }

    @Override
    public boolean eliminar(int id_plato) {
        String sql="delete from plato where id_plato= "+id_plato;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }

    
    public static void main(String[] args) {
        List<Plato> listplato=new ArrayList<Plato>();
        
        PlatoDAO dAO=new PlatoDAO();

        listplato=dAO.listar();
        
        for (Plato plato : listplato) {
            System.out.println(plato.getNombre_plato());
        }
    }
    
}