/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Gianpiero
 */
public class Plato {
    private int id_plato;
    
    private String nombre_plato;
    private float precio_plato;
    private String imagen;
    private int stock;
    private int id_tipo;

    public Plato() {
    }

    public Plato(int id_plato, String nombre_plato, float precio_plato, String imagen, int stock, int id_tipo) {
        this.id_plato = id_plato;
        this.nombre_plato = nombre_plato;
        this.precio_plato = precio_plato;
        this.imagen = imagen;
        this.stock = stock;
        this.id_tipo = id_tipo;
    }
    

    public int getId_plato() {
        return id_plato;
    }

    public void setId_plato(int id_plato) {
        this.id_plato = id_plato;
    }

    public String getNombre_plato() {
        return nombre_plato;
    }

    public void setNombre_plato(String nombre_plato) {
        this.nombre_plato = nombre_plato;
    }

    public float getPrecio_plato() {
        return precio_plato;
    }

    public void setPrecio_plato(float precio_plato) {
        this.precio_plato = precio_plato;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }
    
    

}
