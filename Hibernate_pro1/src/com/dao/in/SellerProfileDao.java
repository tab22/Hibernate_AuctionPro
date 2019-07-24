package com.dao.in;

import java.util.List;


import com.model.in.SellerProfile;

public interface SellerProfileDao {
	
	public int insert(SellerProfile sp);

	   List<SellerProfile> ShowAll();
	   
	   void delete(int product_name);

	   
	    void update(SellerProfile s);
	   
	   
	   
	   
	   
}
