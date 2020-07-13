/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.Carta;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDcarta {
    public List listar();
    public Carta list(int id_carta);
    public boolean add(Carta ca);
    public boolean edit(Carta ca);
    public boolean eliminar(int id_carta);
    
    
}
