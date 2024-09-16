/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.Cart;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class CartDao {
    SessionFactory factory;

    public CartDao() {
    }

    public CartDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public boolean addCart(Cart cart){
        boolean bool = false;
        try {
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(cart);
            tx.commit();
            session.close();
            bool=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bool;
        
    }
    public int getCart(int userId, int productId){
        int i =0;
        try{
            Session session= factory.openSession();
            String query= "from Cart where userId=:x and productId=:y";
            Query q= session.createQuery(query);
            q.setParameter("x", userId);
            q.setParameter("y",productId);
            q.executeUpdate();
            i++;
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return i;
    }
    
    public List<Cart> getAllCart(int userId){
        List<Cart> cart=null;
        try{
           Session session= factory.openSession();
           Query query = session.createQuery("from Cart where userId=:x");
           query.setParameter("x", userId);
           cart = query.list();
           session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return cart;
    }
    
    public boolean removeCart(int userId, int productId){
        boolean bool = false;
        try {
            Session session = factory.openSession();
            Transaction tx = session.beginTransaction();
            String query= "delete from Cart where userId=:x and productId=:y";
            Query q= session.createQuery(query);
            q.setParameter("x", userId);
            q.setParameter("y",productId);
            q.executeUpdate();
            bool= true;
            tx.commit();
            session.close();
            bool=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bool;
    }
    
}
