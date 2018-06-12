package com.musicstore.entity;

import java.math.BigDecimal;

public class OrderDetail {
	private int id;
	private int orderId;
	private int albumId;
	private int quantity;
	private BigDecimal unitPrice;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getAlbumId() {
		return albumId;
	}
	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public BigDecimal getUnitPrice() {
		return unitPrice;
	}
	public void setUnitePrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}
	
	

	
}
