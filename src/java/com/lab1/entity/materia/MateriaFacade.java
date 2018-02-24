/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab1.entity.materia;

import com.lab1.entity.Materia;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author JuanPablo
 */
@Stateless
public class MateriaFacade extends AbstractFacade<Materia> implements MateriaFacadeLocal {

    @PersistenceContext(unitName = "Lab1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MateriaFacade() {
        super(Materia.class);
    }
    
}
