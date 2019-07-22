package com.services.in;

import com.model.in.Bidder;

public interface BidderService {
	public boolean login(String email, String password);

	 public int insert(Bidder bidder);
}
