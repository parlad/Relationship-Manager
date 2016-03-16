/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neupane.relationship.DAO;

import com.neupane.relationship.entity.Personal;
import java.util.List;

/**
 *
 * @author parlad
 */
public interface PersonalDAO {

    List<Personal> getAll();

    int insert(Personal p);
    
    Personal getById(int id);

}
