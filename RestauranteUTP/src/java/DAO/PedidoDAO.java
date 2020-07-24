/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;
import DTO.Detallepedido;
import DTO.InfoPedido;
import DTO.encabezadoPedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author EDU
 */
public class PedidoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    encabezadoPedido e =null;
    
    public boolean RegistarheadPedido(encabezadoPedido encapedido) {
        String sql="INSERT INTO `encabezado_pedido` (`fecha_pedido`, `total_pedido`, `estado_pedido`, `id_cliente`, `id_empleado`, `tipo_pago`) VALUES (?,?,?,?,?,?);";
        boolean flag=false;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
 
            ps.setString(1,encapedido.getFecha());
            ps.setFloat(2,encapedido.getTotalpedido());
            ps.setString(3,encapedido.getEstado());
            ps.setInt(4,encapedido.getIdcliente());
            ps.setInt(5,encapedido.getIdempleado());
            ps.setString(6,encapedido.getTipopago());
           
            
            if(ps.executeUpdate()==1){
                
                System.out.println("inserto el pedido");
                return true;
            }
            
        } catch (NumberFormatException | SQLException e) {
            System.out.println("error pedidoDAO  "+e);
        }finally{
            try {
                if(rs!=null)rs.close();
                if(ps!=null)ps.close();
                
            } catch (SQLException e) {
                System.out.println("error pedidoDAO"+e);
            }
        }
        
        return flag;
        
    }
    
    public encabezadoPedido getEncabezado(int id){
        String sql="select * from encabezado_pedido WHERE id_cliente="+id+" order by fecha_pedido desc limit 1;";
        encabezadoPedido en=new encabezadoPedido();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                en.setIdpedido(rs.getInt(1));
                en.setFecha(rs.getString(2));
                en.setTotalpedido(rs.getFloat(3));
                en.setEstado(rs.getString(4));
                en.setIdcliente(rs.getInt(5));
                en.setIdempleado(rs.getInt(6));
                en.setTipopago(rs.getString(7));
                
                
            }
        }catch (Exception e){
            
        }return en;
    }
    
    
    
    
    
    
    public boolean RegistrarDetallePedido( Detallepedido detallepedido){
      String sql="INSERT INTO `detalle_pedido` (`id_plato`, `cantidad_plato`, `id_pedido`) VALUES (?,?,?);";
        boolean flag=false;
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
 
            
            ps.setInt(1,detallepedido.getIdplato());
            ps.setInt(2,detallepedido.getCantplato());
            ps.setInt(3,detallepedido.getIdpedido());
            
           
            
            if(ps.executeUpdate()==1){
                
                System.out.println("inserto el detalle pedido");
                return true;
            }
            
        } catch (NumberFormatException | SQLException e) {
            System.out.println("error pedidoDAO  "+e);
        }finally{
            try {
                if(rs!=null)rs.close();
                if(ps!=null)ps.close();
                
            } catch (SQLException e) {
                System.out.println("error pedidoDAO"+e);
            }
        }
        
        return flag;
    }
    
    public InfoPedido getinfPedido(int dni){
        String sql="SELECT encabezado_pedido.id_pedido,encabezado_pedido.fecha_pedido,encabezado_pedido.tipo_pago,empleado.nombre_empleado,encabezado_pedido.estado_pedido FROM `encabezado_pedido` join cliente on encabezado_pedido.id_cliente=cliente.id_cliente join empleado on encabezado_pedido.id_empleado=empleado.id_empleado WHERE cliente.dni_cliente="+dni+" ORDER by encabezado_pedido.fecha_pedido DESC LIMIT 1;";
        InfoPedido info=new InfoPedido();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                
                info.setIdpedido(rs.getInt(1));
                info.setFecha(rs.getString(2));
                info.setEstadopago(rs.getString(3));
                info.setNombrerepar(rs.getString(4));
                info.setEstadopedido(rs.getString(5));
 
                
            }
        }catch (SQLException e){
            System.out.println("error en obtener info pedido"+ e);
        }
        
        return info;
        
        
    }
    
    
    
   /*public static void main(String[] args) {
        PedidoDAO ped=new PedidoDAO();
        InfoPedido detallepedido=new InfoPedido();
        
        
       detallepedido=ped.getinfPedido(71764584);
        System.out.println(detallepedido.getEstadopedido());
   }*/
}
    
