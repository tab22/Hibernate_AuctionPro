package com.model.in;

public class ContactUs {

	private int id;
	private String name;
	private String email;
	private String mobile;
	private String message;
	public ContactUs() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ContactUs(int id, String name, String email, String mobile, String message) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.message = message;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "ContactUs [id=" + id + ", name=" + name + ", email=" + email + ", mobile=" + mobile + ", message="
				+ message + "]";
	}
	

	
}
