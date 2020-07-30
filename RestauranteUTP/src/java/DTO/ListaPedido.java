/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author EDU
 */
public class ListaPedido {
    private int idpedido;
    private String nomplato;
    private int cant;
    private String estadopedido;

    public int getIdpedido() {
        return idpedido;
    }

    public void setIdpedido(int idpedido) {
        this.idpedido = idpedido;
    }

    public String getNomplato() {
        return nomplato;
    }

    public void setNomplato(String nomplato) {
        this.nomplato = nomplato;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public String getEstadopedido() {
        return estadopedido;
    }

    public void setEstadopedido(String estadopedido) {
        this.estadopedido = estadopedido;
    }
    
    
}
