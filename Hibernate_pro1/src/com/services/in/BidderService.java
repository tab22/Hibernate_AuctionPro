package com.services.in;

import com.model.in.Bidder;

public interface BidderService {
	public boolean login(String username, String password);

	 public int insert(Bidder bidder);
}
