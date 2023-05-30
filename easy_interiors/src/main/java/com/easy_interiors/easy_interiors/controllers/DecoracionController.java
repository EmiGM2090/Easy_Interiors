package com.easy_interiors.easy_interiors.controllers;

import com.easy_interiors.easy_interiors.dao.DecoracionDao;
import com.easy_interiors.easy_interiors.models.Decoracion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController //Indicicar que voy a manejar una URL (endpoints)
public class DecoracionController {

    @Autowired //Va a configurar automaticamente la conexion de "beans"
    private DecoracionDao decoracionDao;

    @RequestMapping(value = "control/administracion/decoraciones", method = RequestMethod.GET)
    public List<Decoracion> getDecoraciones(){
        return decoracionDao.getDecoraciones();

    }

    @RequestMapping(value = "control/administracion/decoracion/{id}", method = RequestMethod.GET)
    public Decoracion getDecoracion(@PathVariable Long id){
        return decoracionDao.getDecoracion(id);
    }
}
