package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.ShoppingCartBiz;

public class RemoveCartItemServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		ShoppingCartBiz cartBiz=(ShoppingCartBiz) request.getSession().getAttribute("cart");
		System.out.println("准备删除"+id+"号唱片");
		cartBiz.removeCartItem(id);
		response.sendRedirect("cart.jsp");
		
		
		
		
	}

}
