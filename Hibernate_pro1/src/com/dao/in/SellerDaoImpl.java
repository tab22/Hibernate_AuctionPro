package com.dao.in;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.in.Bidder;
import com.model.in.Seller;
import com.util.HibernateUtil;

public class SellerDaoImpl implements SellerDao {


	
	@Override
	public int insert(Seller e) {
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
		    Seller seller = (Seller) session.get(Seller.class, username);
		    if (password.equals(seller.getPassword())) {
		     System.out.println("User: " + seller.toString());
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
