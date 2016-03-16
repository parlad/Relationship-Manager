/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.DAO.Impl;

import com.neupane.relationship.DAO.PersonalDAO;
import com.neupane.relationship.entity.Personal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author parlad
 */
public class PersonalDAOImpl implements PersonalDAO {

    EntityManagerFactory factory;
    EntityManager manager;

    public PersonalDAOImpl() {
        factory = Persistence.createEntityManagerFactory("dataSource");
        manager = factory.createEntityManager();
    }

    @Override
    public List<Personal> getAll() {
        Query query;
        query = manager.createQuery("SELECT p FROM Personal p");
        return (List<Personal>) query.getResultList();
    }

    @Override
    public int insert(Personal p) {
        EntityTransaction trans = manager.getTransaction();

        if (!trans.isActive()) {
            trans.begin();
        }
        manager.persist(p);
        manager.flush();
        trans.commit();
        return p.getuID();
    }

    @Override
    public Personal getById(int id) {
        return (Personal) manager.find(Personal.class, id);
    }

}
