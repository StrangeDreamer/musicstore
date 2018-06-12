<%@page import="com.musicstore.biz.impl.UserBizImpl"%>
<%@page import="com.musicstore.biz.UserBiz"%>
<%@page import="com.musicstore.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
jsp的优势在于数据的显示，但这层做的是数据的处理，可以将数据的处理交给servlet,重用，现有servlet再有jsp;
<%  String username=request.getParameter("username");
	String password=request.getParameter("password");
	UserBiz userBiz=new UserBizImpl();
	User user=userBiz.checkLogin(username, password);
	if(user!=null)
	{
	response.sendRedirect("index.jsp");
	session.setAttribute("user", user);//对象保存在session中
	}
	else{request.setAttribute("error", "用户名或密码错误");//保存错误信息
	request.getRequestDispatcher("login.jsp").forward(request, response);//跳转页面
	}
	
%>