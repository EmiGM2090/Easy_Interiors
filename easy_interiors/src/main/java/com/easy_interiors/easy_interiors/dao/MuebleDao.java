package com.easy_interiors.easy_interiors.dao;

import com.easy_interiors.easy_interiors.models.Mueble;

import java.util.List;

public interface MuebleDao {

    List<Mueble> getMuebles(); //Especifico que debe existir el metodo "getMuebles"

    Mueble getMueble(Long Id); //Especifico que debe existir el metodo "getMueble" y resive un parametro llamado id

    void setMueble(Mueble mueble); //Especifico que debe existir el metodo "SetMueble" Y resive un parametro tipo Mueble de nombre Mueble
}
