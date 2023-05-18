package com.easy_interiors.easy_interiors.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity  //Declarar clase como identidad
@Table(name = "decoraciones")  //Especificar la tabla a la que hace referencia
@ToString @EqualsAndHashCode //Darle formato de salida a una consulta en forma de texto

public class Decoracion {
    @Id  //Especifico que hablo de un Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  //Especifico que es autoincrementable
    @Getter @Setter @Column(name = "Id")  //Especifico que mi propiedad tendra Getters y Setters, y hace referencia a la columna Id
    private Long Id;  //Declaro mi propiedad que se encuentra en la base de datos

    @Getter @Setter @Column(name = "Nombre")
    private String Nombre;

    @Getter @Setter @Column(name = "Dimensiones")
    private String Dimensiones;

    @Getter @Setter @Column(name = "TipoHabitacion")
    private String TipoHabitacion;

    @Getter @Setter @Column(name = "Color")
    private String Color;

    @Getter @Setter @Column(name = "Precio")
    private double Precio;
}
