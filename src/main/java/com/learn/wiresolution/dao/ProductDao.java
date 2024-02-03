/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.Product;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class ProductDao {

    SessionFactory factory;

    public ProductDao(SessionFactory factory) {
        this.factory = factory;
    }

    public boolean addProduct(Product product) {
        boolean bool = false;
        try {
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(product);
            tx.commit();
            session.close();
            bool=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
    
    public List<Product> getAllProducts(){
        List<Product> product=null;
        try{
           Session session= factory.openSession();
           Query query = session.createQuery("from Product");
           product = query.list();
           session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return product;
    }
}
