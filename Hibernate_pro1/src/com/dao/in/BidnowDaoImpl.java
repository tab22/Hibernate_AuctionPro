package com.dao.in;

import java.util.List;
import java.util.Scanner;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.in.Bidnow;
import com.model.in.SellerProfile;
import com.util.HibernateFetch;
import com.util.HibernateUtil;

public class BidnowDaoImpl implements BidnowDao {

	@Override
	public int insert(Bidnow b) {
		Session session = null;
		;
		Transaction tx = null;
		int id = 1;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			session.save(b);
			System.out.println("Record Id " + id);
			tx.commit();
		} catch (HibernateException h) {
			System.out.println(h);
		} finally {
			session.close();
			// HibernateUtil.closeSessionFactory();
		}
		return id;

	}

	@Override
	public List<Bidnow> Max_product_id() {
		
		Session session = null;// sessionFactory.openSession();
		Transaction tx = null;
		List<Bidnow> list = null;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			Scanner sc = new Scanner(System.in);
			Query<Bidnow> q2 = session.createQuery("select bidder_id from Bidnow where price=(select max(price) from Bidnow)");
			// q1.setParameter("adharCardNumber",adharCardNumber);
			list = q2.getResultList();

		} catch (Exception e) {
			System.out.println(e);
		}

		finally {
			session.close();
		}
		return list;
	}

	

	public List<Bidnow> max() {
		Session session = null;// sessionFactory.openSession();
		Transaction tx = null;
		List<Bidnow> list = null;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			Scanner sc = new Scanner(System.in);
			Query<Bidnow> q1 = session.createQuery("select max(price) from Bidnow");
			// q1.setParameter("adharCardNumber",adharCardNumber);
			list = q1.getResultList();

		} catch (Exception e) {
			System.out.println(e);
		}

		finally {
			session.close();
		}
		return list;
	}

}
