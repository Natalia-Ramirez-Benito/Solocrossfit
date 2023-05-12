/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hito.model;

/**
 *
 * @author natal
 */
public class User {
    public String nombre;
    public String plan;
    public double peso;
    public String categoria;
    public int eventos;
    public int horasExtra;
    
    public User() {}

    public User(String nombre, String plan, double peso, String categoria, int eventos, int horasExtra) {
        super();
        this.nombre = nombre;
        this.plan = plan;
        this.peso = peso;
        this.categoria = categoria;
        this.eventos = eventos;
        this.horasExtra = horasExtra;  
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPlan() {
        return plan;
    }

    public void setPlan(String plan) {
        this.plan = plan;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getEventos() {
        return eventos;
    }

    public void setEventos(int eventos) {
        this.eventos = eventos;
    }

    public int getHorasExtra() {
        return horasExtra;
    }

    public void setHorasExtra(int horasExtra) {
        this.horasExtra = horasExtra;
    }


}