package com.services.in;

import com.dao.in.BidderDao;
import com.dao.in.BidderDaoImpl;
import com.model.in.Bidder;

public class BidderServiceImpl implements BidderService{
	private BidderDao loginDao = new BidderDaoImpl();

	 @Override
	 public boolean login(String username, String password) {
	  return loginDao.login(username, password);
	 }

	 @Override
	 public int insert(Bidder bidder) {
	  return loginDao.insert(bidder);
	 }

	}
