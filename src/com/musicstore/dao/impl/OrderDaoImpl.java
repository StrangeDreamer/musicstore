package com.musicstore.dao.impl;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Date;

import com.musicstore.dao.OrderDao;
import com.musicstore.entity.Order;

public class OrderDaoImpl extends baseDao implements OrderDao{

	@Override
	public int addOrder(Order order) {
		int count=0;
		try {
			openCon();
			String sql="insert into `Order`(orderDate,username,consignee,address,phone,email,totalPrice,isDeliveried) values(?,?,?,?,?,?,?,?)";
			Object [] paramsObjects=new Object[]{
					order.getOrderDate(),
					order.getUsername(),
					order.getConsignee(),
					order.getAddress(),
					order.getPhone(),
					order.getEmail(),
					order.getTotalPrice(),
					order.isDeliveried()
			};
			count=excuteUpdate(sql, paramsObjects);
			System.out.println(sql+"加入一个订单");
			ResultSet resultSet=executeQuery("select last_insert_id()", null);
			if(resultSet.next()){
				order.setId(resultSet.getInt(1));
				System.out.println("设置该订单的id为"+resultSet.getInt(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();

			
		}finally{
			closeCon();
		}
		return count;
	
	}

}
