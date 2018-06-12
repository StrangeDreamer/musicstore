package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.ShoppingCartBiz;

public class UpdateCartServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		int id=Integer.parseInt(request.getParameter("id"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		ShoppingCartBiz cartBiz=(ShoppingCartBiz) request.getSession().getAttribute("cart");
		if (quantity>0) {
			System.out.println("修改"+id+"号唱片的数量为"+quantity);
			cartBiz.updateCartItem(id, quantity);
			response.sendRedirect("cart.jsp");
		}else {
			System.out.println("修改"+id+"号唱片的数量为0");
			cartBiz.updateCartItem(id, 0);
			response.sendRedirect("cart.jsp");
			
		}
		
	}

}
