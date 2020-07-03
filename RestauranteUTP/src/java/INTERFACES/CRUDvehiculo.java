/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.Vehiculo;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDvehiculo {
    public List listar();
    public Vehiculo list(int id_vehiculo);
    public boolean add(Vehiculo v);
    public boolean edit(Vehiculo v);
    public boolean eliminar(int id_vehiculo);
    
    
}
