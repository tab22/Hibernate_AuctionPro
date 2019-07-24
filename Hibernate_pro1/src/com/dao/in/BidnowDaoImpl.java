package com.dao.in;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.in.Bidnow;
import com.util.HibernateUtil;

public class BidnowDaoImpl implements BidnowDao{

	@Override
	public int insert(Bidnow b) {
		Session session = null;;
		Transaction tx = null;
		int id=1;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			 session.save(b);
			System.out.println("Record Id "+id);
			tx.commit();
		} catch (HibernateException h) {
			System.out.println(h);
		} finally {
			session.close();
			//HibernateUtil.closeSessionFactory();
		}
		return id;
	
	}

}
