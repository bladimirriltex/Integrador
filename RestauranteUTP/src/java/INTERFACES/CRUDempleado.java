/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.Persona;
import DTO.Empleado;
import java.util.List;

/**
 *
 * @author Edú
 */
public interface CRUDempleado {
    public Empleado IniciarSesion(Persona persona);
    public List listar();
    public Empleado list(int id_empleado);
    public boolean add(Empleado em);
    public boolean edit(Empleado em);
    public boolean eliminar(int id_empleado);
    
}

