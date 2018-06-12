package com.musicstore.biz;


public interface ShoppingCartBiz {
	
	void addCartItem(int id);//void 因为跟数据库无关，数据库中并没有相关的表
	void removeCartItem(int id);
	void updateCartItem(int id,int quantity);
	void makeOrder(String consignee,String address,String phone,String username,String email);
	

}
