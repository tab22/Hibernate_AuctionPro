package com.dao.in;


import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.model.in.SellerProfile;
import com.util.*;

public class SellerProfileDaoImpl  implements SellerProfileDao{

	@Override
	public int insert(SellerProfile sp) {
		
		Session session = null;;
		Transaction tx = null;
		int id=1;
		try {
			session = HibernateUtil.getSession();
			tx = session.beginTransaction();
			 session.save(sp);
			System.out.println("Record Id "+id);
			tx.commit();
		} catch (HibernateException h) {
			System.out.println(h);
		} finally {
			//session.close();
			HibernateUtil.closeSessionFactory();
		}
		return id;


	}

	@Override
	public List<SellerProfile>  ShowAll() {
		Session session =null;// sessionFactory.openSession();
		Transaction tx=null;
		List<SellerProfile> eList=null;
		try{
			session=HibernateFetch.getSession();
			tx = session.beginTransaction();

	         CriteriaBuilder builder = session.getCriteriaBuilder();
	         CriteriaQuery<SellerProfile> query = builder.createQuery(SellerProfile.class);
	         Root<SellerProfile> root = query.from(SellerProfile.class);
	         query.select(root);
	         Query<SellerProfile> q=session.createQuery(query);
	         eList=q.getResultList();

	         tx.commit();		
		}finally{
		session.close();
		HibernateFetch.closeSessionFactory();
        }

        return eList;
	}



}
