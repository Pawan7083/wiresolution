/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.Message;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class MessageDao {
    SessionFactory factory;

    public MessageDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public boolean addMessage(Message message){
        boolean bool=false;
        try{
   
        Session session=factory.openSession();
        Transaction tx=session.beginTransaction();
        session.save(message);
        tx.commit();
        session.close();
        bool=true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return bool;
    }
}
