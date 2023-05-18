package com.easy_interiors.easy_interiors.controllers;

import com.easy_interiors.easy_interiors.dao.MuebleDao;
import com.easy_interiors.easy_interiors.models.Mueble;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController // Indico que voy a manejar urls(endpoints)
public class MuebleController {
    @Autowired //Va a configurar automaticamente la conexion de "beans"
    private MuebleDao muebleDao;

    @RequestMapping(value = "control/administracion/muebles", method = RequestMethod.GET)
    public List<Mueble> getMuebles(){
        return muebleDao.getMuebles();
    }
    @RequestMapping(value = "control/administracion/mueble/{Id}")
    public Mueble getMueble (@PathVariable Long Id){
        return muebleDao.getMueble(Id);
    }


}
