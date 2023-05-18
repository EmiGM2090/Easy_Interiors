package com.easy_interiors.easy_interiors.dao;

import com.easy_interiors.easy_interiors.models.Mueble;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository

@Transactional
public class MuebleDaoImp implements MuebleDao {

    @PersistenceContext  //Voy a utilizar SQL
    EntityManager entityManager; //Es una variable manejadora de BD

    @Override  //Especifico que mi metodo está ejecutandose esperando interaccion
    @Transactional //Especifico que mi metodo es una transacción de datos
    public List<Mueble> getMuebles() { //Metodo que devuelve todos los muebles en forma de lista
        String query = "FROM Mueble";  //guardo en texto una consulta sql para mi BD, MI CONSULTA SELECCIONA TODOS LOS MUEBLES
        return entityManager.createQuery(query).getResultList(); //retorno la respuesta de mi consulta de sql(query)
    }

    @Override
    @Transactional
    public Mueble getMueble(Long Id) {  //Metodo que devuelve un mueble segun el id
        String query = "FROM Mueble WHERE id = "+Id; //guardo en texto una consulta sql para mi BD, Mi CONSULTA selecciona un mueble segun el id
        return entityManager.createQuery(query, Mueble.class).getSingleResult(); //retorno la respuesta  de mi consulta de sql(query)
    }

    @Override
    public void setMueble(Mueble mueble) { //Metodo que resive un mueble y lo añade a la tabla muebles
        entityManager.merge(mueble); //Instruccion que une a la base de datos el mueble que recibe el metodo



    }
}
