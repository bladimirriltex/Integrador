/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;

import DTO.Plato;
import DAO.PlatoDAO;
import DTO.Detallecarta;
import DTO.encabezadoCarta;
import INTERFACES.CRUDcarta;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author BaiaBaia
 */
public class CartaDAO implements CRUDcarta{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    encabezadoCarta enca = new encabezadoCarta();

    @Override
    public List listar() {
        ArrayList<encabezadoCarta> list = new ArrayList<>();
        String sql="select * from encabezado_carta";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                encabezadoCarta enca = new encabezadoCarta();
                enca.setId_carta(rs.getInt("id_carta"));
                enca.setFecha_carta(rs.getString("fecha_carta"));
                
                
                list.add(enca);
            }
        }catch (Exception e){
            
        }return list;
    }

    @Override
    public encabezadoCarta list(int id_carta) { //getEncabezado
        
        String sql="select * from encabezado_carta where id_carta="+id_carta;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                
                enca.setId_carta(rs.getInt("id_carta"));
                enca.setFecha_carta(rs.getString("fecha_carta"));
                
            }
        }catch (Exception e){
            
        }return enca;
    }

    @Override
    public boolean add(encabezadoCarta enca) { //RegistrarCarta
        String sql="insert into encabezado_carta (fecha_carta) values('"+enca.getFecha_carta()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(encabezadoCarta enca) {
        String sql="UPDATE encabezado_carta SET fecha_carta = '"+enca.getFecha_carta()+"' where id_carta= "+enca.getId_carta();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }

    @Override
    public boolean eliminar(int id_carta) {
        String sql="delete from encabezado_carta where id_carta= "+id_carta;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }
    
    public boolean RegistrarDetalleCarta(Detallecarta detallecarta){
        String sql="INSERT INTO `detalle_carta` (`id_carta`, `id_plato`) VALUES (?,?);";
        con = cn.getConnection();
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
            
            ps.setInt(2,detallecarta.getId_carta());
            ps.setInt(3,detallecarta.getId_plato());
            
            
            
        }catch(Exception e){
            
        }
        return false;
 
        
        
        
    }
    
        
        
        
        
       
    
}
