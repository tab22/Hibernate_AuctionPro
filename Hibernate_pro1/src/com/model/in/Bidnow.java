package com.model.in;
/*
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

//@Entity
//@Table(name="Bidnow")

	 //@Id
    // @GeneratedValue(generator="increment")
    // @GenericGenerator(name="increment",strategy="increment" )

	private int id;
	 
//	 @ManyToOne
	   // @JoinColumn(name="Bidder_Id")//FK in table
	    private Bidder bidder_id;
	
	private String price;
	
	//@ManyToOne
    //@JoinColumn(name="Product_ID")//FK in table
    private SellerProfile owner;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Bidder getBidder_id() {
		return bidder_id;
	}

	public void setBidder_id(Bidder bidder_id) {
		this.bidder_id = bidder_id;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public SellerProfile getOwner() {
		return owner;
	}

	public void setOwner(SellerProfile owner) {
		this.owner = owner;
	}

	public Bidnow(int id, Bidder bidder_id, String price, SellerProfile owner) {
		super();
		this.id = id;
		this.bidder_id = bidder_id;
		this.price = price;
		this.owner = owner;
	}

	public Bidnow() {
		super();
	}

	@Override
	public String toString() {
		return "BidNow [id=" + id + ", bidder_id=" + bidder_id + ", price=" + price + ", owner=" + owner + "]";
	}
	*/


public class Bidnow {

public int id;
public int product_id;
public int bidder_id;
public String price;
public Bidnow(int id, int product_id, int bidder_id, String price) {
	super();
	this.id = id;
	this.product_id = product_id;
	this.bidder_id = bidder_id;
	this.price = price;
}
public Bidnow() {
	super();
	// TODO Auto-generated constructor stub
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
	return "Bidnow [id=" + id + ", product_id=" + product_id + ", bidder_id=" + bidder_id + ", price=" + price + "]";
}

















}

	

