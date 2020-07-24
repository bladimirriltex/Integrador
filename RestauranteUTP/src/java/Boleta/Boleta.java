/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Boleta;

import CONEXION.Conexion;
import com.mysql.jdbc.Connection;
import java.util.HashMap;
import java.util.Map;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author EDU
 */
public class Boleta {
    
    
    public static void main(String[] args) {
        Boleta bol=new Boleta();
        bol.generarBoleta(6);
    }
    
    public void generarBoleta(int idpedido){
        try {
            Conexion con = new Conexion();
            Connection conn=(Connection)con.getConnection();
            
            JasperReport reporte = null;
            String path = "C:\\Users\\EDU\\Documents\\Trabajos de la u\\UTPRestaurante\\IntegradorRestauranteUTP\\RestauranteUTP\\src\\java\\jreport\\Boletas.jasper";
            
            Map para= new HashMap();
            para.put("id_pedido",idpedido);
            
            
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            
            JasperPrint jprint = JasperFillManager.fillReport(reporte, para, conn);
            
            
            
            JasperExportManager.exportReportToPdfFile( jprint, "D:/reporte.pdf");
            
        } catch (JRException ex) {
            System.out.println("error "+ ex);
        }
    }
    
}
