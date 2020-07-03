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
public class Cliente extends Persona{

    public Cliente() {
    }


    public Cliente(int id, String nombres, String apellidos, String dni, String celular, String direccion, String correo, String password, int id_distrito) {
        super(id, nombres, apellidos, dni, celular, direccion, correo, password, id_distrito);
    }
    
    

    
}
