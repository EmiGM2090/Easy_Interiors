package com.easy_interiors.easy_interiors.dao;

import com.easy_interiors.easy_interiors.models.Decoracion;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Transactional
public class DecoracionDaoImp implements DecoracionDao{

    @PersistenceContext  //Voy a ultilizar SQL
    EntityManager entityManager;  //Es una variable manejadora de BD

    @Override  //Especifico que mi metodo esta ejecutandose esperando interaccion
    @Transactional  //Especifico que mi metodo es una transaccion de datos
    public List<Decoracion> getDecoraciones() {  //Metodo que devuelve todos los usuarios en forma de lista
        String query = "FROM Decoracion";  //Guardo en texto una consulta SQL para mi BD, mi consulta selecciona todas las decoraciones
        return entityManager.createQuery(query).getResultList();  //Retorno la respuesta de mi consulta de SQL
    }

    @Override
    @Transactional
    public Decoracion getDecoracion(Long Id) {  //Metodo que devuelve una decoracion segun el id
        String query = "FROM Decoracion WHERE Id = "+ Id;  //Guardo en texto una consulta SQL para mi BD, mi consulta selecciona una decoracion segun el id
        return entityManager.createQuery(query, Decoracion.class).getSingleResult();  //Retorna la respuesta de mi consulta SQL(query)
    }

    @Override
    public void setDecoracion(Decoracion decoracion) {  //Metodo que añade una decoracion a la tabla decoraciones
        entityManager.merge(decoracion);  //Instruccion que une a la base de datos la decoracion que recibe el metodo
    }
}
