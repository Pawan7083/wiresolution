
package com.learn.wiresolution.dao;

import com.learn.wiresolution.entities.User;
import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Pawan Kumar
 */
public class UserDao {
    private SessionFactory factory;
    public UserDao(SessionFactory factory){
        this.factory=factory;
    }
    public User getUserByEmail(String email){
        User user=null;
        try{
            Session session=factory.openSession();
            String query="from User where userEmail=:e";
            Query q=session.createQuery(query);
            q.setParameter("e", email);
            user=(User)q.uniqueResult();
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    public User getUserByEmailAndPassword(String email,String password){
        User user=null;
        try{
            String query="from User where userEmail=:e and userPassword=:p";
            Session session = factory.openSession();
            Query q= session.createQuery(query);
            q.setParameter("e",email);
            q.setParameter("p",password);
            user=(User)q.uniqueResult();
            session.close();
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    public boolean addUser(User user){
        boolean i=false;
        try{
            Session session=factory.openSession();
            Transaction tx= session.beginTransaction();
            session.save(user);
            tx.commit();
            session.close();
            i=true;
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return i;
    }
    
    
}
