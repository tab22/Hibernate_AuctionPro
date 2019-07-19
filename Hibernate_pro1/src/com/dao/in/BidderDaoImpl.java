package com.dao.in;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import com.util.*;
import com.model.in.*;

public class BidderDaoImpl implements BidderDao {
        @Override
		public int insert(Bidder e) {
			
			Session session = null;;
			Transaction tx = null;
			int id=1;
			try {
				session = HibernateUtil.getSession();
				tx = session.beginTransaction();
				 session.save(e);
				System.out.println("Record Id "+id);
				tx.commit();
			} catch (HibernateException h) {
				System.out.println(h);
			} finally {
				session.close();
				HibernateUtil.closeSessionFactory();
			}
			return id;

			
		}

        
            
		@Override
		public boolean login(String username, String password) {
		
			 Session session = HibernateUtil.getSession();
			  if (session != null) {
			   try {
			    Bidder bidder = (Bidder) session.get(Bidder.class, username);
			    if (password.equals(bidder.getPassword())) {
			     System.out.println("User: " + bidder.toString());
			     return true;
			    }
			   } catch (Exception exception) {
			    System.out.println("Exception occred while reading user data: "
			      + exception.getMessage());
			    return false;
			   }

			  } else {
			   System.out.println("DB server down.....");
			  }
			  return false;
		
		
		
		
		}


		
	}


