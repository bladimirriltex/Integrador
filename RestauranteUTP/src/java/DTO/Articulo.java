/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Edú
 */
public class Articulo {
    private int id_plato;
    private int cantidad;

    public Articulo(int id_plato, int cantidad) {
        this.id_plato = id_plato;
        this.cantidad = cantidad;
    }
    
    

    public int getId_plato() {
        return id_plato;
    }

    public void setId_plato(int id_plato) {
        this.id_plato = id_plato;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
}
