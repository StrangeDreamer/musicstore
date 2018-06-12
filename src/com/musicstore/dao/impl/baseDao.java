package com.musicstore.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class baseDao {//增删改查
	String className="com.mysql.jdbc.Driver";
	String dbUrl="jdbc:mysql://localhost:3306/musicdb";
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	
	public void openCon() throws ClassNotFoundException, SQLException{
		Class.forName(className);
		System.out.println("打开数据库");
		connection=DriverManager.getConnection(dbUrl, "root", "root");
	}
	public int excuteUpdate(String sql,Object [] p) throws SQLException{
		preparedStatement=connection.prepareStatement(sql);
		if(p!=null){
			System.out.print("修改数据库");
			int i=1;//从第几个占位符开始
			for (Object object : p) {
				System.out.print("设置第"+i+"个?的值为"+object.toString()+" ");
				preparedStatement.setObject(i, object);
				i++;
			}
		}
		int count=preparedStatement.executeUpdate();
		return count;

		
	}
	public ResultSet executeQuery(String sql,Object [] p) throws SQLException{
		preparedStatement=connection.prepareStatement(sql);
		if(p!=null){
			System.out.print("循环遍历数据库");
			int i=1;//第几个占位符
			for (Object object : p) {
				System.out.print("设置第"+i+"个?的值为"+object.toString()+" ");
				preparedStatement.setObject(i, object);
				i++;
			}
		}
		resultSet=preparedStatement.executeQuery();
		return resultSet;
		
		
	}
	public void closeCon(){
		try {
			System.out.println("关闭数据库");
			if(resultSet!=null)
				resultSet.close();
			if(preparedStatement!=null)
				preparedStatement.close();
			if(connection!=null)
				connection.close();
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}
