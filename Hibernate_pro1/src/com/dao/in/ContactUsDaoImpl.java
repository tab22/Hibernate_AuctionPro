package com.dao.in;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.in.ContactUs;
import com.util.HibernateUtil;

public class ContactUsDaoImpl implements ContactUsDao {

	@Override
	public int insert(ContactUs c) {
		Session session = null;;
		Transaction tx = null;
		int id=1;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			 session.save(c);
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

}
