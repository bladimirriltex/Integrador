/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.encabezadoCarta;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDcarta {
    public List listar();
    public encabezadoCarta list(int id_carta);
    public boolean add(encabezadoCarta enca);
    public boolean edit(encabezadoCarta enca);
    public boolean eliminar(int id_carta);
    
    
}
