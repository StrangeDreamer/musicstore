package com.musicstore.biz.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.musicstore.biz.OrderBiz;
import com.musicstore.biz.ShoppingCartBiz;
import com.musicstore.dao.AlbumDao;
import com.musicstore.dao.impl.AlbumDaoImpl;
import com.musicstore.entity.Album;
import com.musicstore.entity.CartItem;
import com.musicstore.entity.Order;
import com.musicstore.entity.OrderDetail;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class ShoppingCartItemImpl implements ShoppingCartBiz{

	//实例化一个商品集合，即购物车
	List<CartItem> items=new ArrayList<CartItem>();
	//访问购物车商品项
	public List<CartItem> getItems() {
		return items;
	}

	private CartItem findById(int id){
		for (CartItem cartItem : items) {
			if(cartItem.getId()==id){
				return cartItem;
			}
		}
		return null;
	}
	AlbumDao albumDao=new AlbumDaoImpl();
	@Override
	public void addCartItem(int id) {
		CartItem item=findById(id);//在购物车中找
		
		if(item==null){//没有买过该商品，要查数据库
			//album=new Album();//获得该商品，赋值给cartItem，数量为1
			//CartItem cartItem=new CartItem();
			Album album=albumDao.getById(id);
			if(album!=null){
				item=new CartItem();
				item.setId(id);
				item.setPrice(album.getPrice());
				item.setQuantity(1);
				item.setTitle(album.getTitle());
				items.add(item);//加入购物车
			}
		}else 
			item.setQuantity(item.getQuantity()+1);
	}

	@Override
	public void removeCartItem(int id) {
		CartItem item=findById(id);
		if(item!=null){
			items.remove(item);
		}
		
		
	}

	@Override
	public void updateCartItem(int id, int quantity) {
		CartItem item=findById(id);
		if(item!=null){
			item.setQuantity(quantity);
		}
		
		
	}
	//总计
	public BigDecimal getTotal(){
		BigDecimal sum = new BigDecimal(0);//BigDecimal该类型初始化记住
		for (CartItem item : items) {//购物车所有商品循环一篇
			sum=sum.add(item.getSubTotal());
			//sum.add(item.getSubTotal());
		}
		return sum;
		
	}

	OrderBiz orderBiz=new OrderBizImpl();
	@Override
	//将购物车的数据变成订单
	public void makeOrder(String consignee, String address, String phone,String username,
			String email) {
		Order order=new Order();
		order.setAddress(address);
		order.setConsignee(consignee);
		order.setDeliveried(false);
		order.setEmail(email);
		order.setOrderDate(new Date());
		order.setPhone(phone);
		order.setTotalPrice(getTotal());
		order.setUsername(username);
		List<OrderDetail> details=new ArrayList<OrderDetail>();
		for (CartItem item : items) {
			OrderDetail orderDetail=new OrderDetail();
			orderDetail.setAlbumId(item.getId());
			orderDetail.setOrderId(order.getId());
			orderDetail.setQuantity(item.getQuantity());
			orderDetail.setUnitePrice(item.getPrice());
			details.add(orderDetail);
		}
		orderBiz.addOrder(order, details);
		
	}

}
