
package com.learn.wiresolution.helper;
import org.hibernate.HibernateException;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;


public class FactoryProvider {
    private static SessionFactory factory;
    public static SessionFactory getFactory(){
        try{
            if(factory==null){
                factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
            }
        }catch(HibernateException e){
            e.printStackTrace();
        }
        
        return factory;
    }
    public static void main(String arg[]){
        SessionFactory factory=FactoryProvider.getFactory();
        System.out.println(factory);
        
    }
}
