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
public class Empleado extends Persona{
    private String ubicacion_empleado;
    private String estado_empleado;
    private int id_rol;
    private int id_vehiculo;

    public Empleado() {
    }

    

    public Empleado(int id, String nombres, String apellidos, String dni, String celular, String direccion, String correo, String password, int id_distrito) {
        super(id, nombres, apellidos, dni, celular, direccion, correo, password, id_distrito);
    }

    public Empleado(String ubicacion_empleado, String estado_empleado, int id_rol, int id_vehiculo) {
        this.ubicacion_empleado = ubicacion_empleado;
        this.estado_empleado = estado_empleado;
        this.id_rol = id_rol;
        this.id_vehiculo = id_vehiculo;
    }

    public Empleado(String ubicacion_empleado, String estado_empleado, int id_rol, int id_vehiculo, int id, String nombres, String apellidos, String dni, String celular, String direccion, String correo, String password, int id_distrito) {
        super(id, nombres, apellidos, dni, celular, direccion, correo, password, id_distrito);
        this.ubicacion_empleado = ubicacion_empleado;
        this.estado_empleado = estado_empleado;
        this.id_rol = id_rol;
        this.id_vehiculo = id_vehiculo;
    }
    
    

    public String getUbicacion_empleado() {
        return ubicacion_empleado;
    }

    public void setUbicacion_empleado(String ubicacion_empleado) {
        this.ubicacion_empleado = ubicacion_empleado;
    }

    public String getEstado_empleado() {
        return estado_empleado;
    }

    public void setEstado_empleado(String estado_empleado) {
        this.estado_empleado = estado_empleado;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public int getId_vehiculo() {
        return id_vehiculo;
    }

    public void setId_vehiculo(int id_vehiculo) {
        this.id_vehiculo = id_vehiculo;
    }
    
    
    
}
