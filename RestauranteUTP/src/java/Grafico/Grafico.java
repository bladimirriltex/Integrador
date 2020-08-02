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
    
    public void generarGraficobyEntrada(String fecha){
        try {
            Conexion con = new Conexion();
            Connection conn=(Connection)con.getConnection();
            
            JasperReport reporte = null;
            String path = "\\src\\java\\graficos\\Entradas_popurlaridad";
            
            Map para= new HashMap();
            para.put("fecha",fecha);
            
            
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            
            JasperPrint jprint = JasperFillManager.fillReport(reporte, para, conn);
            
            
            
            JasperExportManager.exportReportToPdfFile( jprint, "D:/grafico_entradas.pdf");
            
        } catch (JRException ex) {
            System.out.println("error "+ ex);
        }
    }
    public void generarGraficobySegundo(String fecha){
        try {
            Conexion con = new Conexion();
            Connection conn=(Connection)con.getConnection();
            
            JasperReport reporte = null;
            String path = "\\src\\java\\graficos\\Segundos_popurlaridad";
            
            Map para= new HashMap();
            para.put("fecha",fecha);
            
            
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            
            JasperPrint jprint = JasperFillManager.fillReport(reporte, para, conn);
            
            
            
            JasperExportManager.exportReportToPdfFile( jprint, "D:/grafico_segundos.pdf");
            
        } catch (JRException ex) {
            System.out.println("error "+ ex);
        }
    }
    public void generarGraficobyExtra(String fecha){
        try {
            Conexion con = new Conexion();
            Connection conn=(Connection)con.getConnection();
            
            JasperReport reporte = null;
            String path = "\\src\\java\\graficos\\Extras_popurlaridad";
            
            Map para= new HashMap();
            para.put("fecha",fecha);
            
            
            
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
            
            JasperPrint jprint = JasperFillManager.fillReport(reporte, para, conn);
            
            
            
            JasperExportManager.exportReportToPdfFile( jprint, "D:/grafico_extras.pdf");
            
        } catch (JRException ex) {
            System.out.println("error "+ ex);
        }
    }
}

