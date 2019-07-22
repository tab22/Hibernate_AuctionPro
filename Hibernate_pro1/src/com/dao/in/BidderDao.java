package com.dao.in;

import com.model.in.*;

public interface BidderDao {
	 int insert(Bidder e);
	 public boolean login(String email, String password);

}