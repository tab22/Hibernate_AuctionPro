package com.model.in;

public class Bidnow {

	public int id;
	public int product_id;
	public int bidder_id;
	public String price;
	public Bidnow() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bidnow(int id, int product_id, int bidder_id, String price) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.bidder_id = bidder_id;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getBidder_id() {
		return bidder_id;
	}
	public void setBidder_id(int bidder_id) {
		this.bidder_id = bidder_id;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Bidnow [id=" + id + ", product_id=" + product_id + ", bidder_id=" + bidder_id + ", price=" + price
				+ "]";
	}
	
	
	
	
	
	
	
}
