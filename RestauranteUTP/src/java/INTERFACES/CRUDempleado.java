/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.Empleado;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDempleado {
    public List listar();
    public Empleado list(int id_empleado);
    public boolean add(Empleado em);
    public boolean edit(Empleado em);
    public boolean eliminar(int id_empleado);
    
    
}
