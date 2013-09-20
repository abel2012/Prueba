/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.prueba.ejer1;

/**
 *
 * @author alumno
 */
public class Persona {
    private String dni;
    private String nombre;
    private String ap1;
    private Sexo sexo;

    public Persona() {
    }

    ;
    
    public Persona(String dni,String nombre, String ap1, Sexo sexo) {
        this.dni = dni;
        this.nombre = nombre;
        this.ap1 = ap1;
        this.sexo = sexo;
    }

    /**
     * @return the nombre
     */
    
    public String getNombreCompleto(){
    return this.nombre +  ""   + this.ap1;
    }
            
    public String getNombre() {
        return this.nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the ap1
     */
    public String getAp1() {
        return this.ap1;
    }

    /**
     * @param ap1 the ap1 to set
     */
    public void setAp1(String ap1) {
        this.ap1 = ap1;
    }

    /**
     * @return the sexo
     */
    public Sexo getSexo() {
        return this.sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the dni
     */
    public String getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(String dni) {
        this.dni = dni;
    }
    /**
     * @return the persona
     */
}
