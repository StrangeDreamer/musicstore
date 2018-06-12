package com.musicstore.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Order {

	private int id;
	private Date orderDate;
	private String username;
	private String consignee;
	private String address;
	private String phone;
	private String email;
	private BigDecimal totalPrice;
	private boolean isDeliveried;
/*	
	public Order(Date orderDate, String username, String consignee,
			String address, String phone, String email, BigDecimal totalPrice,
			boolean isDeliveried) {
		super();
		this.orderDate = orderDate;
		this.username = username;
		this.consignee = consignee;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.totalPrice = totalPrice;
		this.isDeliveried = isDeliveried;
	}*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
	public boolean isDeliveried() {
		return isDeliveried;
	}
	public void setDeliveried(boolean isDeliveried) {
		this.isDeliveried = isDeliveried;
	}
	


}
