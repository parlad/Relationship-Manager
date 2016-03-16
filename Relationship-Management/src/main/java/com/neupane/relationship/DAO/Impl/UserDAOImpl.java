/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.DAO.Impl;

import com.neupane.relationship.DAO.UserDAO;
import com.neupane.relationship.entity.Personal;
import com.neupane.relationship.entity.User;
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
public class UserDAOImpl implements UserDAO {

    EntityManagerFactory factory;
    EntityManager manager;

    public UserDAOImpl() {
        factory = Persistence.createEntityManagerFactory("dataSource");
        manager = factory.createEntityManager();
    }

    @Override
    public List<User> getAll() {
        Query query = manager.createQuery("SELECT p FROM user p");
        return (List<User>) query.getResultList();
    }

    @Override
    public int insert(User u) {
        EntityTransaction trans = manager.getTransaction();

        if (!trans.isActive()) {
            trans.begin();
        }
        manager.persist(u);
        manager.flush();
        trans.commit();
        return u.getId();
    }

    @Override
    public User getById(int id) {
        return (User)manager.find(User.class, id);
    }

}
