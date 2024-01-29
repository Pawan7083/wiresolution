/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class CategoryDao {
    private SessionFactory factory;
    
    public CategoryDao(SessionFactory factory){
        this.factory=factory;
    }
    
    public boolean addCategory(Category category){
        boolean bool =false;
        try{
            Session session=factory.openSession();
            Transaction tx=session.beginTransaction();
            int i=(int) session.save(category);
            tx.commit();
            
            session.close();
            if(i>0)bool=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        return bool;
    }
}
