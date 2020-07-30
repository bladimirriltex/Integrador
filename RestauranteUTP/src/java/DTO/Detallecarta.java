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
public class Detallecarta {
    private int id_detalle;
    private int id_carta;
    private int id_plato;

    public Detallecarta(int id_detalle, int id_carta, int id_plato) {
        this.id_detalle = id_detalle;
        this.id_carta = id_carta;
        this.id_plato = id_plato;
    }

    public Detallecarta() {
    }
    
    

    public int getId_detalle() {
        return id_detalle;
    }

    public void setId_detalle(int id_detalle) {
        this.id_detalle = id_detalle;
    }

    public int getId_carta() {
        return id_carta;
    }

    public void setId_carta(int id_carta) {
        this.id_carta = id_carta;
    }

    public int getId_plato() {
        return id_plato;
    }

    public void setId_plato(int id_plato) {
        this.id_plato = id_plato;
    }
    
    
    
}
