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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
        String sql="insert into detalle_carta (id_carta, id_plato) values('"+detallecarta.getId_carta()+"','"+detallecarta.getId_plato()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
        
        
        
    }
    int id_carta_nuevo;
    public int traerId_carta(String fecha_carta) { //getEncabezado
        
        String sql="select * from encabezado_carta where fecha_carta='"+fecha_carta+"'";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                id_carta_nuevo=rs.getInt("id_carta");
                
                
                
            }
        }catch (Exception e){
            
        }return id_carta_nuevo;
    }
    
    public List getPlatosbyId_carta(int id_carta) {
        ArrayList<Plato> list = new ArrayList<>();
        String sql="SELECT * FROM `encabezado_carta` encabezado_carta INNER JOIN `detalle_carta` detalle_carta ON encabezado_carta.`id_carta` = detalle_carta.`id_carta` INNER JOIN `plato` plato ON detalle_carta.`id_plato` = plato.`id_plato`";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
                Plato pl = new Plato();
                int i=rs.getInt("id_carta");
                if(i==id_carta){
                    pl.setId_plato(rs.getInt("id_plato"));
                    pl.setNombre_plato(rs.getString("nombre_plato"));
                    pl.setPrecio_plato(rs.getFloat("precio_plato"));
                    pl.setImagen(rs.getString("imagen"));
                    pl.setStock(rs.getInt("stock"));
                    pl.setId_tipo(rs.getInt("id_tipo"));
                    pl.setCarta(rs.getBoolean("carta"));
                
                    list.add(pl);
                }
                
                
                
            }
        }catch (Exception e){
            
        }return list;
    }
    
    public static void main(String[] args) {
        Date date=new Date();
        DateFormat hourdateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha="2020-07-30";
        String fecha1=hourdateFormat.format(date);
        
        CartaDAO prueba=new CartaDAO();
        
        System.out.println(fecha);
        System.out.println(prueba.traerId_carta(hourdateFormat.format(date)));
        
    }

    
    }

    
        
        
        
        
       
    

