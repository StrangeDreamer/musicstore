package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.ShoppingCartBiz;
import com.musicstore.biz.impl.ShoppingCartItemImpl;

public class AddCartServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		ShoppingCartBiz cartBiz=(ShoppingCartBiz) request.getSession().getAttribute("cart");
		if(cartBiz==null){//第一次购物
			cartBiz=new ShoppingCartItemImpl();//实例化
			request.getSession().setAttribute("cart", cartBiz);//保存到session
		}
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println("将"+id+"号唱片加到购物车");
		cartBiz.addCartItem(id);//添加商品至购物车
		//跳转至购物车
		response.sendRedirect("cart.jsp");
	}

}
