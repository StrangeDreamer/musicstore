<%@page import="com.musicstore.entity.User"%>
<%@page import="com.musicstore.biz.impl.UserBizImpl"%>
<%@page import="com.musicstore.biz.UserBiz"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
/* User user=new User();
user.setUsername(request.getParameter("username"));//请求（收集）来自register.jsp页面的有用的信息
user.setAddress(request.getParameter("address"));
user.setPassword(request.getParameter("password"));
user.setName(request.getParameter("name"));
user.setPhone(request.getParameter("phone"));
user.setEmail(request.getParameter("email"));
user.setUsername(request.getParameter("username"));
	UserBiz userBiz=new UserBizImpl(); */
	request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
	String address=request.getParameter("address");
	String password=request.getParameter("password");
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	User user=new User(0, username, password, name,
			address, phone, email,  1,true);
			UserBiz userBiz=new UserBizImpl();
	int count=userBiz.addUser(user);
	if(count>0){
	response.sendRedirect("index.jsp");
	}else
	{request.setAttribute("error", "输入信息有误");//保存错误信息
	request.getRequestDispatcher("register.jsp").forward(request, response);//跳转页面
	
	}



 %>
