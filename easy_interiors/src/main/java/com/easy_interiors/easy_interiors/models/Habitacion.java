package com.easy_interiors.easy_interiors.models;

import lombok.Getter;
import lombok.Setter;

public class Habitacion {
    @Getter @Setter
    private int high;
    @Getter @Setter
    private int front;
    @Getter @Setter
    private int bottom;
    @Getter @Setter
    private String typeRoom;
    @Getter @Setter
    private String palette;
}
