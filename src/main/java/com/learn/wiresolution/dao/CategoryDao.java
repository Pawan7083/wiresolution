/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.Category;
import com.learn.wiresolution.helper.FactoryProvider;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class CategoryDao {

    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean addCategory(Category category) {
        boolean bool = false;
        try {
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            int i = (int) session.save(category);
            tx.commit();

            session.close();
            if (i > 0) {
                bool = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return bool;
    }

    public List<Category> getCategory() {
        List<Category> category=null;
        try {
            Session session= factory.openSession();
            Query query=session.createQuery("from Category");
            category = query.list();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return category;
    }
    
    public Category getCategory(int categoryId){
        Category category=null;
        try{
            Session session = factory.openSession();
            category= (Category)session.get(Category.class, categoryId);
            session.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return category;
    }
//    public static void main(String[] args) {
//        CategoryDao category= new CategoryDao(FactoryProvider.getFactory());
//        category.getCategory();
//    }
}
