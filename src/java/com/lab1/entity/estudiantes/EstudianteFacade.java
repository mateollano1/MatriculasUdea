/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab1.entity.estudiantes;

import com.lab1.entity.Estudiante;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author JuanPablo
 */
@Stateless
public class EstudianteFacade extends AbstractFacade<Estudiante> implements EstudianteFacadeLocal {

    @PersistenceContext(unitName = "Lab1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EstudianteFacade() {
        super(Estudiante.class);
    }

    @Override
    public boolean acceder(String id, String contrasena) {
         Query q = em.createQuery("SELECT e FROM Estudiante e where e.id = :id and e.contrasena = :contrasena");
        q.setParameter("id", id);
        q.setParameter("contrasena", contrasena);
        return q.getResultList().size()>0;
    }
    
    
    
}
