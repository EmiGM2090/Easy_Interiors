package com.easy_interiors.easy_interiors.dao;

import com.easy_interiors.easy_interiors.models.Decoracion;

import java.util.List;

public interface DecoracionDao {

    List<Decoracion> getDecoraciones();  //Especifico que debe existir el metodo "getDecoraciones"

    Decoracion getDecoracion(Long Id);  //Especifico que debe existir el metodo "getDecoracion" y recibe un parametro llamado Id

    void setDecoracion(Decoracion decoracion);  //Especifico que debe existir el metodo "setDecoracion" y recibe un parametro tipo Decoracion de nombre decoracion


}
