package com.musicstore.dao.impl;
//修改了src下的代码需要服务器重启
import java.sql.ResultSet;

import com.musicstore.dao.UserDao;
import com.musicstore.entity.User;
import com.sun.org.apache.xpath.internal.operations.And;

public class UserDaoImpl extends baseDao
implements UserDao{

	@Override
	public User checkLogin(String username, String password) {

		User user=null;
		try {
			openCon();
			String sql="select * from User where username=? and password=?";
			ResultSet resultSet=executeQuery(sql, new Object[]{username,password});
			while (resultSet.next()) {

				user=new User();
				user.setAddress(resultSet.getString("address"));
				user.setEmail(resultSet.getString("email"));
				user.setId(resultSet.getInt("id"));
				user.setIsinuse(resultSet.getBoolean("isInUse"));
				user.setName(resultSet.getString("name"));
				user.setPassword(resultSet.getString("password"));
				user.setPhone(resultSet.getString("phone"));
				user.setUsername(resultSet.getString("username"));
				user.setUserroleid(resultSet.getInt("userRoleId"));
				
			}
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		
		return user;
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		int count=0;
		try {
			String sql="insert into User(username,password,name,address,email,phone,userRoleId,isInUse) values(?,?,?,?,?,?,?,?)";
			Object [] paramsObjects=new Object []{
					user.getUsername(),
					user.getPassword(),
					user.getName(),
					user.getAddress(),
					user.getEmail(),
					user.getPhone(),
					user.getUserroleid(),
					user.getIsinuse(),
			};
			openCon();
			count=excuteUpdate(sql, paramsObjects);//调用此函数传参
			//返回最新插入的id
			sql="select last_insert_id()";//自动返回最后一个INSERT或 UPDATE 查询中 AUTO_INCREMENT列设置的第一个表发生的值。
			ResultSet rs=executeQuery(sql, null);
			if(rs.next()){
				user.setId(rs.getInt(1));//select查询结果只有一列,没有字段名
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		return count;
	}
	/*public static void main(String[] args) {
		UserDao userDao=new UserDaoImpl();
		User user=new User();
		user.setAddress("广州");
		user.setEmail("234890@163.com");
		user.setName("张三");
		user.setPassword("23748gr873r");
		user.setPhone("21376549873");
		user.setUsername("帕卡丘");
		user.setIsinuse(true);
		user.setUserroleid(2);
		System.out.println(userDao.checkLogin("rose","123"));
		System.out.println(userDao.addUser(user));
		System.out.println(user.getId());
	}
*/

	@Override
	public boolean checkUsername(String username) {
		boolean flag=false;
		try {
			String sql="select * from User where username=?";
			openCon();
			ResultSet resultSet=executeQuery(sql, new Object [] {username});
			if(resultSet.next()){
				flag=true;  //如果查到了
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			closeCon();
		}
		return flag;
	}
	/*public static void main(String[] args) {
		UserDao userDao=new UserDaoImpl();
		System.out.println(userDao.checkUsername("admin"));
		System.out.println(userDao.checkUsername("abc"));
	}*/
}
