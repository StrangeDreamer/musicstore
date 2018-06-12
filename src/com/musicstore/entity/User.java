package com.musicstore.entity;

public class User {
	public User(int id, String username, String password, String name,
			String address, String phone, String email, int userroleid,
			boolean isinuse) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.userroleid = userroleid;
		this.isinuse = isinuse;
	}
	public User(){}
	private int id;
	private String username;
	private String password;
	private String name;
	private String address;
	private String phone;
	private String email;
	private int userroleid;
	private boolean isinuse;
	
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUserroleid() {
		return userroleid;
	}
	public void setUserroleid(int userroleid) {
		this.userroleid = userroleid;
	}
	public boolean getIsinuse() {
		return isinuse;
	}
	public void setIsinuse(boolean isinuse) {
		this.isinuse = isinuse;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	

}
