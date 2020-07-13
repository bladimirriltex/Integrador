/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;
import DTO.Carta;
import DTO.Plato;
import DAO.PlatoDAO;
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
    Carta ca = new Carta();

    @Override
    public List listar() {
        ArrayList<Carta> list = new ArrayList<>();
        String sql="select * from plato";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Carta ca = new Carta();
                ca.setId_carta(rs.getInt("id_carta"));
                ca.setFecha_carta(rs.getString("fecha_carta"));
                
                ca.setEntrada1(rs.getInt("entrada1"));
                ca.setEntrada2(rs.getInt("entrada2"));
                ca.setEntrada3(rs.getInt("entrada3"));
                
                ca.setSegundo1(rs.getInt("segundo1"));
                ca.setSegundo2(rs.getInt("segundo2"));
                ca.setSegundo3(rs.getInt("segundo3"));
                
                ca.setExtra1(rs.getInt("extra1"));
                ca.setExtra2(rs.getInt("extra2"));
                ca.setExtra3(rs.getInt("extra3"));
                
                list.add(ca);
            }
        }catch (Exception e){
            
        }return list;
    }

    @Override
    public Carta list(int id_carta) {
        String sql="select * from carta where id_carta="+id_carta;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                
                ca.setId_carta(rs.getInt("id_carta"));
                ca.setFecha_carta(rs.getString("fecha_carta"));
                
                ca.setEntrada1(rs.getInt("entrada1"));
                ca.setEntrada2(rs.getInt("entrada2"));
                ca.setEntrada3(rs.getInt("entrada3"));
                
                ca.setSegundo1(rs.getInt("segundo1"));
                ca.setSegundo2(rs.getInt("segundo2"));
                ca.setSegundo3(rs.getInt("segundo3"));
                
                ca.setExtra1(rs.getInt("extra1"));
                ca.setExtra2(rs.getInt("extra2"));
                ca.setExtra3(rs.getInt("extra3"));
            }
        }catch (Exception e){
            
        }return ca;
    }

    @Override
    public boolean add(Carta ca) {
        String sql="insert into carta (fecha_carta, entrada1, entrada2, entrada3, segundo1, segundo2, segundo3, extra1, extra2, extra) values('"+ca.getFecha_carta()+"', '"+ca.getEntrada1()+"', '"+ca.getEntrada2()+"', '"+ca.getEntrada3()+"', '"+ca.getSegundo1()+"', '"+ca.getSegundo2()+"', '"+ca.getSegundo3()+"', '"+ca.getExtra1()+"', '"+ca.getExtra2()+"', '"+ca.getExtra3()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Carta ca) {
        String sql="UPDATE carta SET fecha_carta = '"+ca.getFecha_carta()+"', entrada1= '"+ca.getEntrada1()+"', entrada2= '"+ca.getEntrada2()+"', entrada3= '"+ca.getEntrada3()+"', segundo1= '"+ca.getSegundo1()+"', segundo2= '"+ca.getSegundo2()+"', segundo3= '"+ca.getSegundo3()+"', extra1= '"+ca.getExtra1()+"', extra2= '"+ca.getExtra2()+"', extra3= '"+ca.getExtra3()+"' where id_carta= "+ca.getId_carta();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }

    @Override
    public boolean eliminar(int id_carta) {
        String sql="delete from carta where id_carta= "+id_carta;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }
    public static void main(String[] args) {
        List<Carta> listcarta=new ArrayList<Carta>();
        
        CartaDAO dAO=new CartaDAO();
        Carta carta=new Carta();
        carta=dAO.list(1);
        
        System.out.println(carta.getSegundo1());
        
        PlatoDAO dao=new PlatoDAO();
        Plato plato=new Plato();
        plato=dao.list(carta.getSegundo1());
        System.out.println(plato.getNombre_plato());
        
        
        
       
    }
}
