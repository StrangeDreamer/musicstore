package com.musicstore.entity;

import java.math.BigDecimal;

public class CartItem {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	private String title;
	private BigDecimal price;//专门表示货币的精确类型
	private int quantity;
	public BigDecimal getSubTotal(){
		return price.multiply(new BigDecimal(quantity));
	}

}
