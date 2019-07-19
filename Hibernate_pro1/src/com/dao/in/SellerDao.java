package com.dao.in;


import com.model.in.Seller;

public interface SellerDao {
	 int insert(Seller e);

	 public boolean login(String username, String password);

}
