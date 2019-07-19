package com.model.in;

public class SellerProfile {

	public int product_id;
	public int seller_id;
	public String product_name;
	public String image;
	public String description;
	public int price;
	public SellerProfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SellerProfile(int product_id, int seller_id, String product_name, String image, String description,
			int price) {
		super();
		this.product_id = product_id;
		this.seller_id = seller_id;
		this.product_name = product_name;
		this.image = image;
		this.description = description;
		this.price = price;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
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
	@Override
	public String toString() {
		return "SellerProfile [product_id=" + product_id + ", seller_id=" + seller_id + ", product_name=" + product_name
				+ ", image=" + image + ", description=" + description + ", price=" + price + "]";
	}
	
	
	
	
	
	
}
