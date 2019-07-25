package com.model.in;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name="Bidnow")
public class Bidnow {
	 @Id
     @GeneratedValue(generator="increment")
     @GenericGenerator(name="increment",strategy="increment" )

	private int id;
	 
	 @ManyToOne
	    @JoinColumn(name="Bidder_Id")//FK in table
	    private Bidder bidder_id;
	
	private String price;
	
	@ManyToOne
    @JoinColumn(name="Product_ID")//FK in table
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
	
}

	

