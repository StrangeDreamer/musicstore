package com.musicstore.dao.impl;

import java.sql.ResultSet;

import com.musicstore.dao.OrderDetailDao;
import com.musicstore.entity.OrderDetail;

public class OrderDetailDaoImpl extends baseDao implements OrderDetailDao{

	@Override
	public int addOrderDetail(OrderDetail orderDetail) {
		int count=0;
		try {
			openCon();
			String sql="insert into orderDetail(OrderId,AlbumId,Quantity,UnitPrice) values(?,?,?,?)";
			Object [] paramsObjects=new Object [] {
					orderDetail.getOrderId(),
					orderDetail.getAlbumId(),
					orderDetail.getQuantity(),
					orderDetail.getUnitPrice()
			};
			count=excuteUpdate(sql, paramsObjects);
			System.out.println(sql+" 插入一条订单明细");
			ResultSet rSet=executeQuery("select last_insert_id()", null);
			while(rSet.next()){
				orderDetail.setId(rSet.getInt(1));
				System.out.println("设置该订单明细id为"+rSet.getInt(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeCon();
		}
		return count;
	}
}
