/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.models;

/**
 *
 * @author sergi
 */
public class Usuarios {
    
    private int id_usuario;
    private String username,nombre,correo,pass,telefono,arma,equipo,meza,cuarto;

    public Usuarios() {
    }

    public Usuarios(String username, String nombre, String correo, String pass, String telefono, String arma, String equipo, String meza, String cuarto) {
        this.username = username;
        this.nombre = nombre;
        this.correo = correo;
        this.pass = pass;
        this.telefono = telefono;
        this.arma = arma;
        this.equipo = equipo;
        this.meza = meza;
        this.cuarto = cuarto;
    }

    public Usuarios(int id_usuario, String username, String nombre, String correo, String pass, String telefono, String arma, String equipo, String meza, String cuarto) {
        this.id_usuario = id_usuario;
        this.username = username;
        this.nombre = nombre;
        this.correo = correo;
        this.pass = pass;
        this.telefono = telefono;
        this.arma = arma;
        this.equipo = equipo;
        this.meza = meza;
        this.cuarto = cuarto;
    }

    public Usuarios(String arma, String equipo, String meza, String cuarto) {
        this.arma = arma;
        this.equipo = equipo;
        this.meza = meza;
        this.cuarto = cuarto;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getArma() {
        return arma;
    }

    public void setArma(String arma) {
        this.arma = arma;
    }

    public String getEquipo() {
        return equipo;
    }

    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }

    public String getMeza() {
        return meza;
    }

    public void setMeza(String meza) {
        this.meza = meza;
    }

    public String getCuarto() {
        return cuarto;
    }

    public void setCuarto(String cuarto) {
        this.cuarto = cuarto;
    }
    
    
    


  
    
}
