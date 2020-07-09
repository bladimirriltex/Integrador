/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAO;

import CONEXION.Conexion;

import DTO.Cliente;
import DTO.Persona;
import INTERFACES.CRUDcliente;
import java.sql.*;
import java.util.*;


/**
 *
 * @author Gianpiero
*/
public class ClienteDAO implements CRUDcliente{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Cliente c =null;
    
    
    @Override
    public List listar() {
        ArrayList<Cliente> list = new ArrayList<>();
        String sql="select * from cliente";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);          
            rs=ps.executeQuery();
            while(rs.next()){
                Cliente c = new Cliente();
                c.setId(rs.getInt("id_cliente"));
                c.setNombres(rs.getString("nombre_cliente"));
                c.setApellidos(rs.getString("apellidos_cliente"));
                c.setDni(rs.getString("dni_cliente"));
                c.setCelular(rs.getString("celular_cliente"));
                c.setId_distrito(rs.getInt("id_distrito"));
                c.setDireccion(rs.getString("direccion_cliente"));
                c.setCorreo(rs.getString("correo_cliente"));
                c.setPassword(rs.getString("password_cliente"));
                list.add(c);
            }
        }catch (Exception e){
            
        }return list;
    }
    
    
    @Override
    public Cliente list(int id) {
       
        String sql="select * from cliente where id_cliente="+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                c.setId(rs.getInt("id_cliente"));
                c.setNombres(rs.getString("nombre_cliente"));
                c.setApellidos(rs.getString("apellidos_cliente"));
                c.setDni(rs.getString("dni_cliente"));
                c.setCelular(rs.getString("celular_cliente"));
                c.setId_distrito(rs.getInt("id_distrito"));
                c.setDireccion(rs.getString("direccion_cliente"));
                c.setCorreo(rs.getString("correo_cliente"));
                c.setPassword(rs.getString("password_cliente"));
                
            }
        }catch (Exception e){
            
        }return c;
    }
    
    @Override
    public boolean add(Cliente c) {
        String sql="insert into cliente (nombre_cliente, apellidos_cliente, dni_cliente, celular_cliente, direccion_cliente, correo_cliente, password_cliente, id_distrito) values('"+c.getNombres()+"', '"+c.getApellidos()+"', '"+c.getDni()+"', '"+c.getCelular()+"', '"+c.getDireccion()+"', '"+c.getCorreo()+"', '"+c.getPassword()+"', '"+c.getId_distrito()+"')";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }
        return false;
    }
    
    @Override
    public boolean edit(Cliente c) {
        String sql="UPDATE cliente SET nombre_cliente = '"+c.getNombres()+"', apellidos_cliente= '"+c.getApellidos()+"', dni_cliente= '"+c.getDni()+"', celular_cliente= '"+c.getCelular()+"', direccion_cliente= '"+c.getDireccion()+"', correo_cliente= '"+c.getCorreo()+"', password_cliente= '"+c.getPassword()+"', id_distrito= '"+c.getId_distrito()+"' where id_cliente= "+c.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }
    
    @Override
    public boolean eliminar(int id) {
        String sql="delete from cliente where id_cliente= "+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            
        }return false;
    }
    
    @Override
    public Cliente IniciarSesion(Persona user) {
        String sql="select * from cliente where correo_cliente=? and password_cliente=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, user.getCorreo());
            ps.setString(2, user.getPassword());
            rs=ps.executeQuery();
            if(rs.next()){
                c = new Cliente();
                c.setId(rs.getInt(1));
                c.setNombres(rs.getString(2));
                c.setApellidos(rs.getString(3));
                c.setDni(rs.getString(4));
                c.setCelular(rs.getString(5));
                c.setDireccion(rs.getString(6));
                c.setCorreo(rs.getString(7));
                c.setPassword(rs.getString(8));
                c.setId_distrito(Integer.parseInt(rs.getString(9)));
                
                System.out.println(c.getCorreo());
                System.out.println(c.getPassword());
            }
        } catch (NumberFormatException | SQLException e) {
            System.out.println("error cliebtaDAO"+e);
        }finally{
            try {
                if(rs!=null)rs.close();
                if(ps!=null)ps.close();
                
            } catch (SQLException e) {
                System.out.println("error clienteDAO"+e);
            }
        }
        
        return c;
        
    }
    
    @Override
    public boolean Registrar(Persona user) {
        String sql="INSERT INTO cliente (nombre_cliente,apellidos_cliente,dni_cliente,celular_cliente,direccion_cliente,correo_cliente,password_cliente,id_distrito) VALUES (?,?,?,?,?,?,?,?);";

        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
 
            ps.setString(1,user.getNombres());
            ps.setString(2,user.getApellidos());
            ps.setString(3,user.getDni());
            ps.setString(4,user.getCelular());
            ps.setString(5,user.getDireccion());
            ps.setString(6,user.getCorreo());
            ps.setString(7,user.getPassword());
            ps.setInt(8,user.getId_distrito());
            
            if(ps.executeUpdate()==1){
                return true;
            }
            System.out.println("inserto");
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if(ps!=null)ps.close();
            } catch (Exception e) {
            }
        }
        
        return false;
    }
    
    public static void main(String[] args) {
        Persona persona=new Persona();
        persona.setNombres("karlo");
        persona.setApellidos("mollo");
        persona.setDni("72564865");
        persona.setCelular("941352010");
        persona.setDireccion("cercado");
        persona.setCorreo("karlo@gmail.com");
        persona.setPassword("karlo");
        persona.setId_distrito(4);
        
        ClienteDAO clienteDAO=new ClienteDAO();
        clienteDAO.Registrar(persona);
        
    }
    
}