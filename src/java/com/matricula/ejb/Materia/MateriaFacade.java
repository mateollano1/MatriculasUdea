/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.matricula.ejb.Materia;

import com.matricula.entity.Materia;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Usuario
 */
@Stateless
public class MateriaFacade extends AbstractFacade<Materia> implements MateriaFacadeLocal {

    @PersistenceContext(unitName = "MatriculasUdeaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MateriaFacade() {
        super(Materia.class);
    }
    
}
