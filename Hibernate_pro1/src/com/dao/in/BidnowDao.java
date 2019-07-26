package com.dao.in;

import java.util.List;

import com.model.in.Bidnow;
import com.model.in.SellerProfile;

public interface BidnowDao {

	
	 int insert(Bidnow b);
	 
	 List<Bidnow> Max_product_id();
		List<Bidnow> max() ;
}
