package com.dao.in;

import java.util.List;


import com.model.in.SellerProfile;

public interface SellerProfileDao {
	
	public int insert(SellerProfile sp);

	   List<SellerProfile> ShowAll();
	   
	   int delete(int product_id);

	   
	    void update(SellerProfile s);
	   
	   
	   
	   
	   
}
