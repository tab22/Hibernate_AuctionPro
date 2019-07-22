package com.services.in;

import com.dao.in.BidderDao;
import com.dao.in.BidderDaoImpl;
import com.model.in.Bidder;

public class BidderServiceImpl implements BidderService{
	public BidderDao loginDao = new BidderDaoImpl();

	 @Override
	 public boolean login(String email, String password) {
	  return loginDao.login(email, password);
	 }

	 @Override
	 public int insert(Bidder bidder) {
	  return loginDao.insert(bidder);
	 }

	}
