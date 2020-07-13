/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author BaiaBaia
 */
public class Carta {
    private int id_carta;
    private String fecha_carta;
    private int entrada1;
    private int entrada2;
    private int entrada3;
    private int segundo1;
    private int segundo2;
    private int segundo3;
    private int extra1;
    private int extra2;
    private int extra3;

    public Carta() {
    }

    public Carta(int id_carta, String fecha_carta, int entrada1, int entrada2, int entrada3, int segundo1, int segundo2, int segundo3, int extra1, int extra2, int extra3) {
        this.id_carta = id_carta;
        this.fecha_carta = fecha_carta;
        this.entrada1 = entrada1;
        this.entrada2 = entrada2;
        this.entrada3 = entrada3;
        this.segundo1 = segundo1;
        this.segundo2 = segundo2;
        this.segundo3 = segundo3;
        this.extra1 = extra1;
        this.extra2 = extra2;
        this.extra3 = extra3;
    }
    
    

    public int getId_carta() {
        return id_carta;
    }

    public void setId_carta(int id_carta) {
        this.id_carta = id_carta;
    }

    public String getFecha_carta() {
        return fecha_carta;
    }

    public void setFecha_carta(String fecha_carta) {
        this.fecha_carta = fecha_carta;
    }

    public int getEntrada1() {
        return entrada1;
    }

    public void setEntrada1(int entrada1) {
        this.entrada1 = entrada1;
    }

    public int getEntrada2() {
        return entrada2;
    }

    public void setEntrada2(int entrada2) {
        this.entrada2 = entrada2;
    }

    public int getEntrada3() {
        return entrada3;
    }

    public void setEntrada3(int entrada3) {
        this.entrada3 = entrada3;
    }

    public int getSegundo1() {
        return segundo1;
    }

    public void setSegundo1(int segundo1) {
        this.segundo1 = segundo1;
    }

    public int getSegundo2() {
        return segundo2;
    }

    public void setSegundo2(int segundo2) {
        this.segundo2 = segundo2;
    }

    public int getSegundo3() {
        return segundo3;
    }

    public void setSegundo3(int segundo3) {
        this.segundo3 = segundo3;
    }

    public int getExtra1() {
        return extra1;
    }

    public void setExtra1(int extra1) {
        this.extra1 = extra1;
    }

    public int getExtra2() {
        return extra2;
    }

    public void setExtra2(int extra2) {
        this.extra2 = extra2;
    }

    public int getExtra3() {
        return extra3;
    }

    public void setExtra3(int extra3) {
        this.extra3 = extra3;
    }
    
    
}
