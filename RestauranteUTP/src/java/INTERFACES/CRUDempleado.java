/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;


import DTO.Persona;
import DTO.empleado;

/**
 *
 * @author Edú
 */
public interface CRUDempleado {
    public empleado IniciarSesion(Persona persona);
    public List listar();
    public Empleado list(int id_empleado);
    public boolean add(Empleado em);
    public boolean edit(Empleado em);
    public boolean eliminar(int id_empleado);
    
}
>>>>>>> 4566e7b1de4b20a0c9097343399aef4080599f17
