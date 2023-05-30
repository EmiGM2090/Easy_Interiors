package com.easy_interiors.easy_interiors.dao;

import com.easy_interiors.easy_interiors.models.Habitacion;
import com.easy_interiors.easy_interiors.models.Mueble;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
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

    @Override
    public List<Mueble> getMuebles2() {
        String query = "FROM Mueble";
        int valorEntero = (int) (Math.floor(Math.random()*(20-10+1)+10));
        List<Mueble> filtroMuebles = entityManager.createQuery(query).getResultList();
        List<Mueble> resultadoMuebles = new ArrayList<>();
        for (Mueble mueble:
             filtroMuebles) {
            if(mueble.getId()<valorEntero){
                resultadoMuebles.add(mueble);
            }
        }
        Collections.shuffle(resultadoMuebles);
        return resultadoMuebles;
    }

    @Override
    public List<Mueble> getMueblesFiltrados(Habitacion habitacion) {
        String query = "FROM Mueble";
        List<Mueble> muebles = entityManager.createQuery(query).getResultList();
        List<Mueble> resultMuebles = new ArrayList<>();
        for (Mueble mueble :
                muebles) {
            System.out.println("Las dimensiones son: " + mueble.getDimensiones());
            if(mueble.getDimensiones().equals("")){
                continue;
            }
            String[] partes = mueble.getDimensiones().split("x");
            System.out.println(mueble.getId());

            int cantidad1 = Integer.parseInt(partes[0]);
            int cantidad2 = Integer.parseInt(partes[1]);
            int cantidad3 = Integer.parseInt(partes[2]);

            int areaMueble = cantidad2 * cantidad3;
            int areaHabitacion = habitacion.getFront() * habitacion.getBottom();
            double nVeces = (double) (areaHabitacion/areaMueble);
            if((cantidad1*1.1) <= habitacion.getHigh() && nVeces>=1.5 && mueble.getTipoHabitacion().equals(habitacion.getTypeRoom())){
                resultMuebles.add(mueble);
            }
        }
        Collections.shuffle(resultMuebles);
        return resultMuebles;
    }
}
