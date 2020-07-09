/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package INTERFACES;

import DTO.Cliente;
import DTO.Persona;
import java.util.List;

/**
 *
 * @author Gianpiero
 */
public interface CRUDcliente {
    public List listar();
    public Cliente list(int id);
    public boolean add(Cliente c);
    public boolean edit(Cliente c);
    public boolean eliminar(int id);
    public Cliente IniciarSesion(Persona persona);
    public boolean Registrar(Persona persona);
}
