package com.musicstore.biz;

import java.util.List;

import com.musicstore.entity.Order;
import com.musicstore.entity.OrderDetail;

public interface OrderBiz {
	int addOrder(Order order,List<OrderDetail> details);

}
