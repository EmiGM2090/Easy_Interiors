package com.easy_interiors.easy_interiors.models;


import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity    //Declarar clase como identidad
@Table(name = "muebles")  //Especificar la tabla a la que hace referecia
@ToString @EqualsAndHashCode // Darle el formato de salida a un texto
public class   Mueble {
    @Id  //escifico que habló de un id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //especifico que es autoincrementable
    @Getter @Setter @Column(name = "id") //epecifico que mi propiedad tendrá getter y setters, y hace referencia a la columna id
    private Long id; //declaro mi propiedad que se encuentra en la base de datos

    @Getter @Setter @Column(name = "Nombre")
    private String Nombre;

    @Getter @Setter @Column(name = "Dimensiones")
    private String Dimensiones;

    @Getter @Setter @Column(name = "Tipo Habitación")
    private String TipoHabitacion;

    @Getter @Setter @Column(name = "Color")
    private String Color;

    @Getter @Setter @Column(name = "Precio")
    private double Precio;
}

