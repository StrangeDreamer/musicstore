package com.musicstore.biz.impl;

import java.util.List;

import com.musicstore.biz.OrderBiz;
import com.musicstore.dao.OrderDao;
import com.musicstore.dao.OrderDetailDao;
import com.musicstore.dao.impl.OrderDaoImpl;
import com.musicstore.dao.impl.OrderDetailDaoImpl;
import com.musicstore.entity.Order;
import com.musicstore.entity.OrderDetail;

public class OrderBizImpl implements OrderBiz{

	@Override
	public int addOrder(Order order, List<OrderDetail> details) {
	
			OrderDao orderDao=new OrderDaoImpl();
			OrderDetailDao orderDetailDao=new OrderDetailDaoImpl();
			//int count=0;
			//插入订单主表
			orderDao.addOrder(order);
			//循环插入明细
			for (OrderDetail orderDetail : details) {
				//设置关联id
				orderDetail.setOrderId(order.getId());
				orderDetailDao.addOrderDetail(orderDetail);
				
			}
			return 1;
	}

}
