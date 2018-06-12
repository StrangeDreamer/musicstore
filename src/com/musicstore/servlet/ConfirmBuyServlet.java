package com.musicstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.musicstore.biz.ShoppingCartBiz;
import com.musicstore.entity.CartItem;
import com.musicstore.entity.User;

public class ConfirmBuyServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String consignee=request.getParameter("consignee");
		String username=((User)request.getSession().getAttribute("user")).getUsername();
		String phone=request.getParameter("phone");
		String address =request.getParameter("address");
		String email=request.getParameter("email");
		ShoppingCartBiz cart= (ShoppingCartBiz) request.getSession().getAttribute("cart");
		if(cart!=null){
			cart.makeOrder(consignee, address, phone, username, email);
			request.getSession().removeAttribute("cart");
		}
		response.sendRedirect("index.jsp");
	}

}
