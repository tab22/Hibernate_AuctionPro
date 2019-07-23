package com.services.in;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.model.in.Bidder;
import com.model.in.Seller;
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
    
    
    
    public boolean authenticateSeller(String email, String password) {
        Seller seller = getSellerByUserId(email);         
        if(seller!=null && seller.getEmail().equals(email) && seller.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
    
    public Seller getSellerByUserId(String email) {
        Session session = HibernateUtil.getSession();
        org.hibernate.Transaction tx = null;
        Seller seller = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Seller where email='"+email+"'");
            seller = (Seller)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return seller;
    }
    
    
    
    public List<Seller> getListOfSeller(){
        List<Seller> list1 = new ArrayList<Seller>();
        Session session = HibernateUtil.getSession();
        org.hibernate.Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            list1 = session.createQuery("from Seller").list();                       
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list1;
    }
    
    

}