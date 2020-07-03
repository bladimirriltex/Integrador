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
public class Vehiculo {
    private int id_vehiculo;
    private String placa;
    private String tipo;
    private String soat;

    public Vehiculo() {
    }

    public Vehiculo(int id_vehiculo, String placa, String tipo, String soat) {
        this.id_vehiculo = id_vehiculo;
        this.placa = placa;
        this.tipo = tipo;
        this.soat = soat;
    }
    
    

    public int getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(int id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getSoat() {
        return soat;
    }

    public void setSoat(String soat) {
        this.soat = soat;
    }
    
    
    
}
