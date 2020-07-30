/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author BaiaBaia
 */
public class encabezadoCarta {
    private int id_carta;
    private String fecha_carta;
    

    public encabezadoCarta() {
    }

    public encabezadoCarta(int id_carta, String fecha_carta) {
        this.id_carta = id_carta;
        this.fecha_carta = fecha_carta;
    }
    
    

    public int getId_carta() {
        return id_carta;
    }

    public void setId_carta(int id_carta) {
        this.id_carta = id_carta;
    }

    public String getFecha_carta() {
        return fecha_carta;
    }

    public void setFecha_carta(String fecha_carta) {
        this.fecha_carta = fecha_carta;
    }

    
}
