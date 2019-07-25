package com.model.in;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name="sellerprofile")



public class SellerProfile {

	
	 @Id
	    @GeneratedValue
	    @Column(name="product_id")
	private int product_id;
	 
	 
	 @Column(name="seller_id", nullable=false)
	 private int seller_id;
	 @Column(name="product_name", nullable=false)
	 private String product_name;
	
	 @Lob
	    @Column(name="image", nullable=false, columnDefinition="mediumblob")
	 private  byte[] image;
	
	 @Column(name="description", nullable=false)
	private String description;
	 
	 @Column(name="price", nullable=false)
	private int price;
	 
	 @Column(name="time", nullable=false)
	private String time;
	public SellerProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "SellerProfile [product_id=" + product_id + ", seller_id=" + seller_id + ", product_name=" + product_name
				+ ", image=" + image + ", description=" + description + ", price=" + price + ", time=" + time + "]";
	}
	
	
	
	
	
	
}
