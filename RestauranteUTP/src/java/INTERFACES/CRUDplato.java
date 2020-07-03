/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;

import DTO.Plato;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDplato {
    public List listar();
    public Plato list(int id);
    public boolean add(Plato pl);
    public boolean edit(Plato pl);
    public boolean eliminar(int id_plato);
    
    
}
