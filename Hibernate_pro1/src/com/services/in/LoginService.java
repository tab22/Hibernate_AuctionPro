package com.services.in;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.model.in.Bidder;
import com.util.HibernateUtil;

public class LoginService {
    public boolean authenticateUser(String email, String password) {
        Bidder bidder = getUserByUserId(email);         
        if(bidder!=null && bidder.getEmail().equals(email) && bidder.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public Bidder getUserByUserId(String email) {
        Session session = HibernateUtil.getSession();
        org.hibernate.Transaction tx = null;
        Bidder bidder = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Bidder where email='"+email+"'");
            bidder = (Bidder)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return bidder;
    }
     
    public List<Bidder> getListOfUsers(){
        List<Bidder> list = new ArrayList<Bidder>();
        Session session = HibernateUtil.getSession();
        org.hibernate.Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Bidder").list();                       
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }

}