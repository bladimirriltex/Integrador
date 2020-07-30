/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Grafico;

import CONEXION.Conexion;
import com.mysql.jdbc.Connection;
import java.util.HashMap;
import java.util.Map;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

/**
 *
 * @author BaiaBaia
 */
public class Grafico {
    
    public void generarGraficoFecha(String fecha){
        try {
            Conexion con = new Conexion();
            Connection conn=(Connection)con.getConnection();
            
            JasperReport reporte = null;
            String path = "\\src\\java\\graficos\\Plato_popularidad.jasper";
            
            Map para= new HashMap();
            para.put("id_pedido",fecha);
            
            
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            
            JasperPrint jprint = JasperFillManager.fillReport(reporte, para, conn);
            
            
            
            JasperExportManager.exportReportToPdfFile( jprint, "D:/reporte.pdf");
            
        } catch (JRException ex) {
            System.out.println("error "+ ex);
        }
    }
}
