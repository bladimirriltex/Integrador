/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import CONEXION.Conexion;
import DTO.Detallepedido;
import DTO.InfoPedido;
import DTO.ListaPedido;
import DTO.PedidoListos;
import DTO.encabezadoPedido;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EDU
 */
public class PedidoDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    encabezadoPedido e = null;

    public boolean RegistarheadPedido(encabezadoPedido encapedido) {
        String sql = "INSERT INTO `encabezado_pedido` (`fecha_pedido`, `total_pedido`, `estado_pedido`, `id_cliente`, `tipo_pago`,`latitud`,`longitud`) VALUES (?,?,?,?,?,?,?);";
        boolean flag = false;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, encapedido.getFecha());
            ps.setFloat(2, encapedido.getTotalpedido());
            ps.setString(3, encapedido.getEstado());
            ps.setInt(4, encapedido.getIdcliente());
            ps.setString(5, encapedido.getTipopago());
            ps.setString(6, encapedido.getLat());
            ps.setString(7, encapedido.getLng());

            if (ps.executeUpdate() == 1) {

                System.out.println("inserto el pedido");
                return true;
            }

        } catch (NumberFormatException | SQLException e) {
            System.out.println("error pedidoDAO  " + e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }

            } catch (SQLException e) {
                System.out.println("error pedidoDAO" + e);
            }
        }

        return flag;

    }

    public encabezadoPedido getEncabezado(int id) {
        String sql = "select * from encabezado_pedido WHERE id_cliente=" + id + " order by fecha_pedido desc limit 1;";
        encabezadoPedido en = new encabezadoPedido();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                en.setIdpedido(rs.getInt(1));
                en.setFecha(rs.getString(2));
                en.setTotalpedido(rs.getFloat(3));
                en.setEstado(rs.getString(4));
                en.setIdcliente(rs.getInt(5));
                en.setIdempleado(rs.getInt(6));
                en.setTipopago(rs.getString(7));

            }
        } catch (Exception e) {

        }
        return en;
    }

    public boolean RegistrarDetallePedido(Detallepedido detallepedido) {
        String sql = "INSERT INTO `detalle_pedido` (`id_plato`, `cantidad_plato`, `id_pedido`) VALUES (?,?,?);";
        boolean flag = false;

        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            ps.setInt(1, detallepedido.getIdplato());
            ps.setInt(2, detallepedido.getCantplato());
            ps.setInt(3, detallepedido.getIdpedido());

            if (ps.executeUpdate() == 1) {

                System.out.println("inserto el detalle pedido");
                return true;
            }

        } catch (NumberFormatException | SQLException e) {
            System.out.println("error pedidoDAO  " + e);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }

            } catch (SQLException e) {
                System.out.println("error pedidoDAO" + e);
            }
        }

        return flag;
    }

    public encabezadoPedido getinfPedido(int id) {
        String sql = "SELECT * FROM `encabezado_pedido` WHERE id_pedido="+id;
        encabezadoPedido info = new encabezadoPedido();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                info.setIdpedido(rs.getInt(1));
                info.setFecha(rs.getString(2));
                info.setEstado(rs.getString(4));
                info.setIdempleado(rs.getInt(6));
                info.setTipopago(rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println("error en obtener info pedido" + e);
        }

        return info;

    }

    public List ListarPedidos() {
        List<ListaPedido> list = new ArrayList<>();
        String sql = "SELECT encabezado_pedido.id_pedido,plato.nombre_plato,detalle_pedido.cantidad_plato,encabezado_pedido.estado_pedido FROM `encabezado_pedido` JOIN detalle_pedido on detalle_pedido.id_pedido=encabezado_pedido.id_pedido join plato on plato.id_plato=detalle_pedido.id_plato ORDER by encabezado_pedido.id_pedido ASC";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ListaPedido ped = new ListaPedido();
                ped.setIdpedido(rs.getInt(1));
                ped.setNomplato(rs.getString(2));
                ped.setCant(rs.getInt(3));
                ped.setEstadopedido(rs.getString(4));
                list.add(ped);

            }
        } catch (Exception e) {

        }
        return list;
    }

    public List ListarPedidosListos() {
        List<PedidoListos> listos = new ArrayList<>();
        String sql = "SELECT encabezado_pedido.id_pedido,cliente.nombre_cliente,cliente.apellidos_cliente,cliente.direccion_cliente,encabezado_pedido.total_pedido,encabezado_pedido.tipo_pago,encabezado_pedido.estado_pedido FROM `encabezado_pedido` join cliente on cliente.id_cliente=encabezado_pedido.id_cliente where encabezado_pedido.estado_pedido='Listo' && encabezado_pedido.id_empleado is null ORDER BY id_pedido ASC";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                PedidoListos ped = new PedidoListos();
                ped.setIdpedido(rs.getInt(1));
                ped.setNombrecliente(rs.getString(2));
                ped.setApecliente(rs.getString(3));
                ped.setDireccion(rs.getString(4));
                ped.setTotal(rs.getDouble(5));
                ped.setTipopago(rs.getString(6));
                ped.setEstado(rs.getString(7));
                listos.add(ped);

            }
        } catch (Exception e) {

        }
        return listos;
    }

    public boolean CambiarEstadoPedido(String estado, int id) {
        String sql = "UPDATE `encabezado_pedido` SET `estado_pedido` = '" + estado + "' WHERE `encabezado_pedido`.`id_pedido` = " + id + " ";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }

    public boolean SeleccionarPedido(int idpedido, int idemp) {
        String sql = "UPDATE `encabezado_pedido` SET `id_empleado` = '" + idemp + "' WHERE `encabezado_pedido`.`id_pedido` =" + idpedido;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {

        }
        return false;
    }
    
    
    public encabezadoPedido ubicacionPedido(String id){
        
        String sql = "SELECT latitud, longitud FROM `encabezado_pedido` where id_pedido="+id;
        encabezadoPedido ubi = new encabezadoPedido();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                ubi.setLat(rs.getString(1));
                ubi.setLng(rs.getString(2));
               

            }
        } catch (SQLException e) {
            System.out.println("error en obtener info pedido" + e);
        }

        return ubi;
        
       
    }

    
    
   public static void main(String[] args) {
        PedidoDAO ped=new PedidoDAO();
        
        encabezadoPedido enca=new encabezadoPedido();
        
        
        
        
        enca=ped.getinfPedido(13);
        
        System.out.println(enca.getIdempleado());
        
     
   }
}
