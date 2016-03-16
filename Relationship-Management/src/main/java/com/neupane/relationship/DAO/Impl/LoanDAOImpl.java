/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.DAO.Impl;

import com.neupane.relationship.DAO.LoanDAO;
import com.neupane.relationship.entity.Loan;
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
public class LoanDAOImpl implements LoanDAO {

    EntityManagerFactory factory;
    EntityManager manager;

    public LoanDAOImpl() {
        factory = Persistence.createEntityManagerFactory("dataSource");
        manager = factory.createEntityManager();
    }

    @Override
    public List<Loan> getAll() {
        Query query = manager.createQuery("SELECT l FROM Loan l");
        return (List<Loan>) query.getResultList();
    }

    @Override
    public int insert(Loan l) {
        EntityTransaction trans = manager.getTransaction();

        if (!trans.isActive()) {
            trans.begin();
        }
        manager.persist(l);
        manager.flush();
        trans.commit();
        return l.getId();
    }

    @Override
    public Loan getById(int id) {
       return (Loan)manager.find(Loan.class, id);
    }

}
